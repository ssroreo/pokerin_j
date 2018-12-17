package org.cs.trade.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class AdminLogin extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		IUserService usermanager = new UserService();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sql = "select * from admin where username=" + "'" + username
	    + "' and password = " + "'" + password + "'";
		if(usermanager.isexist(sql))
		{
			session.setAttribute("admin", username);
			request.getRequestDispatcher("../admin/admin.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "登陆失败:该用户不存在！");
			request.getRequestDispatcher("../web/loginerror.jsp").forward(request, response);

		}
	}

}
