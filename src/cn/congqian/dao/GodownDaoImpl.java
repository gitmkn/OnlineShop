package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Godown;

public class GodownDaoImpl extends BaseDao<Godown> implements GodownDao{

	@Override
	public List godownList() {
		// TODO Auto-generated method stub
		String sql = "select * from t_godown,t_supplier,t_goods where t_godown.supplier_id = t_supplier.supplier_id and t_goods.goods_id = t_godown.goods_id";
		return super.getList(sql);
	}

	@Override
	public Godown godownById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from t_godown,t_supplier,t_goods where t_godown.supplier_id = t_supplier.supplier_id and t_goods.goods_id = t_godown.goods_id and where godown=?";
		return super.get(sql, id);
	}

	@Override
	public int godownAdd(Godown godown) {
		// TODO Auto-generated method stub
		String sql = "insert into t_godown(godown_id,godown_date,godown_sum,godown_admin,goods_id,supplier_id,price) value(?,?,?,?,?,?,?)";
		return super.update(sql, godown.getGodown_id(),godown.getGodown_date(),godown.getGodown_sum(),godown.getGodown_admin(),godown.getGoods_id(),godown.getSupplier_id(),godown.getPrice());
	}

}
