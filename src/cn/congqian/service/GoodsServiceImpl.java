package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.GoodsDao;
import cn.congqian.model.Goods;

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
	public List<Goods> goodsSelectByType(String type) {
		// TODO Auto-generated method stub
		return goodsDao.goodsSelectByType(type);
	}



}
