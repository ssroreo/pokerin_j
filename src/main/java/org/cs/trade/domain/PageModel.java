package org.cs.trade.domain;

import java.util.List;
@SuppressWarnings("all")
public class PageModel {
	/**
	 * �ܼ�¼��
	 */
	private int total;
	/**
	 * ��ǰҳ�ļ�¼��
	 */
	
	private List<Information> datas;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List getDatas() {
		return datas;
	}

	public void setDatas(List datas) {
		this.datas = datas;
	}

}
