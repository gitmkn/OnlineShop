package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.SupplierDao;
import cn.congqian.model.Supplier;

public class SupplierServiceImpl implements SupplierService{

	SupplierDao supplierDao = FactoryDao.getSupplierDao();
	
	public List<Supplier> SupplierList() {
		// TODO Auto-generated method stub
		return supplierDao.SupplierList();
	}
	
	
	@Override
	public int supplierAdd(Supplier supplier) {
		// TODO Auto-generated method stub
		return supplierDao.supplierAdd(supplier);
	}


	@Override
	public int supplierUpdate(Supplier supplier) {
		// TODO Auto-generated method stub
		return supplierDao.supplierUpdate(supplier);
	}


	@Override
	public Supplier supplierById(String supplierid) {
		// TODO Auto-generated method stub
		return supplierDao.supplierById(supplierid);
	}
}
