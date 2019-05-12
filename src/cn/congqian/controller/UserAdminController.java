package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.congqian.model.AdminUser;
import cn.congqian.service.AdminUserService;
import cn.congqian.service.FactoryService;
import cn.congqian.utils.Md5Util;


@WebServlet(urlPatterns= {"*.audo"})
public class UserAdminController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	AdminUserService adminUserServer = FactoryService.getAdminUserService();
	
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
		mn = mn.substring(0,mn.length()-5);//获得路径的字段
		System.out.println(mn);
		
		try {//反射，映射（根据路径寻找方法）
			Method method = this.getClass().getDeclaredMethod(mn, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, req,resp);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("调用"+mn+"方法失败");
		}
	}
	
	/**
	 * 管理员登录
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void adminLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminUser user = new AdminUser();
		String name = req.getParameter("username");
		String pwd = req.getParameter("password");
		if(name != null || pwd != null) {
			String password = new Md5Util().getMd5(pwd);
			user.setName(name);
			user.setPassword(password);		
			AdminUser user1 = adminUserServer.AdminLogin(user);
			HttpSession session = req.getSession();
			System.out.println(user1);
			if(user1 != null) {
				session.setAttribute("adminUserInfo", user1);
				resp.sendRedirect(req.getContextPath()+"/admin/main.jsp");
			}else {
				System.out.println("登录失败，账号或者密码错误");
				resp.sendRedirect(req.getContextPath()+"/admin/login.jsp");
			}
		}
	}
	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("123");
		HttpSession session = req.getSession();
		session.invalidate();
		resp.sendRedirect(req.getContextPath()+"/admin/login.jsp");

	}
}
