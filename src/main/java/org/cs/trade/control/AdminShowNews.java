package org.cs.trade.control;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.domain.News;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("serial")
public class AdminShowNews extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		IUserService usermanager = new UserService();
		String sql = "select * from news where id = "+id;
		List<News> news = usermanager.findNews(sql);
		News n = news.get(0);
        request.setAttribute("news", n);
		
		request.getRequestDispatcher("../admin/news.jsp").forward(request, response);
		
	}

}
