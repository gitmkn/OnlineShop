package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Message;

public interface MessageDao {
	/**
	 * 留言
	 * @param message
	 * @return
	 */
	public int addMessage(Message message);
	
	/**
	 * 查询留言
	 * @return
	 */
	public List<Message> selectMessage();

}
