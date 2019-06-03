package cn.congqian.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.alibaba.fastjson.JSON;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;
import cn.congqian.model.GoodsType;
import cn.congqian.model.User;
import cn.congqian.service.FactoryService;
import cn.congqian.service.GoodsService;
import cn.congqian.service.GoodsTypeService;

@WebServlet(urlPatterns = { "*.gado" })
public class GoodsAdminController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	GoodsService goodsService = FactoryService.getGoodsService();
	GoodsTypeService goodsTypeService = FactoryService.geGoodsTypeService();

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
	 * 商品列表
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodsList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int goods_status = Integer.parseInt(req.getParameter("status"));
		List<Goods> list = goodsService.goodsList(goods_status);
		System.out.println(list);
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSON.toJSONString(list));
	}

	private void goods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("123");
		int goods_id = Integer.parseInt(req.getParameter("goodsId"));
		try {
			Goods goods = goodsService.goodsSelectById(goods_id);
			req.setAttribute("goods", goods);
			System.out.println(goods);
			resp.getWriter().write(JSON.toJSONString(goods));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("查询商品时出错");
		}
		// req.getRequestDispatcher("/jsp/details.jsp").forward(req, resp);
	}
	
	
	/**
	 * 用户修改状态
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodsStatus(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Goods goods = new Goods();
		int id = Integer.parseInt(req.getParameter("id"));
		int status = Integer.parseInt(req.getParameter("status"));
		goods.setGoods_id(id);
		goods.setGoods_status(status);
		int i = goodsService.updateStatus(goods);
		System.out.println(i);
		if(i > 0) {
			resp.getWriter().write("修改成功");
		}else {
			resp.getWriter().write("修改失败");
		}
	}

	/**
	 * 请求商品类型
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void goodstype(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<GoodsType> list = goodsTypeService.goodsTypes();
		System.out.println(list);
		resp.getWriter().write(JSON.toJSONString(list));
	}

	/**
	 * 编辑器中的图片添加
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void ImggoodsAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("123");
		// 判断上传表单是否为multipart/form-data类型
		String paths = "";
		String path = "";
		if (ServletFileUpload.isMultipartContent(req)) {
			try {
				// 1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹

				// 2. 创建ServletFileUpload对象，并设置上传文件的大小限制。
				ServletFileUpload sfu = new ServletFileUpload(factory);
				sfu.setSizeMax(10 * 1024 * 1024);// 以byte为单位 不能超过10M 1024byte = 1kb 1024kb=1M 1024M = 1G
				sfu.setHeaderEncoding("utf-8");

				// 3. 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。
				List<FileItem> fileItemList = sfu.parseRequest(req);
				Iterator<FileItem> fileItems = fileItemList.iterator();

				// 4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件
				while (fileItems.hasNext()) {
					FileItem fileItem = fileItems.next();
					// 普通表单元素
					if (fileItem.isFormField()) {

					}
					// <input type="file">的上传文件的元素
					else {
						String fileName = fileItem.getName();// 文件名称
						// System.out.println("原文件名：" + fileName);// Koala.jpg

						// String suffix = fileName.substring(fileName.lastIndexOf('.'));
						// System.out.println("扩展名：" + suffix);// .jpg

						// 新文件名（唯一）
						// String newFileName = new Date().getTime() + suffix;
						String newFileName = new Date().getTime() + ".jpg";
						// System.out.println("新文件名：" + newFileName);// image\1478509873038.jpg

						// 5. 调用FileItem的write()方法，写入文件
						path = req.getSession().getServletContext().getRealPath("/admin/goods/");//好用
//						String path = req.getSession().getServletContext().getRealPath("E:/apache-tomcat-8.0.21/webapps/OnlineShop/admin/goods/goodsImg/");
//						String path = req.getServletContext().getRealPath("/admin/goods/goodsImg/");
//						path = req.getScheme()+"://"+req.getServerName()+":"+ req.getServerPort()+req.getContextPath()+"/admin/goods/";  
//						path = req.getServletContext().getRealPath("/admin/goods/goodsImg/");
						// String path = req.getRealPath("/admin/text/");
						paths = req.getScheme()+"://"+req.getServerName()+":"+ req.getServerPort()+req.getContextPath()+"/"+"admin/goods/"+newFileName;
						System.out.println(path);
						System.out.println(paths);
						// File file = new File(req.getServletContext().getRealPath("/admin/goodsImg") +
						// "/" + newFileName);
						File file = new File(path + newFileName);
						// System.out.println(file.getAbsolutePath());
						fileItem.write(file);
						// 6. 调用FileItem的delete()方法，删除临时文件
//						fileItem.delete();
					}
				}

			} catch (FileUploadException e) {
				System.out.println("上传文件异常" + e);
			} catch (Exception e) {
				System.out.println("添加商品图片异常" + e);
			}
		}
		System.out.println(paths);
		resp.getWriter().write(paths);
	}

	/**
	 * 商品添加，图片添加
	 * 
	 * @param req
	 * @param resp
	 */
	private void goodsAdds(HttpServletRequest req, HttpServletResponse resp) {
		req.removeAttribute("addgoods");
		Goods goods = new Goods();
		GoodsType goodsType = new GoodsType();
		GoodsPicture goodsPicture = new GoodsPicture();
		System.out.println("123");
		// 判断上传表单是否为multipart/form-data类型
		if (ServletFileUpload.isMultipartContent(req)) {
			try {
				// 1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹

				// 2. 创建ServletFileUpload对象，并设置上传文件的大小限制。
				ServletFileUpload sfu = new ServletFileUpload(factory);
				sfu.setSizeMax(10 * 1024 * 1024);// 以byte为单位 不能超过10M 1024byte = 1kb 1024kb=1M 1024M = 1G
				sfu.setHeaderEncoding("utf-8");

				// 3. 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。
				List<FileItem> fileItemList = sfu.parseRequest(req);
				Iterator<FileItem> fileItems = fileItemList.iterator();
				int l = 0;
				// 4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件
				while (fileItems.hasNext()) {
					FileItem fileItem = fileItems.next();
					// 普通表单元素
					if (fileItem.isFormField()) {
						String name = fileItem.getFieldName();// name属性值
						String value = fileItem.getString("utf-8");// name对应的value值
						if ("goods_name".equals(name)) {
							goods.setGoods_name(value);
						}
						if ("goods_type".equals(name)) {
							int i = Integer.parseInt(value);
							goodsType.setType_id(i);
							goods.setType_id(i);
						}
						if ("goods_price".equals(name)) {
							BigDecimal prive = new BigDecimal(value);
							goods.setGoods_price(prive);
						}
						if ("goods_describe".equals(name)) {
							goods.setGoods_describe(value);
						}
//						System.out.println(name + " = " + value);
					}
					// <input type="file">的上传文件的元素
					else if(l <= 0){
						l++;
						String fileName = fileItem.getName();// 文件名称
						// System.out.println("原文件名：" + fileName);// Koala.jpg

						// String suffix = fileName.substring(fileName.lastIndexOf('.'));
						// System.out.println("扩展名：" + suffix);// .jpg

						// 新文件名（唯一）
						// String newFileName = new Date().getTime() + suffix;
						String newFileName = new Date().getTime() + ".jpg";
//						 System.out.println("新文件名：" + newFileName);// image\1478509873038.jpg

						// 5. 调用FileItem的write()方法，写入文件
//						String path = req.getSession().getServletContext().getRealPath("admin");
						 
//						 String path = req.getServletContext().getRealPath("/admin/goods/goodsImg/");
						 String path = req.getServletContext().getRealPath("/") + "admin/goods/goodsImg/";//可以用
						 System.out.println("122:"+path);
						// File file = new File(req.getServletContext().getRealPath("/admin/goodsImg") +
						// "/" + newFileName);
						File file = new File(path + newFileName);
						// System.out.println(file.getAbsolutePath());
						fileItem.write(file);
						// 6. 调用FileItem的delete()方法，删除临时文件
//						fileItem.delete();

						/*
						 * 存储到数据库时注意 1.保存源文件名称 Koala.jpg 2.保存相对路径 image/1478509873038.jpg
						 * 
						 */

						java.sql.Timestamp ctime = new java.sql.Timestamp(new java.util.Date().getTime());
						goods.setGoods_createtime(ctime);
						String uuid = UUID.randomUUID().toString();

						goodsPicture.setPicture_id(uuid);
						goodsPicture.setPicture_url(newFileName);
						goods.setPicture_url(newFileName);
						goods.setPicture_id(uuid);
						goods.setGoods_status(1);
						System.out.println(goods);	
						
					}

				}
				int i = goodsService.goodsAdd(goods, goodsPicture);
				System.out.println(i);
				if (i > 1) {
					// req.setAttribute("image_name", fileName);
					// req.setAttribute("image_path", "image/" + newFileName);
					req.setAttribute("addgoods", "成功");
					req.setAttribute("goods_id", goods.getGoods_id());
					req.getRequestDispatcher("/admin/goods/goodsAdd.jsp").forward(req, resp);
					// resp.sendRedirect("/admin/goods/goodsAdd.jsp");
					return;
					// resp.getWriter().wait(1);
				} else {
					req.setAttribute("addgoods", "失败");
				}

			} catch (FileUploadException e) {
				System.out.println("上传文件异常" + e);
			} catch (Exception e) {
				System.out.println("添加商品异常" + e);
			}
		}

	}

	/**
	 * 商品修改
	 * 
	 * @param req
	 * @param resp
	 */
	private void goodsUpdate(HttpServletRequest req, HttpServletResponse resp) {
		Goods goods = new Goods();
		GoodsType goodsType = new GoodsType();
		GoodsPicture goodsPicture = new GoodsPicture();
		// 判断上传表单是否为multipart/form-data类型
		if (ServletFileUpload.isMultipartContent(req)) {
			try {
				// 1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹

				// 2. 创建ServletFileUpload对象，并设置上传文件的大小限制。
				ServletFileUpload sfu = new ServletFileUpload(factory);
				sfu.setSizeMax(10 * 1024 * 1024);// 以byte为单位 不能超过10M 1024byte = 1kb 1024kb=1M 1024M = 1G
				sfu.setHeaderEncoding("utf-8");

				// 3. 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。
				List<FileItem> fileItemList = sfu.parseRequest(req);
				Iterator<FileItem> fileItems = fileItemList.iterator();
				int l = 0;
				// 4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件
				while (fileItems.hasNext()) {
					FileItem fileItem = fileItems.next();
					// 普通表单元素
					if (fileItem.isFormField()) {
						String name = fileItem.getFieldName();// name属性值
						String value = fileItem.getString("utf-8");// name对应的value值
						if ("goods_id".equals(name)) {
							goods.setGoods_id(Integer.parseInt(value));
						}
						if ("goods_name".equals(name)) {
							goods.setGoods_name(value);
						}
						if ("goods_type".equals(name)) {
							int i = Integer.parseInt(value);
							goodsType.setType_id(i);
							goods.setType_id(i);
							System.out.println("商品类型" + i);
						}
						if ("goods_price".equals(name)) {
							BigDecimal prive = new BigDecimal(value);
							goods.setGoods_price(prive);
						}
						if ("goods_describe".equals(name)) {
							goods.setGoods_describe(value);
						}
						System.out.println(name + " = " + value);
					}
					// <input type="file">的上传文件的元素
					else if(l <= 0){
						l++;
						String fileName = fileItem.getName();// 文件名称
						// System.out.println("原文件名：" + fileName);// Koala.jpg

						// String suffix = fileName.substring(fileName.lastIndexOf('.'));
						// System.out.println("扩展名：" + suffix);// .jpg

						// 新文件名（唯一）
						// String newFileName = new Date().getTime() + suffix;
						String newFileName = new Date().getTime() + ".jpg";
						// System.out.println("新文件名：" + newFileName);// image\1478509873038.jpg

						// 5. 调用FileItem的write()方法，写入文件
						String path = req.getServletContext().getRealPath("/") + "admin/goods/goodsImg/";
						 System.out.println(path);
						// File file = new File(req.getServletContext().getRealPath("/admin/goodsImg") +
						// "/" + newFileName);
						File file = new File(path + newFileName);
						// System.out.println(file.getAbsolutePath());
						fileItem.write(file);
						// 6. 调用FileItem的delete()方法，删除临时文件
//						fileItem.delete();

						/*
						 * 存储到数据库时注意 1.保存源文件名称 Koala.jpg 2.保存相对路径 image/1478509873038.jpg
						 * 
						 */

						java.sql.Timestamp ctime = new java.sql.Timestamp(new java.util.Date().getTime());
						goods.setGoods_createtime(ctime);
						String uuid = UUID.randomUUID().toString();

						goodsPicture.setPicture_id(uuid);
						goodsPicture.setPicture_url(newFileName);
						goods.setPicture_url(newFileName);
						goods.setPicture_id(uuid);
						goods.setGoods_status(1);
						System.out.println(goods);
					}

				}
				System.out.println(goods);
				System.out.println(goodsPicture);
				int i = goodsService.goodsUpdate(goods, goodsPicture);
				System.out.println(i);
				if (i > 0) {
					// req.setAttribute("image_name", fileName);
					// req.setAttribute("image_path", "image/" + newFileName);
					 req.setAttribute("addgoods", "成功");
					req.getRequestDispatcher("/admin/goods/goodsList.jsp").forward(req, resp);
					// resp.sendRedirect("/admin/goods/goodsAdd.jsp");
					return;
					// resp.getWriter().wait(1);
				} else {
					req.setAttribute("addgoods", "失败");
				}

			} catch (FileUploadException e) {
				System.out.println("上传文件异常" + e);
			} catch (Exception e) {
				System.out.println("修改商品异常" + e);
			}

		}
	}
}
