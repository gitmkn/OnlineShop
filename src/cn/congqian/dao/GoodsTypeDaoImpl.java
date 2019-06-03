package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.GoodsType;

public class GoodsTypeDaoImpl extends BaseDao<GoodsType> implements GoodsTypeDao{

	@Override
	public List<GoodsType> goodsTypes() {
		// TODO Auto-generated method stub
		String sql = "select type_id,type_name from t_goods_type";
		return super.getList(sql);
	}

}
