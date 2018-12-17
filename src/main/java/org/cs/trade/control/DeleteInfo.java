package org.cs.trade.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class DeleteInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		String id = request.getParameter("id");
		String action = request.getParameter("action");
		String sql = "delete from information where id = '" + id + "'";
		if (action != null) {
			if (usermanager.deleteInfo(sql)) {
				response.sendRedirect("../servlet/jump?action=chaxun");
			}
		} else {
			if (usermanager.deleteInfo(sql)) {
				response.sendRedirect("../servlet/myinfo");
			}
		}
	}

}
