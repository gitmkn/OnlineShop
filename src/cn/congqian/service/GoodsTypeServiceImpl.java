package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.GoodsTypeDao;
import cn.congqian.model.GoodsType;

public class GoodsTypeServiceImpl implements GoodsTypeService{

	GoodsTypeDao goodsTypeDao = FactoryDao.geGoodsTypeDao();
	
	@Override
	public List<GoodsType> goodsTypes() {
		// TODO Auto-generated method stub
		return goodsTypeDao.goodsTypes();
	}

}
