package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.net.ssl.SSLEngineResult.Status;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.Cart;
import cn.congqian.model.Goods;
import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;
import cn.congqian.model.Supplier;
import cn.congqian.model.User;
import cn.congqian.service.CartService;
import cn.congqian.service.FactoryService;
import cn.congqian.service.GoodsService;
import cn.congqian.service.OrderService;

@WebServlet(urlPatterns = { "*.odo" })
public class OrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	OrderService orderService = FactoryService.getOrderService();
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
	 * 供货商列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int stataus = Integer.parseInt(req.getParameter("status"));
		List<Order> list = orderService.selectByStatus(stataus);
		System.out.println(list);
		// System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	/**
	 * 订单列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderListByUserId(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int userid = Integer.parseInt(req.getParameter("userid"));
		int status = Integer.parseInt(req.getParameter("status"));
		List<OrderDetails> list = orderService.select(status, userid);
		System.out.println(userid);
		System.out.println(status);
		System.out.println(list);
		// System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	/**
	 * 后台订单列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderListByStatus(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int status = Integer.parseInt(req.getParameter("status"));
		List<OrderDetails> list = orderService.OrderDetailsByStatus(status);
		System.out.println(status);
		System.out.println(list);
		// System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	private void Order(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		HttpSession session = req.getSession();
		session.setAttribute("username", username);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		System.out.println(username + phone + address);
		resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
	}

	private void Order2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String price = req.getParameter("price");
		HttpSession session = req.getSession();
		session.setAttribute("username", username);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		session.setAttribute("price2", price);
		System.out.println(username + phone + address);
		resp.sendRedirect(req.getContextPath() + "/jsp/payment2.jsp");
	}

	/**
	 * 订单添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uuid = (String) session.getAttribute("orderuuid");
		User user = (User) session.getAttribute("UserInfo");

		String order_id = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		java.sql.Timestamp createtime = new java.sql.Timestamp(new java.util.Date().getTime());
		List<Cart> list = (List<Cart>) session.getAttribute("cartList");

		Order order = new Order();
		order.setOrder_id(order_id);
		order.setUser_id(user.getId());
		order.setOrder_createtime(createtime);
		order.setOrder_bankID(uuid);
		order.setOrder_status(1);
		order.setOrder_username((String) session.getAttribute("username"));
		order.setOrder_phone((String) session.getAttribute("phone"));
		order.setOrder_address((String) session.getAttribute("address"));
		int m = orderService.OrderAdd(order);

		OrderDetails orderDetails = new OrderDetails();
		orderDetails.setOrder_id(order_id);
		for (int i = 0; i < list.size(); i++) {
			orderDetails.setGoods_id(list.get(i).getGoods_id());
			orderDetails.setGoods_sum(list.get(i).getGoods_sum());
			// 添加订单
			int n = orderService.OrderDetailsAdd(orderDetails);
			// 删除购物车商品
			int k = cartService.cartDele(list.get(i).getCar_id());
			// 修改商品数量
			System.out.println("shuliang" + list.get(i).getGoods_sum());
			int p = goodsService.goodsUpdateSum(list.get(i).getGoods_id(), list.get(i).getGoods_sum());
			if (n <= 0) {
				resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
			}
			if (k <= 0) {
				resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
			}

			if (p <= 0) {
				resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
			}
		}
		if (m > 0) {
			resp.sendRedirect(req.getContextPath() + "/jsp/myOrder.jsp");
		} else {
			resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
		}

	}

	/**
	 * 订单添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderAdd2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uuid = (String) session.getAttribute("orderuuid");
		User user = (User) session.getAttribute("UserInfo");

		String order_id = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		java.sql.Timestamp createtime = new java.sql.Timestamp(new java.util.Date().getTime());
		Goods goods = (Goods) session.getAttribute("goods2");
		int sum = (int)session.getAttribute("goodssum");
		
		Order order = new Order();
		order.setOrder_id(order_id);
		order.setUser_id(user.getId());
		order.setOrder_createtime(createtime);
		order.setOrder_bankID(uuid);
		order.setOrder_status(1);
		order.setOrder_username((String) session.getAttribute("username"));
		order.setOrder_phone((String) session.getAttribute("phone"));
		order.setOrder_address((String) session.getAttribute("address"));
		int m = orderService.OrderAdd(order);

		OrderDetails orderDetails = new OrderDetails();
		orderDetails.setOrder_id(order_id);

		orderDetails.setGoods_id(goods.getGoods_id());
		orderDetails.setGoods_sum(sum);
		// 添加订单
		int n = orderService.OrderDetailsAdd(orderDetails);
		// 修改商品数量
		
		int p = goodsService.goodsUpdateSum(goods.getGoods_id(), sum);

		if (n <= 0) {
			resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
		}

		if (p <= 0) {
			resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
		}

		if (m > 0) {
			resp.sendRedirect(req.getContextPath() + "/jsp/myOrder.jsp");
		} else {
			resp.sendRedirect(req.getContextPath() + "/jsp/payment.jsp");
		}

	}

	/**
	 * 订单修改
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String order_id = req.getParameter("order_id");
		String username = req.getParameter("order_username");
		String phone = req.getParameter("order_phone");
		String address = req.getParameter("order_address");

		Order order = new Order();
		order.setOrder_id(order_id);
		order.setOrder_username(username);
		order.setOrder_phone(phone);
		order.setOrder_address(address);
		System.out.println(order);
		int i = orderService.OrderUpdate(order);
		if (i > 0) {
			resp.sendRedirect(req.getContextPath() + "/admin/order/orderList.jsp");
		} else {
			resp.sendRedirect(req.getContextPath() + "/admin/order/orderUpdate.jsp");
		}

	}

	/**
	 * 订单状态修改
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderUpdateById(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String order_id = req.getParameter("order_id");
		int order_status = Integer.parseInt(req.getParameter("status"));
		Order order = new Order();
		order.setOrder_id(order_id);
		order.setOrder_status(order_status);
		int m = orderService.orderUpdateStatus(order);
		resp.sendRedirect(req.getContextPath() + "/admin/order/orderList.jsp");

	}

	/**
	 * id订单查询
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderSelectById(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String order_id = req.getParameter("order_id");
		Order order = orderService.orderSelectById(order_id);
		System.out.println(order);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(order));
	}

	/**
	 * id订单查询详情
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderDetailsByOrderId(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String order_id = req.getParameter("order_id");
		List<OrderDetails> orderDetails = orderService.OrderDetailsByOrderId(order_id);
		System.out.println(orderDetails);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(orderDetails));
	}

	/**
	 * 订单状态修改
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void OrderUpdateStatus(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String order_id = req.getParameter("order_id");
		int order_status = Integer.parseInt(req.getParameter("status"));
		Order order = new Order();
		order.setOrder_id(order_id);
		order.setOrder_status(order_status);
		int m = orderService.orderUpdateStatus(order);
		resp.sendRedirect(req.getContextPath() + "/jsp/myOrder.jsp");

	}
}
