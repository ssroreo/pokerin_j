package org.cs.trade.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.domain.Users;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class FindUser extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		if(username==null)
		{
			 response.sendRedirect("../servlet/shownews");
			 return;
		}
		IUserService usermanager = new UserService();
		String sql = "select * from users where username = "+"'"+username+"'";
		Users user = usermanager.findUser(sql);
		request.setAttribute("user", user);
		request.getRequestDispatcher("../user/modifyuser.jsp").forward(request, response);
	
	}

}
