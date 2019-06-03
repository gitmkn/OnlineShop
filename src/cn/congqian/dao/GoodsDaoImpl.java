package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;

public class GoodsDaoImpl extends BaseDao<Goods> implements GoodsDao{

	@Override
	public List<Goods> goodsList(int goods_status) {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_type,goods_status,t_goods_type.type_id,t_goods_type.type_name,t_goods_picture.picture_id,t_goods_picture.picture_url "
				+ "from t_goods,t_goods_type,t_goods_picture "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "and t_goods.picture_id = t_goods_picture.picture_id "
				+ "and goods_status=?";
		return super.getList(sql,goods_status);
	}

	@Override
	public Goods goodsSelectById(int id) {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_id,t_goods_type.type_name,t_goods_picture.picture_url "
				+ "from t_goods,t_goods_type,t_goods_picture "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "and t_goods.picture_id = t_goods_picture.picture_id "
				+ "and goods_id=?";
		return super.get(sql, id);
	}

	@Override
	public List<Goods> goodsSelectByCreatetime() {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "order by goods_createtime desc";
		return super.getList(sql);
	}

	@Override
	public List<Goods> goodsSelectByType(int type) {
		// TODO Auto-generated method stub
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name,t_goods_picture.picture_url "
				+ "from t_goods,t_goods_type,t_goods_picture "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "and t_goods.picture_id = t_goods_picture.picture_id "
				+ "and goods_type = ? "
				+ "and goods_status = 1 "
				+ "order by goods_createtime desc";
		return super.getList(sql,type);
	}

	@Override
	public int goodsAdd(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "insert into t_goods(goods_name,goods_describe,goods_price,goods_createtime,goods_type,goods_status,picture_id) value(?,?,?,?,?,?,?)";
		return super.update(sql, goods.getGoods_name(),goods.getGoods_describe(),goods.getGoods_price(),goods.getGoods_createtime(),goods.getType_id(),goods.getGoods_status(),goods.getPicture_id());
	}
	
	@Override
	public int goodsPictureAdd(GoodsPicture goodsPicture) {
		// TODO Auto-generated method stub
		String sql = "insert into t_goods_picture(picture_id,picture_url) value(?,?)";
		return super.update(sql, goodsPicture.getPicture_id(),goodsPicture.getPicture_url());
	}

	@Override
	public int goodsUpdate(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "update t_goods set goods_name=?,goods_describe=?,goods_price=?,goods_createtime=?,goods_sum=?,goods_type=?,goods_status=?,picture_id=? where goods_id=?";
		return super.update(sql, goods.getGoods_name(),goods.getGoods_describe(),goods.getGoods_price(),goods.getGoods_createtime(),goods.getGoods_sum(),goods.getType_id(),goods.getGoods_status(),goods.getPicture_id(),goods.getGoods_id());
	}
	
	@Override
	public int goodsPictureDelete(GoodsPicture goodsPicture) {
		// TODO Auto-generated method stub
		String sql = "delete from t_goods_picture where picture_id=?";
		return super.update(sql, goodsPicture.getPicture_id());
	}

	@Override
	public int updateStatus(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "update t_goods set goods_status=? where goods_id=?";
		return super.update(sql, goods.getGoods_status(),goods.getGoods_id());
	}

	@Override
	public int updateSum(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "update t_goods set goods_sum=? where goods_id=?";
		return super.update(sql, goods.getGoods_sum(),goods.getGoods_id());
	}

	@Override
	public List<Goods> goodsBySearch(String content) {
		// TODO Auto-generated method stub
		String contents = "'%"+content+"%'";
		String sql = "select goods_id,goods_name,goods_describe,goods_price,goods_createtime,goods_sum,goods_status,t_goods_type.type_name "
				+ "from t_goods,t_goods_type "
				+ "where t_goods.goods_type = t_goods_type.type_id "
				+ "and goods_name like "+contents+" "
				+ "and goods_status = 1 "
				+ "order by goods_createtime desc";
		System.out.println(contents);
		return super.getList(sql);
	}

	@Override
	public int goodsUpdateSum(int goods_id, int goods_sum) {
		// TODO Auto-generated method stub
		String sql = "update t_goods set goods_sum=goods_sum-? where goods_id=?";
		return super.update(sql, goods_sum,goods_id);
	}

	@Override
	public int goodsUpdateDescribe(int goods_id, String goods_describe) {
		// TODO Auto-generated method stub
		String sql = "update t_goods set goods_describe=? where goods_id=?";
		return super.update(sql, goods_describe,goods_id);
	}

	
}
