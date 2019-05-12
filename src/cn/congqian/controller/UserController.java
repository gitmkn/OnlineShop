package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
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

	private void userList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> list = userServer.userList();
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
			System.out.println(user1);
			if (user1 != null) {
				session.setAttribute("UserInfo", user1);
				resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp");
			} else {
				System.out.println("登录失败，账号或者密码错误");
				resp.sendRedirect(req.getContextPath() + "/jsp/login.jsp");
			}
		}
	}

	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
		resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp");

	}
}