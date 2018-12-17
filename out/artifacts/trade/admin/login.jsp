<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>管理员登陆</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div align="center">
			<script language="javascript">
<!--
function CheckForm()
{
if (document.login.username.value.length == 0) {
alert("请输入您的用户名!");
document.login.username.focus();
return false;
}
if(document.login.password.value.length == 0)
{
alert("请输入您的密码!");
document.login.password.focus();
return false;
}

return true;
}
-->
</script>
			<jsp:include page="../web/banner.jsp" />
			<div>
			<table border="1" align="center" height="400" width="820" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			  <tr valign="top">
			   <td align="left">网站首页&nbsp;—&gt;&nbsp;管理员登陆</td>
			  </tr>
			  <tr height="80%">
			   <td valign="middle">
			    <form action="../servlet/adminlogin" method="post" name="login" onsubmit="return CheckForm();">
			      <table> 
			      <tr>
			        <td colspan="2"><font color="red" size="5">管理员登陆</font></td>
			       </tr>
			       <tr>
			        <td>用户名</td>
			        <td><input type="text" name="username" size="13"></td>
			       </tr>
			        <tr>
			        <td>密&nbsp;码</td>
			        <td><input type="password" name="password" size="13"></td>
			       </tr>
			        <tr>
			        <td><input type="submit" value="登陆"></td>
			        <td align="right"><input type="reset" name="重置 "></td>
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