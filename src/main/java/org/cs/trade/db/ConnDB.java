package org.cs.trade.db;

import java.sql.*;

/**
 * �������ݿ����ӵ���
 * 
 */
public class ConnDB {

	// ����������
	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/tradesystem?serverTimezone=UTC";
	public static final String USER = "root";
	public static final String PASSWORD = "123456";

	// ȡ�����ݿ����ӣ�
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(DRIVER);
			System.out.println("���ݿ���������ɹ�!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("���ݿ��������ʧ��!");
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("���ݿ����ӳɹ�!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("���ݿ�����ʧ��!");
			e.printStackTrace();
		}
		return conn;

	}
	//��ȡStatement����
	public static Statement getStatement(Connection conn)
	{
		Statement stmt = null;
		try {
		 stmt = conn.createStatement();
		 System.out.println("��ȡStatement����ɹ�!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("��ȡStatement����ʧ��!");
			e.printStackTrace();
		}
		return stmt;
		
	}
	//��ȡResultSet����
	public static ResultSet getResultSet(Statement stmt,String sql)
	{
		ResultSet rs = null;
		
		try {
			rs = stmt.executeQuery(sql);
			System.out.println("��ȡResultSet����ɹ�!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("��ȡResultSet����ʧ��!");
			e.printStackTrace();
		}
		return rs;	
	}
	//�ر�ResultSet
	public static void closeResultSet(ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
				System.out.println("�ر�ResultSet����ɹ�!");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("�ر�ResultSet����ʧ��!");
				e.printStackTrace();
			}
			rs = null;
		}
	}
	//�ر�Statement
	public static void closeStatement(Statement stmt)
	{
		if(stmt != null)
		{
			try {
				stmt.close();
				System.out.println("�ر�Statement����ɹ�!");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("�ر�Statement����ʧ��!");
				e.printStackTrace();
			}
			stmt = null;
		}
	}
	//�ر�Connection
	public static void closeConnection(Connection conn)
	{
		if(conn != null)
		{
			try {
				conn.close();
				System.out.println("�ر�Connection����ɹ�!");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("�ر�Connection����ʧ��!");
				e.printStackTrace();
			}
			conn = null;
		}
	}
}
