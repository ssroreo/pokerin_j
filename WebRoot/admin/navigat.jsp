<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
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
		<title>Insert title here</title>
	</head>
	<body>
		<div
			style="width: 150px; height: 500px; background-color: #F5F4EF; float: left;">
			<table>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						    <a href="../admin/admin.jsp"><font size="5" >��̨��ҳ</font></a>
					</td>
				</tr>
				<tr>
					<td>
						
							<a href="../servlet/findusers"><font size="5" >�û�����</font></a>
						
					</td>
				</tr>
				<tr>

					<td>
						
							<a href="../servlet/jump?action=chaxun"><font size="5" >��Ѷ����</font></a>
						
					</td>

				</tr>
				<tr>
					<td>
						
							<a href="../servlet/adminfindnews"><font size="5" >��Ϣ����</font></a>
						
					</td>
				</tr>
				<tr>

					<td>
						
							<a href="../admin/logout.jsp"><font size="5">��ȫ�˳�</font></a>
						
					</td>
				</tr>
			</table>
		</div>
		
	</body>
</html>