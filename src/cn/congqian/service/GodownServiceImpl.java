package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.GodownDao;
import cn.congqian.model.Godown;

public class GodownServiceImpl implements GodownService{

	GodownDao GodownDao = FactoryDao.getGodownDao();
	@Override
	public List godownList() {
		// TODO Auto-generated method stub
		return GodownDao.godownList();
	}
	@Override
	public Godown godownById(int id) {
		// TODO Auto-generated method stub
		return GodownDao.godownById(id);
	}
	
	@Override
	public int godownAdd(Godown godown) {
		// TODO Auto-generated method stub
		return GodownDao.godownAdd(godown);
	}

}
