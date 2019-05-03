package cn.congqian.model;

import java.sql.Date;

public class Message {
	/**
	 * 留言id
	 */
	private int message_id;
	/**
	 * 留言人id
	 */
	private int user_id;
	/**
	 * 留言内容
	 */
	private String message_content;
	/**
	 * 留言时间
	 */
	private Date createtime;
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	@Override
	public String toString() {
		return "Message [message_id=" + message_id + ", user_id=" + user_id + ", message_content=" + message_content
				+ ", createtime=" + createtime + "]";
	}
	
}
