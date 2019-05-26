package cn.congqian.service;

import java.sql.Connection;
import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.GoodsDao;
import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;
import cn.congqian.model.User;
import cn.congqian.utils.JdbcUtils;

public class GoodsServiceImpl implements GoodsService {

	GoodsDao goodsDao = FactoryDao.getGoodsDao();

	@Override
	public List<Goods> goodsList() {
		// TODO Auto-generated method stub
		return goodsDao.goodsList();
	}

	@Override
	public Goods goodsSelectById(int id) {
		// TODO Auto-generated method stub
		return goodsDao.goodsSelectById(id);
	}

	@Override
	public List<Goods> goodsSelectByCreatetime() {
		// TODO Auto-generated method stub
		return goodsDao.goodsSelectByCreatetime();
	}

	@Override
	public List<Goods> goodsSelectByType(int type) {
		// TODO Auto-generated method stub
		return goodsDao.goodsSelectByType(type);
	}

	@Override
	public int goodsAdd(Goods goods, GoodsPicture goodsPicture) {
		// TODO Auto-generated method stub
		Connection conn = null;
		int i = 0;
		int j = 0;
		try {
			conn = JdbcUtils.getConnection();
			conn.setAutoCommit(false);// 开启事务
			i = goodsDao.goodsAdd(goods);
			j = goodsDao.goodsPictureAdd(goodsPicture);
			conn.commit();// 提交事务
			if (i > 0 && j > 0) {
				return i+j;
			}
		} catch (Exception e) {
			JdbcUtils.rollbackTransation(conn);// 回滚事务
		}
		return i+j;
	}

}
