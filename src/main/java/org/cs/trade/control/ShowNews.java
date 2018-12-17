package org.cs.trade.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.domain.Information;
import org.cs.trade.domain.News;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class ShowNews extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		String sql = "select * from news order by ndate desc limit 0,7";
		List<News> news = usermanager.findNews(sql);
		request.setAttribute("news", news);
		
		String sql1 = "select * from information where contentstyle = '房屋求租' order by id desc limit 0,7";
		List<Information> info1 = usermanager.findInformation(sql1);
		request.setAttribute("info1", info1);
		
		String sql2 = "select * from information where contentstyle = '房屋合租' order by id desc limit 0,7";
		List<Information> info2 = usermanager.findInformation(sql2);
		request.setAttribute("info2", info2);
		
		String sql3 = "select * from information where contentstyle = '房屋出租' order by id desc limit 0,7";
		List<Information> info3 = usermanager.findInformation(sql3);
		request.setAttribute("info3", info3);
		
		String sql4 = "select * from information where contentstyle = '房屋求购' order by id desc limit 0,7";
		List<Information> info4 = usermanager.findInformation(sql4);
		request.setAttribute("info4", info4);
		
		String sql5 = "select * from information where contentstyle = '房屋出售' order by id desc limit 0,7";
		List<Information> info5 = usermanager.findInformation(sql5);
		request.setAttribute("info5", info5);
		
		request.getRequestDispatcher("../web/main.jsp").forward(request, response);
	}

}
