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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>管理员发布信息</title>
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
					     信息管理&nbsp;—&gt;&nbsp;添加新闻信息
					  </td>
					</tr>
					<tr>
					  <td>
					    <form action="../servlet/adminaddnews" method="post">
						<table border="0" cellPadding="0" cellSpacing="1" >
						   <tr bgcolor="#EFF3F7">
						       <td colspan="2"><font color="red" size="5">添加新闻信息</font></td>
						   </tr>	
						   <tr bgcolor="#EFF3F7">
						       <td>新闻标题</td>
						       <td align="left"><input type="text" name="title" size="71"></td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						       <td>新闻内容</td>
						       <td align="left">
						        <textarea rows="25" cols="70" name="content"></textarea>
						       </td>
						   </tr>	
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2">&nbsp;</td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2">&nbsp;</td>
						   </tr>
						   <tr bgcolor="#EFF3F7">
						    <td colspan="2">&nbsp;</td>
						   </tr>					 
						   <tr bgcolor="#EFF3F7">
						       <td><input type="submit" value="提交发布"></td>
						       <td><input type="reset" value="信息重置"></td>
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