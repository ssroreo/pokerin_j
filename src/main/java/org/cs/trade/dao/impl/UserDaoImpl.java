package org.cs.trade.dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.cs.trade.dao.IUserDAO;
import org.cs.trade.domain.Information;
import org.cs.trade.domain.News;
import org.cs.trade.domain.PageModel;
import org.cs.trade.domain.Users;
import org.cs.trade.db.*;
/**
 * 处理页面显示的类;
 *
 */
@SuppressWarnings("all")
public class UserDaoImpl implements IUserDAO {
   //查找News的方法
	public List<News> findNews(String sql) {
		// TODO Auto-generated method stub
		
		List<News> newslist = new ArrayList();
		
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		ResultSet rs = ConnDB.getResultSet(stmt, sql);
		try {
			while(rs.next())
			{
				News news = new News();
				news.setId(rs.getInt("id"));
				news.setContent(rs.getString("content"));
				news.setNdate(rs.getString("ndate"));
				news.setTitle(rs.getString("title"));
				news.setUsername(rs.getString("username"));
				newslist.add(news);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDaoImpl中取得数据失败");
			e.printStackTrace();
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeResultSet(rs);
		ConnDB.closeConnection(conn);
		return newslist;
	}

	public List<Information> findInformation(String sql) {
		// TODO Auto-generated method stub
        List<Information> infolist = new ArrayList();
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		ResultSet rs = ConnDB.getResultSet(stmt, sql);
		try {
			while(rs.next())
			{
				Information info = new Information();
				
				info.setId(rs.getInt("id"));
				info.setUsername(rs.getString("username"));
				info.setLocalarea(rs.getString("localarea"));
				
				info.setProperty(rs.getString("property"));
				info.setHousestyle(rs.getString("housestyle"));
				info.setLocalarea(rs.getString("localarea"));
				info.setContentstyle(rs.getString("contentstyle"));
				
				info.setArea(rs.getString("area"));
				info.setFitment(rs.getString("fitment"));
				info.setAddress(rs.getString("address"));
				info.setContentname(rs.getString("contentname"));
				
				info.setAntrum(rs.getString("antrum"));
				info.setFloornumber(rs.getString("floornumber"));
				info.setSaleprice(rs.getString("saleprice"));
				info.setBasices(rs.getString("basices"));
				
				info.setLinkman(rs.getString("linkman"));
				info.setLinkmethod(rs.getString("linkmethod"));
				info.setLogindate(rs.getString("logindate"));
				info.setUserlife(rs.getString("uselife"));
				info.setRemark(rs.getString("remark"));
				
				infolist.add(info);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDaoImpl中取得数据失败");
			e.printStackTrace();
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeResultSet(rs);
		ConnDB.closeConnection(conn);
		return infolist;
	}
    //用户注册的方法
	public boolean isok(String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		boolean ok = false;
		try {
			stmt.executeUpdate(sql);
			ok = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("用户注册失败！");
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeConnection(conn);
		}
		return ok;
	}

	public boolean isexist(String sql) {
		// TODO Auto-generated method stub
		
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		ResultSet rs = ConnDB.getResultSet(stmt, sql);
		boolean ok = false;
		try {
			ok = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeResultSet(rs);
			ConnDB.closeConnection(conn);
			
		}
		return ok;
	}
   //
	public boolean modifyuser(String sql) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		boolean ok = false;
		try {
			stmt.executeUpdate(sql);
			ok = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("用户修改信息失败！");
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeConnection(conn);
		}
		return ok;
	}
   //查找用户信息
	public Users findUser(String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		ResultSet rs = ConnDB.getResultSet(stmt, sql);
		Users user =  null;
		try {
			while(rs.next())
			{
				user = new Users();
				user.setAddress(rs.getString("address"));
				user.setCard(rs.getString("card"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setRealname(rs.getString("realname"));
				user.setSex(rs.getString("sex"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDaoImpl中取得用户数据失败");
			e.printStackTrace();
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeResultSet(rs);
		ConnDB.closeConnection(conn);
		return user;
	}

	public PageModel findAllUser(int offset, int pagesize,String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Connection conn1 = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		Statement stmt1 = ConnDB.getStatement(conn1);
		String sql1 = sql+" limit "+offset+" , "+pagesize;
		ResultSet rs = ConnDB.getResultSet(stmt, sql1);
		ResultSet rs1 = ConnDB.getResultSet(stmt1, sql);
		PageModel pm = new PageModel();
		List<Information> list = new  ArrayList();
		int temp = 0;
		try {
			while(rs1.next())
			{
				temp+=1;	
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			while(rs.next())
			{
				Information info = new Information();
				
				info.setId(rs.getInt("id"));
				info.setUsername(rs.getString("username"));
				info.setLocalarea(rs.getString("localarea"));
				
				info.setProperty(rs.getString("property"));
				info.setHousestyle(rs.getString("housestyle"));
				info.setLocalarea(rs.getString("localarea"));
				info.setContentstyle(rs.getString("contentstyle"));
				
				info.setArea(rs.getString("area"));
				info.setFitment(rs.getString("fitment"));
				info.setAddress(rs.getString("address"));
				info.setContentname(rs.getString("contentname"));
				
				info.setAntrum(rs.getString("antrum"));
				info.setFloornumber(rs.getString("floornumber"));
				info.setSaleprice(rs.getString("saleprice"));
				info.setBasices(rs.getString("basices"));
				
				info.setLinkman(rs.getString("linkman"));
				info.setLinkmethod(rs.getString("linkmethod"));
				info.setLogindate(rs.getString("logindate"));
				info.setUserlife(rs.getString("uselife"));
				info.setRemark(rs.getString("remark"));
				list.add(info);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("分页显示提取数据出错!");
			e.printStackTrace();
			
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeStatement(stmt1);
		ConnDB.closeResultSet(rs);
		ConnDB.closeResultSet(rs1);
		ConnDB.closeConnection(conn);
		ConnDB.closeConnection(conn1);
		pm.setTotal(temp);
		pm.setDatas(list);
		return pm;
	}

	public boolean addInformation(String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		boolean ok = false;
		try {
			stmt.executeUpdate(sql);
			ok = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("添加房屋信息失败！");
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeConnection(conn);
		}
		return ok;
	}
    //删除房屋信息
	public boolean deleteInfo(String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		boolean ok = false;
		try {
			stmt.execute(sql);
			ok = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("删除房屋信息失败！");
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeConnection(conn);
		}
		return ok;
	}
	public PageModel findUsers(int offset, int pagesize, String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Connection conn1 = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		Statement stmt1 = ConnDB.getStatement(conn1);
		String sql1 = sql+" limit "+offset+" , "+pagesize;
		ResultSet rs = ConnDB.getResultSet(stmt, sql1);
		ResultSet rs1 = ConnDB.getResultSet(stmt1, sql);
		PageModel pm = new PageModel();
		List<Users> list = new  ArrayList();
		int temp = 0;
		try {
			while(rs1.next())
			{
				temp+=1;	
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			while(rs.next())
			{	
               Users user = new Users();
               user.setAddress(rs.getString("address"));
               user.setCard(rs.getString("card"));
               user.setEmail(rs.getString("email"));
               user.setPassword(rs.getString("password"));
               user.setPhone(rs.getString("phone"));
               user.setRealname(rs.getString("realname"));
               user.setSex(rs.getString("sex"));
               user.setUid(Integer.parseInt(rs.getString("id")));
               user.setUsername(rs.getString("username"));
               list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("分页显示提取数据出错!");
			e.printStackTrace();
			
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeStatement(stmt1);
		ConnDB.closeResultSet(rs);
		ConnDB.closeResultSet(rs1);
		ConnDB.closeConnection(conn);
		ConnDB.closeConnection(conn1);
		System.out.println(list.size());
		pm.setTotal(temp);
		pm.setDatas(list);
		return pm;
	}

	public PageModel findNews(int offset, int pagesize, String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Connection conn1 = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		Statement stmt1 = ConnDB.getStatement(conn1);
		String sql1 = sql+" limit "+offset+" , "+pagesize;
		ResultSet rs = ConnDB.getResultSet(stmt, sql1);
		ResultSet rs1 = ConnDB.getResultSet(stmt1, sql);
		PageModel pm = new PageModel();
		List<News> list = new  ArrayList();
		int temp = 0;
		try {
			while(rs1.next())
			{
				temp+=1;	
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			while(rs.next())
			{	
              News news = new News();
              news.setContent(rs.getString("content"));
              news.setId(rs.getInt("id"));
              news.setNdate(rs.getString("ndate"));
              news.setTitle(rs.getString("title"));
              news.setUsername(rs.getString("username"));
              list.add(news);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("分页显示提取数据出错!");
			e.printStackTrace();
			
		}
		ConnDB.closeStatement(stmt);
		ConnDB.closeStatement(stmt1);
		ConnDB.closeResultSet(rs);
		ConnDB.closeResultSet(rs1);
		ConnDB.closeConnection(conn);
		ConnDB.closeConnection(conn1);
		pm.setTotal(temp);
		pm.setDatas(list);
		return pm;
	}

	public boolean addNews(String sql) {
		// TODO Auto-generated method stub
		Connection conn = ConnDB.getConnection();
		Statement stmt = ConnDB.getStatement(conn);
		boolean ok = false;
		try {
			stmt.executeUpdate(sql);
			ok = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("添加新闻信息失败！");
			e.printStackTrace();
		}
		finally
		{
			ConnDB.closeStatement(stmt);
			ConnDB.closeConnection(conn);
		}
		return ok;
	}
}
