<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>注册成功</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div align="center">
			<jsp:include page="banner.jsp" />
			<div>
			<table border="1" align="center" height="400" width="820" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			  <tr valign="top">
			   <td align="left">网站首页&nbsp;—&gt;&nbsp;注册成功</td>
			  </tr>
			  <tr height="95%">
			   <td valign="top">
			    <table border="0">
			      <tr>
			       <td><h2><font color="red">注册成功</font></h2></td> 
			      </tr>
			      <tr>
			         <td>提示:您的<font color="red"><%=request.getAttribute("msg") %></font>
			       </td>
			      </tr>
			        <tr>
			         <td>请牢牢记住您的用户名和密码！</td>
			      </tr>
			      <tr>
			       <td><a href="../servlet/shownews">返回到主页面</a></td>
			      </tr>
			    </table>
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