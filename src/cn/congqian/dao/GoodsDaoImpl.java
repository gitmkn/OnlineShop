package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;

public class GoodsDaoImpl extends BaseDao<Goods> implements GoodsDao{

	@Override
	public List<Goods> goodsList() {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id";
		return super.getList(sql);
	}

	@Override
	public Goods goodsSelectById(int id) {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name,picture_id "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "and goods_id=?";
		return super.get(sql, id);
	}

	@Override
	public List<Goods> goodsSelectByCreatetime() {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "order by goods_createtime desc;";
		return super.getList(sql);
	}

	@Override
	public List<Goods> goodsSelectByType(int type) {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id and goods_type = ?";
		return super.getList(sql,type);
	}

	@Override
	public int goodsAdd(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "insert into t_goods(goods_name,goods_describe,goods_price,goods_createtime,goods_type,picture_id) value(?,?,?,?,?,?)";
		return super.update(sql, goods.getGoods_name(),goods.getGoods_describe(),goods.getGoods_price(),goods.getGoods_createtime(),goods.getGoodsType_id(),goods.getGoodsPicture_id());
	}
	
	@Override
	public int goodsPictureAdd(GoodsPicture goodsPicture) {
		// TODO Auto-generated method stub
		String sql = "insert into t_goods_picture(picture_id,picture_url) value(?,?)";
		return super.update(sql, goodsPicture.getPicture_id(),goodsPicture.getPicture_url());
	}

}
