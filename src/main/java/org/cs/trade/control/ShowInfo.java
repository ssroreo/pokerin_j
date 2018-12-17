package org.cs.trade.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.domain.Information;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class ShowInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		IUserService usermanager = new UserService();
		String sql = "select * from information where id = " + id;
		List<Information> infolist = usermanager.findInformation(sql);
		Information info = infolist.get(0);
		request.setAttribute("info", info);
		String action = request.getParameter("action");
		if (action != null) {
			request.getRequestDispatcher("../admin/modifyinfo.jsp").forward(
					request, response);
		} else {
			request.getRequestDispatcher("../user/modifyinfo.jsp").forward(
					request, response);
		}
	}

}
