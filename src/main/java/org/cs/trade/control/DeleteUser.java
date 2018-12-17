package org.cs.trade.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class DeleteUser extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		String id = request.getParameter("id");
		String sql = "delete from users where id = '"+id+"'";
		if(usermanager.deleteInfo(sql))
		{
			response.sendRedirect("../servlet/findusers");
		}
	}

}
