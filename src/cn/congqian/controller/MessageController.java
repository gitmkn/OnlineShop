package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.congqian.model.Message;
import cn.congqian.model.User;
import cn.congqian.service.FactoryService;
import cn.congqian.service.MessageService;

@WebServlet(urlPatterns= {"*.mdo"})
public class MessageController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	MessageService messageService = FactoryService.getMessageService();
	
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
	private void addMessage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Message message = new Message();
		int user_id = Integer.parseInt(req.getParameter("id"));
		String content = req.getParameter("content");
		if(user_id != 0 || content != null) {
			message.setUser_id(user_id);
			message.setMessage_content(content);	
			//将util时间转为sql时间
			java.util.Date utilDate = new java.util.Date(); 
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			message.setCreatetime(sqlDate);
			System.out.println(message);
			int mm = messageService.addMessage(message);
			if(mm != 0) {
				resp.sendRedirect(req.getContextPath()+"/jsp/message.jsp");
			}else {
				System.out.println("留言失败");
				resp.sendRedirect(req.getContextPath()+"/jsp/message.jsp");
			}
		}
	}
}
