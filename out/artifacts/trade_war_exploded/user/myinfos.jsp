<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>我的房屋信息</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="../web/banner.jsp" />
			<div>
				<table border="1" align="center" height="600" width="820"
					bgcolor="#F5F4EF" bordercolor="#F7EAC7" >
					<tr valign="top">
						<td align="left">
							网站首页&nbsp;—&gt;&nbsp;我的房屋信息
						</td>
					</tr>
					<tr height="95%" valign="top">
						<td>
							<table  align="left" width="100%" border="0" cellPadding="0" cellSpacing="1" bgcolor="#6386d6">
								<tr bgcolor="#EFF3F7">
									<td colspan="8" align="left">
										&nbsp;&nbsp;我的房屋信息
									</td>
								</tr>
								<tr bgcolor="#EFF3F7">
								     <td>
										☆
									</td>
									<td>
										编号
									</td>
									<td>
										类型
									</td>
									<td>
										性质
									</td>
									<td>
										价格
									</td>
									<td>
										详细
									</td>
									<td>
										修改
									</td>
									<td>
										删除
									</td>
								</tr>
								<%
					                @SuppressWarnings("all")
					                List<Information> infos = (ArrayList) request.getAttribute("infos");
					                 for (Information n : infos) {
				                   %>
								<tr bgcolor="#EFF3F7">
									<td>
										☆
									</td>
									<td align="left">
										<%=n.getId()%>
									</td>
									<td align="left">
										<%=n.getContentstyle()%>
									</td>
									<td align="left">
										<%=n.getHousestyle()%>
									</td>
									<td align="left">
										<%=n.getSaleprice()%>
									</td>
									<td align="left">
										<a href="../servlet/infodetail?id=<%=n.getId() %>" target="_bank"><font color="blue">详细情况</font></a>
									</td>
									<td>
									 <a href="../servlet/showinfo?id=<%=n.getId() %>" target="_bank"><font color="blue">修改</font></a>
									</td>
									<td>
									 <a href="../servlet/deleteinfo?id=<%=n.getId() %>"><font color="blue">删除</font></a>
									</td>
								</tr>
								<%
					                    }
				                   %>
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