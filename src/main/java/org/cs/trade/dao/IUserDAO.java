package org.cs.trade.dao;
import java.util.List;

import org.cs.trade.domain.*;
/**
 * 处理页面展示的接口
 */
public interface IUserDAO {
	//查找News的方法
	public List<News> findNews(String sql);
	
    //查找Information的方法
	public List<Information> findInformation(String sql);
	
	//用户注册
	public boolean isok(String sql);
	
	//查询用户是否存在
	public boolean isexist(String sql);
	
	//修改用户信息
	public boolean modifyuser(String sql);
	
	//查找用户
	public Users findUser(String sql);
	
	//分页显示数据
	public PageModel findAllUser(int offset, int pagesize,String sql);
	
	//添加房讯
	public boolean addInformation(String sql);
	
	//删除房讯
	public boolean deleteInfo(String sql);
	
	//查找所有用户
	public PageModel findUsers(int offset, int pagesize,String sql);
	
	//查找所有新闻
	public PageModel findNews(int offset, int pagesize,String sql);
	
	//添加新闻信息
	public boolean addNews(String sql);
}
