package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Godown;

public interface GodownDao {
	/**
	 * 查询入库列表
	 * @return
	 */
	public List godownList();
	
	/**
	 * 查询入库列表
	 * @return
	 */
	public Godown godownById(int id);
	/**
	 * 添加入库
	 * @return
	 */
	public int godownAdd(Godown godown);
}
