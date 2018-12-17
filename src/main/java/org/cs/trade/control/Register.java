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
public class Register extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		IUserService usermanager = new UserService();
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String repassword = request.getParameter("repassword").trim();
		String card = request.getParameter("card").trim();
		String check = "select * from users where username="+"'"+username+"'";
		String sql = "insert into users(username,password,realname," +
				"sex,address,phone,email,card) values("+"'"+username+"'" +
				","+"'"+password+"',"+"'"+request.getParameter("realname")+"'," +
				""+"'"+request.getParameter("sex")+"',"+"'"+request.getParameter("address")+"',"+
				"'"+request.getParameter("phone")+"',"+"'"+request.getParameter("email")+"',"+
				"'"+card+"'"+")";
		if(usermanager.isexist(check))
		{
			request.setAttribute("msg", "���û����Ѿ����ڣ�");
			request.getRequestDispatcher("../web/error.jsp").forward(request, response);

			return;
		}
		if(username.equals(""))
		{
			request.setAttribute("msg", "�û���Ϊ�գ�");
			request.getRequestDispatcher("../web/error.jsp").forward(request, response);

			return;
		}
		if(password.equals(""))
		{
			request.setAttribute("msg", "����Ϊ�գ�");
			request.getRequestDispatcher("../web/error.jsp").forward(request, response);
			return;
		}
		
		if (!password.equals(repassword)) {
			request.setAttribute("msg", "�������벻һ��");
			request.getRequestDispatcher("../web/error.jsp").forward(request, response);
			return;
		}
		if (card.equals("")) {
			request.setAttribute("msg", "���п���Ϊ�գ�");
			request.getRequestDispatcher("../web/error.jsp").forward(request, response);
			return;
		}
		if (usermanager.isok(sql)) {
			request.setAttribute("msg", "�û���:"+username+"  ����:"+password);
			request.getRequestDispatcher("../web/ok.jsp").forward(request, response);
			return;
		}

	}

}
