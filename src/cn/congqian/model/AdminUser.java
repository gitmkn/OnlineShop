package cn.congqian.model;

/**
 * 用户类
 * @author mkn
 *
 */
public class AdminUser {
	/**
	 * 用户id
	 */
	private int id;
	/**
	 * 用户姓名
	 */
	private String name;
	/**
	 * 用户密码
	 */
	private String password;
	
	/**
	 * 类型
	 */
	private int type;
	/**
	 * 状态
	 */
	private int status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AdminUser [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + ", status="
				+ status + "]";
	}
	
	
}