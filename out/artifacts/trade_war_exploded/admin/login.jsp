<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>����Ա��½</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div align="center">
			<script language="javascript">
<!--
function CheckForm()
{
if (document.login.username.value.length == 0) {
alert("�����������û���!");
document.login.username.focus();
return false;
}
if(document.login.password.value.length == 0)
{
alert("��������������!");
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
			   <td align="left">��վ��ҳ&nbsp;��&gt;&nbsp;����Ա��½</td>
			  </tr>
			  <tr height="80%">
			   <td valign="middle">
			    <form action="../servlet/adminlogin" method="post" name="login" onsubmit="return CheckForm();">
			      <table> 
			      <tr>
			        <td colspan="2"><font color="red" size="5">����Ա��½</font></td>
			       </tr>
			       <tr>
			        <td>�û���</td>
			        <td><input type="text" name="username" size="13"></td>
			       </tr>
			        <tr>
			        <td>��&nbsp;��</td>
			        <td><input type="password" name="password" size="13"></td>
			       </tr>
			        <tr>
			        <td><input type="submit" value="��½"></td>
			        <td align="right"><input type="reset" name="���� "></td>
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