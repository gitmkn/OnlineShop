package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Message;

public class MessageDaoImpl extends BaseDao<Message> implements MessageDao {

	@Override
	public int addMessage(Message message) {
		// TODO Auto-generated method stub
		String sql = "insert into t_message(user_id,message_content,createtime) value(?,?,?)";
		return super.update(sql, message.getUser_id(),message.getMessage_content(),message.getCreatetime());
	}

	@Override
	public List<Message> selectMessage() {
		// TODO Auto-generated method stub
		String sql = "select user_id,message_content,t_message.createtime,t_user.username "
				+ "from t_message,t_user "
				+ "where t_message.user_id = t_user.id ";
		return super.getList(sql);
	}

}
