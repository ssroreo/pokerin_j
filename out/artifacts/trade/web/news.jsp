<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="org.cs.trade.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>新闻展示</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="banner.jsp" />
			<%News news = (News)request.getAttribute("news"); %>
			<div>
			 <table border="1" align="center" width="825" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			  <tr height="40" valign="middle">
			    <td colspan="2" align="center">
			     <h2 align="center"><font color="red"><%=news.getTitle() %></font></h2>
			    </td>
			  </tr>
			  <tr height="30">
			    <td colspan="1">
			     系统管理员 ：<%=news.getUsername() %>
			    </td>
			     <td colspan="1">
			     信息发布时间：<%=news.getNdate() %>
			    </td>
			  </tr>
			   <tr height="500" valign="top">
			    <td colspan="2" align="left">
			    <%=news.getContent() %>
			    </td>
			  </tr>
			 </table>
			</div>
			<div>
				<jsp:include page="footer.jsp" />
			</div>
		</div>
	</body>
</html>