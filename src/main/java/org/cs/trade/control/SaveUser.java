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
public class SaveUser extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		String id = (String)request.getAttribute("id");
		String password = request.getParameter("password").trim();
		String repassword = request.getParameter("repassword").trim();
		String card = request.getParameter("card").trim();
		String sql = "update users set "+
		"password="+"'"+password+"',realname = "+"'"+request.getParameter("realname")+"'," +
		"sex = "+"'"+request.getParameter("sex")+"', address = "+"'"+request.getParameter("address")+"',"+
		"phone = '"+request.getParameter("phone")+"', email = "+"'"+request.getParameter("email")+"', card = "+
		"'"+card+"' where id = "+id;
		System.out.println(sql);
		if(password.equals(""))
		{
			request.setAttribute("msg", "����Ϊ�գ�");
			request.getRequestDispatcher("../admin/modifyerror.jsp").forward(request, response);
			return;
		}
		
		if (!password.equals(repassword)) {
			request.setAttribute("msg", "�������벻һ��");
			request.getRequestDispatcher("../admin/modifyerror.jsp").forward(request, response);
			return;
		}
		if (card.equals("")) {
			request.setAttribute("msg", "���п���Ϊ�գ�");
			request.getRequestDispatcher("../admin/modifyerror.jsp").forward(request, response);
			return;
		}
		if(usermanager.modifyuser(sql))
		{ 
			request.getRequestDispatcher("../admin/modifyok.jsp").forward(request, response);
		}
	
		
	}

}
