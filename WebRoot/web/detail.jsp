<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="org.cs.trade.domain.Information" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>������ϸ��Ϣ</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="banner.jsp" />
			<div>
			<%
			 Information info = (Information)request.getAttribute("info");
			 %>
			 <table align="center" height="500" width="820" border="1" bgcolor="#F5F4EF" bordercolor="#F7EAC7">
			 <tr valign="top">
			  <td align="left">
							��վ��ҳ&nbsp;��&gt;&nbsp;������Ϣ��ѯ
			  </td>
			 </tr>
			 <tr>
			  <td>
			   <table  align="center" height="500" width="800" border="0" cellPadding="0" cellSpacing="1" bgcolor="#6386d6">
			  <tr bgcolor="#EFF3F7">
			   <td colspan="6"><h2 align="center"><font color="red">������ϸ��Ϣ</font></h2></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td align="left" width="10%">���ݵ�ַ:</td><td align="left" width="20%"><%=info.getAddress() %></td>
			   <td align="left" width="10%">��ͥ����:</td><td align="left" width="20%"><%=info.getAntrum()%></td>
			   <td align="left" width="10%">�������:</td><td align="left" width="20%"><%=info.getArea()%></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td align="left" width="10%">������ʩ:</td><td align="left" width="20%"><%=info.getBasices()%></td>
			   <td align="left" width="10%">С������:</td><td align="left" width="20%"><%=info.getContentname()%></td>
			   <td align="left" width="10%">��������:</td><td align="left" width="20%"><%=info.getContentstyle()%></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td align="left" width="10%">װ�޳̶�:</td><td align="left" width="20%"><%=info.getFitment()%></td>
			   <td align="left" width="10%">����¥��:</td><td align="left" width="20%"><%=info.getFloornumber()%></td>
			   <td align="left" width="10%">��������:</td><td align="left" width="20%"><%=info.getHousestyle()%></td>
			  </tr >
			  <tr bgcolor="#EFF3F7">
			  <td align="left" width="10%">��&nbsp;&nbsp;��:</td><td align="left" width="20%"><%=info.getUserlife()%></td>
			   <td align="left" width="10%">���ݼ۸�:</td><td align="left" width="20%"><%=info.getSaleprice()%></td>
			   <td align="left" width="10%">������&nbsp;:</td><td align="left" width="20%"><%=info.getLocalarea()%></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td align="left" width="10%">������Ȩ:</td><td align="left" width="20%"><%=info.getProperty()%></td>
			   <td align="left" width="10%">��������:</td><td align="left" width="20%"><%=info.getLogindate()%></td>
			   <td align="left" width="10%">��Ϣ˵��:</td><td align="left" width="20%"><%=info.getRemark()%></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td align="left" width="10%">��ϵ��&nbsp;:</td><td align="left" width="20%"><%=info.getLinkman()%></td>
			   <td align="left" width="10%">��ϵ��ʽ:</td><td align="left" width="20%"><%=info.getLinkmethod()%></td>
			   <td align="left" width="10%">������&nbsp;:</td><td align="left" width="20%"><%=info.getUsername()%></td>
			  </tr>
			  <tr bgcolor="#EFF3F7">
			   <td colspan="6">&nbsp;</td>   
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