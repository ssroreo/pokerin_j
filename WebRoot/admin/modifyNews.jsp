<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
 <%
  String admin = (String) session.getAttribute("admin");
  if(admin==null)
  {
    response.sendRedirect("../servlet/shownews");
  }
  
  %>
  	<%News news = (News)request.getAttribute("news"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>����Ա�޸�������Ϣ</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="../web/banner.jsp" />
			<div>
				<table align="center" height="500" width="810" border="1"
					bgcolor="#F5F4EF" bordercolor="#F7EAC7" >
					<tr height="10%">
					  <td align="left">
					     ��Ϣ����&nbsp;��&gt;&nbsp;�޸�������Ϣ
					  </td>
					</tr>
					<tr>
					  <td>
					    <form action="../servlet/adminaddnews" method="post">
						<table border="0" cellPadding="0" cellSpacing="1" >
						   <tr bgcolor="#EFF3F7">
						       <td colspan="2"><font color="red" size="5">�޸�������Ϣ</font></td>
						   </tr>	
						   <tr bgcolor="#EFF3F7">
						       <td>���ű���</td>
						       <td align="left"><input type="text" name="title" size="71" value="<%=news.getTitle() %>"></td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						       <td>��������</td>
						       <td align="left">
						        <textarea rows="25" cols="70" name="content"><%=news.getContent() %> </textarea>
						       </td>
						   </tr>	
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2">
						     <input type="hidden" name="action" value="xiugai">
						    </td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2"><input type="hidden" name="id" value="<%=news.getId() %>"></td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2">&nbsp;</td>
						   </tr>					 
						   <tr bgcolor="#EFF3F7">
						       <td><input type="submit" value="�ύ����"></td>
						       <td><input type="reset" value="��Ϣ����"></td>
						   </tr>
						   
						</table>
						</form>
					  </td>
					</tr>
				</table>
			</div>
			<div>
				<jsp:include page="../web/footer.jsp" />
			</div>
		</div>
	</body>
</html>