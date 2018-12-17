package org.cs.trade.service;

import java.util.List;

import org.cs.trade.domain.Information;
import org.cs.trade.domain.News;
import org.cs.trade.domain.PageModel;
import org.cs.trade.domain.Users;

public interface IUserService {

	//����News�ķ���
	public List<News> findNews(String sql);
	
	  //����Information�ķ���
	public List<Information> findInformation(String sql);
	
	//�û�ע��
	public boolean isok(String sql);
	
	//��ѯ�û��Ƿ����
	public boolean isexist(String sql);
	
	//�޸��û���Ϣ
	public boolean modifyuser(String sql);
	
	//�����û�
	public Users findUser(String sql);
	
	//��ҳ��ʾ����
	public PageModel findAllUser(int offset, int pagesize,String sql);
	
	//��ӷ�Ѷ
	public boolean addInformation(String sql);
	
	//ɾ����Ѷ
	public boolean deleteInfo(String sql);
	
	//���������û�
	public PageModel findUsers(int offset, int pagesize,String sql);
	
	//������������
	public PageModel findNews(int offset, int pagesize,String sql);
	
	//���������Ϣ
	public boolean addNews(String sql);
}
