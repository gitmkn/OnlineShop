package cn.congqian.dao;

import cn.congqian.model.Message;

public class MessageDaoImpl extends BaseDao<Message> implements MessageDao {

	@Override
	public int addMessage(Message message) {
		// TODO Auto-generated method stub
		String sql = "insert into t_message(user_id,message_content,createtime) value(?,?,?)";
		return super.update(sql, message.getUser_id(),message.getMessage_content(),message.getCreatetime());
	}

}
