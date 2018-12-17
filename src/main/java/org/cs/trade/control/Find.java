package org.cs.trade.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.domain.*;
import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;

@SuppressWarnings("all")
public class Find extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String contentstyle = request.getParameter("contentstyle");
		String antrum = request.getParameter("antrum");
		String str1 = "";
		HttpSession session = request.getSession();
		if(!antrum.equals("全部"))
		{
			str1 = "and antrum = '"+antrum+"' ";
		}
		String area1 = request.getParameter("area1");
		String area2 = request.getParameter("area2");
		int ar1 = Integer.parseInt(area1);
		int ar2 = Integer.parseInt(area2);
		
		String saleprice1 = request.getParameter("saleprice1");
		String saleprice2 = request.getParameter("saleprice2");
		
		int sale1 = Integer.parseInt(saleprice1);
		int sale2 = Integer.parseInt(saleprice2);
		String floornumber1 = request.getParameter("floornumber1");
		String floornumber2 = request.getParameter("floornumber2");
		
		int floor1 = Integer.parseInt(floornumber1);
		int floor2 = Integer.parseInt(floornumber2);
		
		String localarea = request.getParameter("localarea");
		String address = request.getParameter("address");
		String str2 = "";
		if(!address.equals(""))
		{
			str2 = " and address like '%"+address+"%' ";
		}
		String str3 = "";
		if(!localarea.equals("全市"))
		{
			str3 = " and localarea = '"+localarea+"' ";
		}
		String sql = "select * from information where contentstyle = '" +contentstyle+"' "
				     +str3+str1+" and " +
				     "area >= " +ar1+
				     " and area <="+ar2+" and saleprice >="+sale1+" and saleprice<="+sale2+" and " +
				     "floornumber>"+floor1+" and floornumber<="+floor2+str2;
		session.setAttribute("sql", sql);
		request.getRequestDispatcher("../servlet/jump").forward(request, response);
		
	}

}
