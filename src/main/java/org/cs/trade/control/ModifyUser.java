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
public class ModifyUser extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		IUserService usermanager = new UserService();
		String username = (String)session.getAttribute("username");
		String password = request.getParameter("password").trim();
		String repassword = request.getParameter("repassword").trim();
		String card = request.getParameter("card").trim();
		String sql = "update users set "+
		"password="+"'"+password+"',realname = "+"'"+request.getParameter("realname")+"'," +
		"sex = "+"'"+request.getParameter("sex")+"', address = "+"'"+request.getParameter("address")+"',"+
		"phone = '"+request.getParameter("phone")+"', email = "+"'"+request.getParameter("email")+"', card = "+
		"'"+card+"' where username = "+"'"+username+"'";
		System.out.println(sql);
		if(password.equals(""))
		{
			request.setAttribute("msg", "密码为空！");
			request.getRequestDispatcher("../user/modifyerror.jsp").forward(request, response);
			return;
		}
		
		if (!password.equals(repassword)) {
			request.setAttribute("msg", "两次密码不一致");
			request.getRequestDispatcher("../user/modifyerror.jsp").forward(request, response);
			return;
		}
		if (card.equals("")) {
			request.setAttribute("msg", "银行卡号为空！");
			request.getRequestDispatcher("../user/modifyerror.jsp").forward(request, response);
			return;
		}
		if(usermanager.modifyuser(sql))
		{ 
			request.setAttribute("msg", "你的用户名:"+username+" 密码:"+password);
			request.getRequestDispatcher("../user/modifyok.jsp").forward(request, response);
		}
	}

}
