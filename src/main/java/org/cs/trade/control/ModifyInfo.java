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
public class ModifyInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		HttpSession session = request.getSession();
		String id = (String)request.getParameter("id");
		String username = (String)session.getAttribute("username");
		String address = (String)request.getParameter("address");
		String antrum = (String)request.getParameter("antrum");
		String area = (String)request.getParameter("area");
		String basices = (String)request.getParameter("basices");
		
		String contentname = (String)request.getParameter("contentname");
		String contentstyle = (String)request.getParameter("contentstyle");
		String fitment = (String)request.getParameter("fitment");
		String floornumber = (String)request.getParameter("floornumber");
		
		String housestyle = (String)request.getParameter("housestyle");
		String uselife = (String)request.getParameter("uselife");
		String saleprice = (String)request.getParameter("saleprice");
		String localarea = (String)request.getParameter("localarea");
		
		String property = (String)request.getParameter("property");
		String linkman = (String)request.getParameter("linkman");
		String linkmethod = (String)request.getParameter("linkmethod");
		String remark = (String)request.getParameter("remark").trim();
		
		String sql = "update information set username = '" +
				username+"',address = '"+address+"', antrum = '"+antrum+"'," +
				"area ="+area+",basices ='"+basices+"',contentname = '"+contentname+"'" +
				",contentstyle = '"+contentstyle+"',fitment = '"+fitment+"',floornumber = " +
				""+floornumber+",housestyle = '"+housestyle+"',uselife = '"+uselife+
				"',saleprice = "+saleprice+",localarea = '"+localarea+"',property = '"
				+property+"',linkman = '"+linkman+"',linkmethod = '"+linkmethod+"',remark = '"+
				remark+"'  where id = "+ id;
		System.out.println(sql);
		String action = request.getParameter("action");
		if(action!=null)
		{
			if(usermanager.addInformation(sql))
			{
				request.getRequestDispatcher("../servlet/jump?action=chaxun").forward(request, response);
			}
		}
		else
		{
		if(usermanager.addInformation(sql))
		{
			request.setAttribute("id", id);
			request.getRequestDispatcher("../user/modifyok.jsp").forward(request, response);
		}
		}
	}

}
