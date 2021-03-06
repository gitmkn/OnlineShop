package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.AdminUser;
import cn.congqian.model.User;
import cn.congqian.service.AdminUserService;
import cn.congqian.service.FactoryService;
import cn.congqian.utils.Md5Util;

@WebServlet(urlPatterns = { "*.audo" })
public class UserAdminController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	AdminUserService adminUserServer = FactoryService.getAdminUserService();

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
		mn = mn.substring(0, mn.length() - 5);// 获得路径的字段
		System.out.println(mn);

		try {// 反射，映射（根据路径寻找方法）
			Method method = this.getClass().getDeclaredMethod(mn, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("调用" + mn + "方法失败");
		}
	}

	/**
	 * 管理员登录
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void adminLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminUser user = new AdminUser();
		String name = req.getParameter("username");
		String pwd = req.getParameter("password");
		if (name != null || pwd != null) {
			String password = new Md5Util().getMd5(pwd);
			user.setName(name);
			user.setPassword(password);
			AdminUser user1 = adminUserServer.AdminLogin(user);
			HttpSession session = req.getSession();
			System.out.println(user1);
			if (user1 != null) {
				session.setAttribute("adminUserInfo", user1);
				session.setAttribute("adminUserlogin", "login");
				resp.sendRedirect(req.getContextPath() + "/admin/main.jsp");
			} else {
				System.out.println("登录失败，账号或者密码错误");
				resp.sendRedirect(req.getContextPath() + "/admin/login.jsp");
			}
		}
	}
	private void updatePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminUser user = new AdminUser();
		int id = Integer.parseInt(req.getParameter("id"));
		String pwd = req.getParameter("password");
		String password = new Md5Util().getMd5(pwd);
		user.setId(id);
		user.setPassword(password);
		System.out.println(user);
		int update = adminUserServer.updatePassword(user);
		if (update > 0) {
			System.out.println("修改密码成功");
		} else {
			System.out.println("修改密码失败");
		}

	}
	
	
	/**
	 * 管理员列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void adminList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int status = Integer.parseInt(req.getParameter("status"));
		List<AdminUser> list = adminUserServer.AdminList(status);
		System.out.println(list); 
//		System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}
	
	/**
	 * 管理员添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void adminAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String pass = req.getParameter("password");
		String password = new Md5Util().getMd5(pass);
		AdminUser adminUser = new AdminUser();
		adminUser.setName(name);
		adminUser.setPassword(password);
		int i = adminUserServer.insertAdmin(adminUser);
		resp.sendRedirect(req.getContextPath() + "/admin/user/adminList.jsp");
	}
	
	
	private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminUser adminUser = new AdminUser();
		int id = Integer.parseInt(req.getParameter("id"));
		int status = Integer.parseInt(req.getParameter("status"));
		adminUser.setId(id);
		adminUser.setStatus(status);
		int update = adminUserServer.updateStatus(adminUser);
		resp.sendRedirect(req.getContextPath() + "/admin/user/adminList.jsp");

	}

	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
		resp.sendRedirect(req.getContextPath() + "/admin/login.jsp");

	}
}
