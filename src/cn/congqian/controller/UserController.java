package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.User;
import cn.congqian.service.FactoryService;
import cn.congqian.service.UserService;
import cn.congqian.utils.Md5Util;

@WebServlet(urlPatterns = { "*.udo" })
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	UserService userServer = FactoryService.getUserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 在这一个方法里处理增删改查所有功能
		// 设置字符集
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String mn = req.getServletPath();
		mn = mn.substring(1);
		mn = mn.substring(0, mn.length() - 4);// 获得路径的字段
		// System.out.println(mn);

		try {// 反射，映射（根据路径寻找方法）
			Method method = this.getClass().getDeclaredMethod(mn, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("调用" + mn + "方法失败");
		}
	}
	/**
	 * 用户列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void userList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int status = Integer.parseInt(req.getParameter("status"));
		List<User> list = userServer.userList(status);
		System.out.println(list); 
//		System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	/**
	 * 用户登录
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		String phone = req.getParameter("phone");
		String pwd = req.getParameter("password");
		if (phone != null || pwd != null) {
			String password1 = new Md5Util().getMd5(pwd);
			user.setPhone(phone);
			user.setPassword(password1);
			User user1 = userServer.userLogin(user);
			HttpSession session = req.getSession();
			System.out.println(user);
			if (user1 != null) {
				session.setAttribute("UserInfo", user1);
				session.setAttribute("Userlogin", "login");
				resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp");
			} else {
				System.out.println("登录失败，账号或者密码错误");
				resp.sendRedirect(req.getContextPath() + "/jsp/login.jsp");
			}
		}
	}
	
	
	/**
	 * 用户注册
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void Registered(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		String phone = req.getParameter("phone");
		String pwd = req.getParameter("password");
		if (phone != null || pwd != null) {
			String password1 = new Md5Util().getMd5(pwd);
			user.setPhone(phone);
			user.setPassword(password1);
			int i = userServer.insert(user);
			System.out.println(user);
			if (i > 0) {
				resp.sendRedirect(req.getContextPath() + "/jsp/login.jsp");
			} else {
				System.out.println("登录失败，账号或者密码错误");
				resp.sendRedirect(req.getContextPath() + "/jsp/login.jsp");
			}
		}
	}
	
	
	/**
	 * 用户修改密码
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		int id = Integer.parseInt(req.getParameter("id"));
		String username = req.getParameter("username");
		String sex = req.getParameter("sex");
		String createtime = req.getParameter("createtime");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		user.setId(id);
		user.setUsername(username);
		user.setSex(sex);
		user.getCreatetime();
		user.setPhone(phone);
		user.setEmail(email);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date birth = null;
		try {
			birth = format.parse(createtime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date date = new java.sql.Date(birth.getTime()); 
		user.setCreatetime(date);
		user.setAddress(address);
		System.out.println(user);
		int i = userServer.update(user);
		HttpSession session = req.getSession();
		if(i > 0) {
			session.setAttribute("UserInfo", user);
			resp.getWriter().write("修改成功");
		}else {
			resp.getWriter().write("修改失败");
		}
	}
	/**
	 * 用户修改密码
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void updatePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		int id = Integer.parseInt(req.getParameter("id"));
		String pwd = req.getParameter("password");
		System.out.println(id);
		System.out.println(pwd);
		String password = new Md5Util().getMd5(pwd);
		user.setId(id);
		user.setPassword(password);
		int i = userServer.updatePassword(user);
		System.out.println(i);
		if(i > 0) {
			resp.getWriter().write("修改成功");
		}else {
			resp.getWriter().write("修改失败");
		}
	}
	
	/**
	 * 用户修改状态
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		int id = Integer.parseInt(req.getParameter("id"));
		int status = Integer.parseInt(req.getParameter("status"));
		user.setId(id);
		user.setStatus(status);
		int i = userServer.updateStatus(user);
		System.out.println(i);
		if(i > 0) {
			resp.getWriter().write("修改成功");
		}else {
			resp.getWriter().write("修改失败");
		}
	}
	
	/**
	 * 用户退出
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
		resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp");

	}
}