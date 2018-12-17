package org.cs.trade.control;


import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cs.trade.service.IUserService;
import org.cs.trade.service.impl.UserService;
import org.cs.trade.utils.Today;

@SuppressWarnings("all")
/**
 * 用户添加房屋信息处理的Servlet
 */
public class AddInfo extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		IUserService usermanager = new UserService();
		HttpSession session = request.getSession();
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
		String logindate =Today.getDate();
		
		String sql = "insert into information(username,address,antrum,area,basices" +
				",contentname,contentstyle,fitment,floornumber,housestyle,uselife," +
				"saleprice,localarea,property,linkman,linkmethod,remark,logindate) values('" +
				username+"','"+address+"','"+antrum+"',"+area+",'"+basices+"','"+contentname+"'" +
				",'"+contentstyle+"','"+fitment+"',"+floornumber+",'"+housestyle+"','"+uselife+
				"',"+saleprice+",'"+localarea+"','"+property+"','"+linkman+"','"+linkmethod+"','"+
				remark+"','"+logindate+"')";
		if(usermanager.addInformation(sql))
		{
			request.getRequestDispatcher("../user/addok.jsp").forward(request, response);
		}
	}

	

}
