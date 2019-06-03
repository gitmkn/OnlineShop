package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.Cart;
import cn.congqian.model.Goods;
import cn.congqian.service.CartService;
import cn.congqian.service.FactoryService;
import cn.congqian.service.GoodsService;

@WebServlet(urlPatterns = { "*.cdo" })
public class CartController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	CartService cartService = FactoryService.getCartService();
	GoodsService goodsService = FactoryService.getGoodsService();

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
	 * 购物车添加商品
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void cartAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cart cart = new Cart();
		int goods_id = Integer.parseInt(req.getParameter("goods"));
		int user_id = Integer.parseInt(req.getParameter("user"));
		int goods_sum = Integer.parseInt(req.getParameter("goodssum"));
		String car_id = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		java.sql.Timestamp createtime = new java.sql.Timestamp(new java.util.Date().getTime());
		cart.setCar_id(car_id);
		cart.setGoods_id(goods_id);
		cart.setUser_id(user_id);
		cart.setCreatetime(createtime);
		cart.setSum(goods_sum);
		int i = cartService.cartAdd(cart);
		if (i > 0) {
			resp.getWriter().write("1");
		} else {
			resp.getWriter().write("0");
		}

	}

	/**
	 * 商品列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void cartDele(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("dele");
		String car_id = req.getParameter("id");
		int i = cartService.cartDele(car_id);
		if (i > 0) {
			resp.getWriter().write("1");
		} else {
			resp.getWriter().write("0");
		}

	}

	/**
	 * 商品列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void cartList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
//		session.removeAttribute("cargoods");
		int user_id = Integer.parseInt(req.getParameter("userid"));
		List<Cart> list = cartService.cartList(user_id);
		System.out.println(list);
		System.out.println(user_id);
		resp.setCharacterEncoding("utf-8");
//		System.out.println(JSON.toJSONString(list));
//		resp.getWriter().write(JSON.toJSONString(list));
		session.setAttribute("cargoods", list);
		req.getRequestDispatcher("/jsp/shopcar.jsp").forward(req, resp);
	}
	
	/**
	 * 购物车结算
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void shopcar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//销毁付款后时参数
		HttpSession session = req.getSession();
//		session.removeAttribute("pieces");
		//总钱数
		String pieces = req.getParameter("pieces");
		//购物车id（拼接的字符串）
		String checkID = req.getParameter("checkID");
		//商品数量（拼接的字符串）
		String sum = req.getParameter("sum");
		String[] arr1 = checkID.split("-");
		String[] arr2 = sum.split("%");
		List<Cart> list = new ArrayList<>();
		for (int i = 0; i < arr1.length; i++) {
			Cart cart = cartService.cartById(arr1[i]);
			cart.setGoods_sum(Integer.parseInt(arr2[i]));
			list.add(cart);
		}
		
		System.out.println(pieces);
		System.out.println(list);
		session.setAttribute("cartList", list);
		session.setAttribute("pieces", pieces);
		resp.getWriter().write("0");
//		resp.sendRedirect(req.getContextPath()+"/jsp/payment.jsp");
//		req.getRequestDispatcher("/jsp/payment.jsp").forward(req, resp);
	}
}
