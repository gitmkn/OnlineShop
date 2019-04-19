package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.congqian.model.User;
import cn.congqian.service.FactoryService;
import cn.congqian.service.UserService;


@WebServlet(urlPatterns= {"*.udo"})
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	UserService userServer = FactoryService.getUserService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//在这一个方法里处理增删改查所有功能
		//设置字符集
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String mn = req.getServletPath();
		mn = mn.substring(1);
		mn = mn.substring(0,mn.length()-4);//获得路径的字段
		//System.out.println(mn);
		
		try {//反射，映射（根据路径寻找方法）
			Method method = this.getClass().getDeclaredMethod(mn, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, req,resp);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("调用"+mn+"方法失败");
		}
	}
	
	/**
	 * 用户注册
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		User user = new User();
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setAddress(req.getParameter("address"));
		user.setPhoneNo(req.getParameter("phoneNo"));
		user.setRegDate(new Date());
		int rows = userServer.save(user);
		if(rows>0) {
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else {
			resp.sendRedirect(req.getContextPath()+"/error.jsp");
		}
	}
	/**
	 * 实现首页的模糊查询
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void query(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String address = req.getParameter("address");
		String phoneNo = req.getParameter("phoneNo");
		String regex = "[`~!@#$%^&*()_+{}':;',.<>/?~！@#￥%……&*（）&ndash;-|{}【】‘’；：“”。，、？]";
		username = username.replaceAll(regex, "");//符号屏蔽
		address = address.replaceAll(regex, "");
		phoneNo = phoneNo.replaceAll(regex, "");
		List<User> list = userServer.query(username,address,phoneNo);
		req.setAttribute("userList", list);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
	/**
	 * 用户删除
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		int rows = userServer.deletUserById(id);
		if(rows>0) {
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else {
			resp.sendRedirect(req.getContextPath()+"/error.jsp");
		}
	}
	private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		User user = userServer.get(id);
		req.setAttribute("user", user);//注入
		req.getRequestDispatcher("/update.jsp").forward(req, resp);
	}
	private void updatedo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int id = Integer.parseInt(req.getParameter("id"));
		//通过id，把数据库中原来的user信息拿到
		User user = userServer.get(id);//原来的user
		
		String yUsername = user.getUsername();
		String xUsername = req.getParameter("username");
		System.out.println(xUsername);
		long cout = userServer.getCountByName(xUsername);//查询数据库中有没有新输入的名字
		//System.out.println(cout);
		if (!xUsername.equals(yUsername) && cout>0) {//首先新名字和原名不一样
			req.setAttribute("note", xUsername+"，这个名字已被占用");
			req.getRequestDispatcher("/update.udo?id="+id).forward(req, resp);
			return;
		}
		user.setUsername(xUsername);
		user.setPassword(req.getParameter("password"));
		user.setAddress(req.getParameter("address"));
		user.setPhoneNo(req.getParameter("phoneNo"));
		
		int rows = userServer.updateUserById(user);
		if(rows>0) {
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else {
			resp.sendRedirect(req.getContextPath()+"/error.jsp");
		}
	}
}
