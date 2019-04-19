package cn.congqian.utils;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;



/**
 * jdbc工具类
 * @author mkn
 *
 */
public class JdbcUtils {
	
	/**
	 * 数据库连接池，cp30
	 */
	private static DataSource dataSource = null;
	static {//静态代码只会被执行一次
		dataSource = new ComboPooledDataSource("mysql");
		
	}
	
	
	/**
	 * 获取到数据库的mysql的连接对象conn
	 * @return
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			return conn;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
		
	}
	
	public static void closeConn(Connection conn) {
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void rollbackTransation(Connection conn) {
		if (conn!=null) {
			try {
				conn.rollback();//事务回滚
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
} 
