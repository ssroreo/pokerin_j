<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="org.cs.trade.domain.Users" %>
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
<title>����Ա�޸��û���Ϣ</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <%
   Users user = (Users)request.getAttribute("user");
  %>
 <div align="center">
<jsp:include page="../web/banner.jsp" />
			<div>
			 <table align="center" height="500" width="820" border="1" bgcolor="#F5F4EF" bordercolor="#F7EAC7" >
			  		  <tr valign="top">
			   <td align="left">��վ��ҳ&nbsp;��&gt;&nbsp;����Ա�޸��û���Ϣ</td>
			  </tr>
			  <tr height="95%">
			   <td>
			   <form action="../servlet/saveuser" method="post">
			     <table border="0">
			      <tr>
			       <td>
			     <table >
			       <tr>
			        <td colspan="3"><h2><font color="red">����Ա�޸��û���Ϣ</font></h2><hr></td>
			       </tr>
			        <tr>
			        <td align="left">��&nbsp;��
			        </td>
			       
			        <td align="left"><input type="password" name="password" size="21">
			        <input type="hidden" name="id" value="<%=user.getUid() %>"/>
			        </td>
			        <td align="left">˵��:�û���¼ʱ������<font color="red">***</font>(����)</td>
			       </tr>
			       <tr>
			        <td align="left">ȷ������</td>
			        <td align="left"><input type="password" name="repassword" size="21"></td>
			        <td align="left">˵��:�����ȷ���������һ��<font color="red">***</font>(����)</td>
			       </tr>
			        <tr>
			        <td align="left">��������</td>
			        <td align="left"><input type="text" name="realname" size="20" value="<%=user.getRealname()%>"></td>
			        <td align="left">˵��:��ʵ����������ϵ</td>
			       </tr>
			        <tr>
			        <td align="left">�Ա�</td>
			        <td align="left">
			          <select name="sex">
			            <option value="��" selected="selected">&nbsp;��&nbsp;</option>
			            <option value="Ů">&nbsp;Ů&nbsp;</option>
			          </select>
			        </td>
			        <td align="left">˵��:�û����Ա�</td>
			       </tr>
			        <tr>
			        <td align="left">����</td>
			        <td align="left"><input type="text" name="address" size="20" value="<%=user.getAddress()%>"></td>
			        <td align="left">˵��:�û����ھ�ס�ĵط�</td>
			       </tr>
			       <tr>
			        <td align="left">�绰</td>
			        <td align="left"><input type="text" name="phone" size="20" value="<%=user.getPhone()%>"></td>
			        <td align="left">˵��:�����û�֮����ϵ�ĵ绰<font color="red">***</font>(����)</td>
			       </tr>
			        <tr>
			        <td align="left">E-Mail</td>
			        <td align="left"><input type="text" name="email" size="20" value="<%=user.getEmail()%>"></td>
			        <td align="left">˵��:�����ṩ�����ǿ�ݵķ�ʽ��̸</td>
			       </tr>
			       <tr>
			        <td align="left">���п���</td>
			        <td align="left"><input type="text" name="card" size="20" value="<%=user.getCard()%>"></td>
			        <td align="left">˵��:�û��ڷ��������еĽ��׷�ʽ<font color="red">***</font>(����)</td>
			       </tr>
			       <tr>
			         <td align="left" colspan="2"><input type="submit" value="�ύ"></td>
			         <td align="left"><input type="reset" value="����"></td>
			       </tr>
			     </table>
			      </td>
			      </tr>
			     </table>
			   </form>
			   <font color="red">ע��:</font>����������д���ϵ�ע����Ϣ�����Ҽ�ס�������룬���������п��š�
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