package cn.congqian.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.Goods;
import cn.congqian.service.FactoryService;
import cn.congqian.service.GoodsService;

@WebServlet(urlPatterns = { "*.gdo" })
public class GoodsController extends HttpServlet {

	private static final long serialVersionUID = 1L;

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
	 * 商品列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodsList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			List<Goods> list = goodsService.goodsList();
			System.out.println(list);
			resp.setCharacterEncoding("utf-8");
			System.out.println(JSON.toJSONString(list));
			resp.getWriter().write(JSON.toJSONString(list));
	}
	
	/**
	 * 根据类型查询商品列表
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodsIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type");
		System.out.println(type);
		List<Goods> list = goodsService.goodsList();
		resp.setCharacterEncoding("utf-8");
		System.out.println(JSON.toJSONString(list));
		resp.getWriter().write(JSON.toJSONString(list));
	}
	
	

	/**
	 * 根据类型查询商品列表
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodsIndex1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idtype = req.getParameter("id");
		System.out.println(idtype);
		if(idtype == null) idtype="1";
		int typeid = Integer.parseInt(idtype);
		List<Goods> list = goodsService.goodsSelectByType(typeid);
		resp.setCharacterEncoding("utf-8");
		System.out.println(JSON.toJSONString(list));
		resp.getWriter().write(JSON.toJSONString(list));
	}
	
	
	private void goods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idtype = req.getParameter("id");
		System.out.println(idtype);
		if(idtype == null) idtype="1";
		int id = Integer.parseInt(idtype);
		try {
			Goods goods = goodsService.goodsSelectById(id);
			req.setAttribute("goods", goods);
			System.out.println(goods);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("查询商品时出错");
		}
		req.getRequestDispatcher("/jsp/details.jsp").forward(req, resp);
	}
	
	
	private void goodsClass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int type = Integer.parseInt(req.getParameter("type"));
		String type1 = "";
		if(type == 5) {
			type1 = "女孩玩具";
		}
		if(type == 6) {
			type1 = "男孩玩具";
		}
		if(type == 7) {
			type1 = "婴儿玩具";
		}
		System.out.println(type);
		List<Goods> list = goodsService.goodsSelectByType(type);
		resp.setCharacterEncoding("utf-8");
		req.setAttribute("goodslist", list);
		req.setAttribute("type", type1);
		System.out.println(JSON.toJSONString(list));
		resp.getWriter().write(JSON.toJSONString(list));
		req.getRequestDispatcher("/jsp/commodity.jsp").forward(req, resp);
	}
}
