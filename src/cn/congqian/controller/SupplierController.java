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

import cn.congqian.model.Supplier;
import cn.congqian.service.FactoryService;
import cn.congqian.service.SupplierService;

@WebServlet(urlPatterns = { "*.sdo" })
public class SupplierController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	SupplierService supplierServer = FactoryService.getSupplierService();

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
	 * 供货商列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void supplierList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Supplier> list = supplierServer.SupplierList();
		System.out.println(list);
		// System.out.println(json);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	
	/**
	 * 供货商查询
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void supplier(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String supplierid = req.getParameter("supplierid");
		System.out.println(supplierid);
		Supplier supplier = supplierServer.supplierById(supplierid);
		System.out.println(supplier);
		req.setAttribute("supplier", supplier);
		resp.getWriter().write(JSON.toJSONString(supplier));
//		resp.sendRedirect(req.getContextPath() + "/admin/supplier/supplierUpdate.jsp");
//		req.getRequestDispatcher("/admin/supplier/supplierUpdate.jsp").forward(req, resp);
		
	}
	/**
	 * 供货商添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void supplierAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Supplier supplier = new Supplier();
		String supplier_id = req.getParameter("id");
		String supplier_name = req.getParameter("name");
		String supplier_username = req.getParameter("username");
		String supplier_address = req.getParameter("address");
		String supplier_phone = req.getParameter("phone");
		String supplier_email = req.getParameter("email");
		supplier.setSupplier_id(supplier_id);
		supplier.setSupplier_name(supplier_name);
		supplier.setSupplier_username(supplier_username);
		supplier.setSupplier_address(supplier_address);
		supplier.setSupplier_phone(supplier_phone);
		supplier.setSupplier_email(supplier_email);
		System.out.println(supplier);
		int i = supplierServer.supplierAdd(supplier);
		if (i > 0) {
			resp.getWriter().write("1");
		} else {
			resp.getWriter().write("0");
		}

	}
	
	
	private void supplierUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Supplier supplier = new Supplier();
		String supplier_id = req.getParameter("id");
		String supplier_name = req.getParameter("name");
		String supplier_username = req.getParameter("username");
		String supplier_address = req.getParameter("address");
		String supplier_phone = req.getParameter("phone");
		String supplier_email = req.getParameter("email");
		supplier.setSupplier_id(supplier_id);
		supplier.setSupplier_name(supplier_name);
		supplier.setSupplier_username(supplier_username);
		supplier.setSupplier_address(supplier_address);
		supplier.setSupplier_phone(supplier_phone);
		supplier.setSupplier_email(supplier_email);
		int i = supplierServer.supplierUpdate(supplier);
		if (i > 0) {
			resp.getWriter().write("1");
		} else {
			resp.getWriter().write("0");
		}

	}

}