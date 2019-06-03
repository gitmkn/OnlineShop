package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Supplier;

public class SupplierDaoImpl extends BaseDao<Supplier> implements SupplierDao {

	@Override
	public List<Supplier> SupplierList() {
		// TODO Auto-generated method stub
		String sql = "select * from t_supplier";
		return super.getList(sql);
	}

	@Override
	public int supplierAdd(Supplier supplier) {
		// TODO Auto-generated method stub
		String sql = "insert into t_supplier(supplier_id,supplier_name,supplier_username,supplier_address,supplier_phone,supplier_email) value(?,?,?,?,?,?)";
		return super.update(sql, supplier.getSupplier_id(),supplier.getSupplier_name(),supplier.getSupplier_username(),supplier.getSupplier_address(),supplier.getSupplier_phone(),supplier.getSupplier_email());
	}

	@Override
	public int supplierUpdate(Supplier supplier) {
		// TODO Auto-generated method stub
		String sql = "update t_supplier set supplier_name=?,supplier_username=?,supplier_address=?,supplier_phone=?,supplier_email=? where supplier_id=?";
		return super.update(sql, supplier.getSupplier_name(),supplier.getSupplier_username(),supplier.getSupplier_address(),supplier.getSupplier_phone(),supplier.getSupplier_email(),supplier.getSupplier_id());
	}

	@Override
	public Supplier supplierById(String supplierid) {
		// TODO Auto-generated method stub
		String sql = "select * from t_supplier where supplier_id=?";
		return super.get(sql, supplierid);
	}

}
