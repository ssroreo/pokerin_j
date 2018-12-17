package org.cs.trade.control;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.domain.News;
import org.cs.trade.domain.Users;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class AdminModify extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = (String)request.getParameter("id");
		IUserService usermanager = new UserService();
		String action = request.getParameter("action");
		if(action!=null)
		{
			String sql = "select * from news where id = "+id;
			List<News> list = usermanager.findNews(sql);
			News news = null;
			for(News n:list)
			{
				news = n;
			}
			request.setAttribute("news", news);
			request.getRequestDispatcher("../admin/modifyNews.jsp").forward(request, response);
		}
		else
		{
		String sql = "select * from users where id = "+id;
		Users user = usermanager.findUser(sql);
		request.setAttribute("user", user);
		request.getRequestDispatcher("../admin/modifyuser.jsp").forward(request, response);
		}
		}

}
