package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Supplier;

public interface SupplierService {
	/**
	 * 查询商品列表
	 * @return
	 */
	public List<Supplier> SupplierList();
	
	/**
	 * 添加查询商品
	 * @return
	 */
	public int supplierAdd(Supplier supplier);
	
	/**
	 * 修改查询供货商
	 * @return
	 */
	public int supplierUpdate(Supplier supplier);
	/**
	 * 修改查询供货商
	 * @return
	 */
	public Supplier supplierById(String supplierid);
}
