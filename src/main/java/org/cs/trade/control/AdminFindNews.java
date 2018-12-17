package org.cs.trade.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.domain.PageModel;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("serial")
public class AdminFindNews extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int offset = 0;
		try {

			offset = Integer.parseInt(request.getParameter("pager.offset"));

		} catch (NumberFormatException e) {
			offset = 0;
		}
		String sql = "select * from news ";
		IUserService usermanager = new UserService();
		PageModel pm = usermanager.findNews(offset, 10, sql);
		request.setAttribute("pm", pm);
		request.getRequestDispatcher("../admin/infoman.jsp").forward(request, response);
	}

}
