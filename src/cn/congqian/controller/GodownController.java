package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.Godown;
import cn.congqian.model.Goods;
import cn.congqian.model.Supplier;
import cn.congqian.service.FactoryService;
import cn.congqian.service.GodownService;
import cn.congqian.service.GoodsService;
import cn.congqian.service.SupplierService;

@WebServlet(urlPatterns = { "*.godo" })
public class GodownController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	GodownService godownrServer = FactoryService.getGodownService();
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
		mn = mn.substring(0, mn.length() - 5);// 获得路径的字段
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
	 * 入库单列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void godownList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List list = godownrServer.godownList();
		System.out.println(list);
		// System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}
	
	
	
	/**
	 * 入库单id查
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void godownById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Godown godown = godownrServer.godownById(id);
		req.setAttribute("godown", godown);
		req.getRequestDispatcher("/admin/warehouse/warehouseUpdate.jsp").forward(req, resp);
	}

	/**
	 * 入库单添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void godownAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Godown godown = new Godown();
		int goods_id = Integer.parseInt(req.getParameter("goods_id"));//商品id
		String username = req.getParameter("username");//管理员
		int goods_sum = Integer.parseInt(req.getParameter("goods_sum"));//现有数量
		int sum = Integer.parseInt(req.getParameter("sum"));//此次入库数量
		String supplier_id = req.getParameter("supplier");//供应商id
		BigDecimal price = new BigDecimal(req.getParameter("price"));//入库单价
		java.sql.Timestamp godown_date = new java.sql.Timestamp(new java.util.Date().getTime());
		String godown_id = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		godown.setGodown_id(godown_id);
		godown.setGodown_date(godown_date);
		godown.setGoods_id(goods_id);
		godown.setGodown_admin(username);
		godown.setGodown_sum(sum);
		godown.setSupplier_id(supplier_id);
		godown.setPrice(price);
		
		Goods goods = new Goods();
		int sums = goods_sum + sum;
		goods.setGoods_id(goods_id);
		goods.setGoods_sum(sums);
		System.out.println(goods);
		System.out.println(godown);
		System.out.println(sums);
		int i = godownrServer.godownAdd(godown);
		int j = goodsService.updateSum(goods);
		if (i > 0 && j > 0) {
			req.getRequestDispatcher("/admin/warehouse/warehouseList.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("/admin/goods/goodsList.jsp").forward(req, resp);
		}
	}

}