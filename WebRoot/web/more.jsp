<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>更多信息查询</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="banner.jsp" />
			<div>
				<table border="1" align="center" height="600" width="820"
					bgcolor="#F5F4EF" bordercolor="#F7EAC7" >
					<tr valign="top">
						<td align="left">
							网站首页&nbsp;—&gt;&nbsp;更多信息
						</td>
					</tr>
					<tr height="95%" valign="top">
						<td>
							<table border="0" align="left">
								<tr>
									<td colspan="2" align="left">
										&nbsp;&nbsp;系统公告信息
									</td>
								</tr>
								<%
					                @SuppressWarnings("all")
					                List<News> news = (ArrayList) request.getAttribute("news");
					                 for (News n : news) {
					                 String title = n.getTitle();
					                 if(title.length()>20)
					                 {
					                  title = title.substring(0,19)+"...";
					                 }
				                   %>
								<tr>
									<td>
										☆
									</td>
									<td align="left">
										<a href="../servlet/detail?id=<%=n.getId() %>" target="_bank"><%=title%></a>
										(<%=n.getNdate() %>)
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
				<jsp:include page="footer.jsp" />
			</div>
		</div>
	</body>
</html>