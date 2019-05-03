package cn.congqian.service;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.MessageDao;
import cn.congqian.model.Message;

public class MessageServiceImpl implements MessageService{

	MessageDao messageDao = FactoryDao.getMessageDao();

	@Override
	public int addMessage(Message message) {
		// TODO Auto-generated method stub
		return messageDao.addMessage(message);
	}
}
