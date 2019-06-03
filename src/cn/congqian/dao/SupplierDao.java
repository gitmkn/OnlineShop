package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Supplier;

public interface SupplierDao {

	/**
	 * 查询供货商列表
	 * @return
	 */
	public List<Supplier> SupplierList();
	
	/**
	 * 添加供货商
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
