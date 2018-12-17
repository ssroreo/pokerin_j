package org.cs.trade.control;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.domain.Information;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class MyInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		IUserService usermanager = new UserService();
		String username = (String)session.getAttribute("username");
		if(username==null)
		{
			 response.sendRedirect("../servlet/shownews");
			 return;
		}
		String sql = "select * from information where username='"+username+"'";
		List<Information> infos = usermanager.findInformation(sql);
		request.setAttribute("infos", infos);
		request.getRequestDispatcher("../user/myinfos.jsp").forward(request, response);

	}

}
