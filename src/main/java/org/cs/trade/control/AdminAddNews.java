package org.cs.trade.control;

import java.io.IOException;
import org.cs.trade.utils.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("serial")
public class AdminAddNews extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		IUserService usermanager = new UserService();
		String username = (String) session.getAttribute("admin");
		String action = request.getParameter("action");
		String title = request.getParameter("title");
		String content = request.getParameter("content").trim();
		String ndate = Today.getDate();
		if (action != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			String title1 = request.getParameter("title");
			String content1 = request.getParameter("content").trim();
			String sql1 = "update news set title = '" + title1
					+ "' , content = '" + content1 + "' where id = " + id;
		  System.out.println(sql1);
			if (usermanager.addNews(sql1)) {

				request.getRequestDispatcher("../servlet/adminfindnews")
						.forward(request, response);
			}
		} else {
			String sql = "insert into news(title,content,ndate,username) values('"
					+ title
					+ "','"
					+ content
					+ "','"
					+ ndate
					+ "','"
					+ username + "')";
			if (usermanager.addNews(sql)) {

				request.getRequestDispatcher("../servlet/adminfindnews")
						.forward(request, response);
			}

		}

	}

}
