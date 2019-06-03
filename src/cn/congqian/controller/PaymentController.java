package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.zxing.WriterException;

import cn.congqian.model.Cart;
import cn.congqian.service.FactoryService;
import cn.congqian.service.UserService;
import cn.congqian.utils.QuickMarkUtil;

@WebServlet(urlPatterns = { "*.pay" })
public class PaymentController extends HttpServlet {

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
	 * 二维码
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void QRCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		String uuid = UUID.randomUUID().toString();
		session.setAttribute("orderuuid", uuid);
		List<Cart> list = (List<Cart>) session.getAttribute("cartList");
		String parameter = "欢迎购买卡通玩具，您购买了";
		for(int i = 0;i < list.size();i++) {
			System.out.println(list.get(i).getGoods_name());
			parameter = parameter + list.get(i).getGoods_name()+"、";
		}
		
		parameter+= "感谢您的支付您需支付："
				+ req.getParameter("pieces") + "元"
				+ "付款id："+uuid;
		System.out.println(parameter);
		// 设置响应的类型格式为图片格式
		resp.setContentType("image/jpeg");
		// 禁止图像缓存。
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);
		System.out.println(parameter);
		try {
			QuickMarkUtil.createQrCode(resp.getOutputStream(), parameter, 2000, "JPEG");
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}