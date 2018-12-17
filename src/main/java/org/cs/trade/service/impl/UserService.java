package org.cs.trade.service.impl;

import java.util.List;

import org.cs.trade.dao.IUserDAO;
import org.cs.trade.dao.impl.UserDaoImpl;
import org.cs.trade.domain.Information;
import org.cs.trade.domain.News;
import org.cs.trade.domain.PageModel;
import org.cs.trade.domain.Users;
import org.cs.trade.service.IUserService;

public class UserService implements IUserService {
	IUserDAO userDao = new UserDaoImpl();
	public List<News> findNews(String sql) {
		// TODO Auto-generated method stub
		return userDao.findNews(sql);
	}
	public List<Information> findInformation(String sql) {
		// TODO Auto-generated method stub
		return userDao.findInformation(sql);
	}
	public boolean isok(String sql) {
		// TODO Auto-generated method stub
		return userDao.isok(sql);
	}
	public boolean isexist(String sql) {
		// TODO Auto-generated method stub
		return userDao.isexist(sql);
	}
	public boolean modifyuser(String sql) {
		// TODO Auto-generated method stub
		return userDao.modifyuser(sql);
	}
	public Users findUser(String sql) {
		// TODO Auto-generated method stub
		return userDao.findUser(sql);
	}
	public PageModel findAllUser(int offset, int pagesize, String sql) {
		// TODO Auto-generated method stub
		return userDao.findAllUser(offset, pagesize, sql);
	}
	public boolean addInformation(String sql) {
		// TODO Auto-generated method stub
		return userDao.addInformation(sql);
	}
	public boolean deleteInfo(String sql) {
		// TODO Auto-generated method stub
		return userDao.deleteInfo(sql);
	}
	public PageModel findUsers(int offset, int pagesize, String sql) {
		// TODO Auto-generated method stub
		return userDao.findUsers(offset, pagesize, sql);
	}
	public PageModel findNews(int offset, int pagesize, String sql) {
		// TODO Auto-generated method stub
		return userDao.findNews(offset, pagesize, sql);
	}
	public boolean addNews(String sql) {
		// TODO Auto-generated method stub
		return userDao.addNews(sql);
	}

}
