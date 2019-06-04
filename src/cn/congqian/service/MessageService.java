package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Message;

public interface MessageService {
	
	public int addMessage(Message message);
	
	/**
	 * 查询留言
	 * @return
	 */
	public List<Message> selectMessage();
}
