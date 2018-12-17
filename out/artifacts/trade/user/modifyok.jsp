<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>房屋信息修改成功</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div align="center">
			<jsp:include page="../web/banner.jsp" />
			<div>
			<table border="1" align="center" height="400" width="820" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			  <tr valign="top">
			   <td align="left">网站首页&nbsp;—&gt;&nbsp;个人信息修改成功</td>
			  </tr>
			  <tr height="95%">
			   <td valign="top">
			    <table border="0">
			      <tr>
			       <td><h2><font color="red" size="5">修改成功</font></h2></td> 
			      </tr>
			      <tr>
			       <td><a href="../servlet/myinfo?id=<%=request.getAttribute("id") %>">返回到我的房讯</a></td>
			      </tr>
			    </table>
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