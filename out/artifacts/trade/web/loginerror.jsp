<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��½ʧ��</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div align="center">
			<jsp:include page="banner.jsp" />
			<div>
			<table border="1" align="center" height="600" width="820" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			  <tr valign="top">
			   <td align="left">��վ��ҳ&nbsp;��&gt;&nbsp;��½ʧ��</td>
			  </tr>
			  <tr height="95%">
			   <td valign="top">
			    <table border="0">
			      <tr>
			       <td><h2><font color="red">��½ʧ��</font></h2></td> 
			      </tr>
			      <tr>
			         <td>������ʾ:<font color="red"><%=request.getAttribute("msg") %></font>
			       </td>
			      </tr>
			        <tr>
			         <td><a href="../servlet/shownews">���ص���ҳ��</a></td>
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