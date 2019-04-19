package cn.congqian.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.congqian.utils.JdbcUtils;

/**
 * 这是一个dao称里的基本类，在于被具体的dao类，UserDao去继承它来用的
 * @author mkn
 *
 * @param <T> : 针对要操作着各张数据表映射到java工程里java类，user
 */
public class BaseDao<T> {
	
	QueryRunner queryRunner = new QueryRunner();
	
	private Class<T> clazz;
		
	@SuppressWarnings("unchecked")
	public BaseDao(){
		Type superType = this.getClass().getGenericSuperclass();  //作用是拿到调用着的父类的类型
		if(superType instanceof ParameterizedType) {
			 ParameterizedType pt = (ParameterizedType) superType;
			 Type[] tarry = pt.getActualTypeArguments();//返回一个类型数组，第一个元素就是我们要的，T,User.class
			 if(tarry[0] instanceof Class) {
				clazz = (Class<T>) tarry[0];
			 }
		}
	}
	
	//对数据库有增删改查
	
	/**
	 * 查询数据表，取出sql语句的结果集的第一条数据，封装成一个对象返回，不支持事务
	 * 用到dbutils工具类
	 * null的位置，应该传入BeanDao<T>里边的T的真正用的时候的类型的Class
	 * @param sql
	 * @param args
	 * @return
	 */
	public T get(String sql,Object... args) {
		Connection conn = null;
		T entity = null;
		try {
			//拿conn
			conn = JdbcUtils.getConnection();
			entity = queryRunner.query(conn, sql,new BeanHandler<T>(clazz), args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtils.closeConn(conn);
		}
		return entity;
	}
	
	public T get(Connection conn,String sql,Object... args) {
		T entity = null;
		try {
			entity = queryRunner.query(conn, sql,new BeanHandler<T>(clazz), args);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}
	
	/**
	 * 获取多条记录的通用方法，通用泛型才能实现通用
	 */
	public List<T> getList(String sql,Object... args){
		Connection conn = null;
		List<T> list= null;
		try {
			//拿conn
			conn = JdbcUtils.getConnection();
			list = queryRunner.query(conn, sql,new BeanListHandler<>(clazz), args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtils.closeConn(conn);
		}
		return list;
	}
	
	/**
	 * 实现insert、update、delete通用方法
	 * @param sql
	 * @param args
	 * @return
	 */
	public int update(String sql,Object... args) {
		Connection conn = null;
		int rows= 0;
		try {
			//拿conn
			conn = JdbcUtils.getConnection();
			rows = queryRunner.update(conn, sql, args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtils.closeConn(conn);
		}
		System.out.println(sql);
		return rows;
	}
	
	/**
	 * 通用的放回sql语句的结果只有一个数值的类型的查询，用户个数，count(id)
	 * @param sql
	 * @param args
	 * @return
	 */
	public Object getValue(String sql,Object... args) {
		Connection conn = null;
		Object obj= null;
		try {
			//拿conn
			conn = JdbcUtils.getConnection();
			obj = queryRunner.query(conn, sql, new ScalarHandler(),args);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("BaseDao.getValue报的错");
		}finally {
			JdbcUtils.closeConn(conn);
		}
		return obj;
	}
	
	
}


