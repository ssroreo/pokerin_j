package org.cs.trade.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.domain.PageModel;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class Jump extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int offset = 0;
		try {

			offset = Integer.parseInt(request.getParameter("pager.offset"));

		} catch (NumberFormatException e) {
			offset = 0;
		}
		String sql = (String) session.getAttribute("sql");
		
		if (sql == null) {
			sql = "select * from information";
		}
		System.out.println(offset);
		IUserService usermanager = new UserService();
		PageModel pm = usermanager.findAllUser(offset, 20, sql);
		request.setAttribute("pm", pm);
		String action = request.getParameter("action");
		if (action != null) {
			request.getRequestDispatcher("../admin/houseman.jsp").forward(
					request, response);
		} else {
			request.getRequestDispatcher("../web/findhouse.jsp").forward(
					request, response);
		}
	}

}
