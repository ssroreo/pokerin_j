<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<title>和江房产交易系统后台</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">

			<jsp:include page="../web/banner.jsp" />
			<div align="center"
				style="margin-top: 0px; width: 820px; height: 500px;">
				<jsp:include page="../admin/navigat.jsp" />
				<div
					style="width: 665px; height: 500px; background-color: #F5F4EF; float: right; margin-left: 5px;">
				 <table width="100%" border="0" cellPadding="0" cellSpacing="1"
											bgcolor="#6386d6">
											<tr bgcolor="#F65327">
												<TD align="center">
													&nbsp;编号&nbsp;
												</TD>
												<TD align="center">
													标题
												</TD>
												<TD align="center">
													&nbsp;发布者&nbsp;
												</TD>
												<TD align="center">
													发布时间
												</TD>
												<TD align="center">
													详细信息
												</TD>
												<TD align="center">
													&nbsp;修改&nbsp;
												</TD>
												<TD align="center">
													&nbsp;删除&nbsp;
												</TD>

											</tr>
											<c:if test="${!empty pm.datas}">
										 		<c:forEach items="${pm.datas}" var="user">
													<tr bgcolor="#EFF3F7">
														<td align="center">
															${user.id }
														</td>
														<td align="center">
															${user.title}
														</td>
														<td align="center">
															${user.username}
														</td>
														<td align="center">
															${user.ndate}
														</td>
														<td align="center">
															<a href="../servlet/adminshownews?id=${user.id }">详细信息</a>
														</td>
														<td align="center">
															<a href="../servlet/adminmodify?action=xiugai&id=${user.id }">修改</a>
														</td>
														<td align="center">
															<a href="../servlet/deletenews?id=${user.id }">删除</a>
														</td>
														
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${empty pm.datas}">
												<tr>
													<td colspan="7" align="center" bgcolor="#EFF3F7">
														没有找到相应的记录
													</td>
												</tr>
											</c:if>
										</table>
										<pg:pager url="../servlet/findusers" items="${pm.total}"
											export="currentPageNumber=pageNumber" maxPageItems="10"
											maxIndexPages="10">
											<pg:first>
												<a href="${pageUrl}">首页</a>
											</pg:first>  
                                             [第${currentPageNumber}页]/[共${pm.total}条记录]
                                            <pg:prev>
												<a href="${pageUrl }">上一页</a>
											</pg:prev>
											<pg:pages>
												<c:choose>
													<c:when test="${currentPageNumber eq pageNumber}">
														<font color="red">${pageNumber }</font>
													</c:when>
													<c:otherwise>
														<a href="${pageUrl }">${pageNumber }</a>
													</c:otherwise>
												</c:choose>
											</pg:pages>
											<pg:next>
												<a href="${pageUrl }">下一页</a>
											</pg:next>
											<pg:last>
												<a href="${pageUrl }">尾页</a>
											</pg:last>
										</pg:pager>
										&nbsp;&nbsp;<a href="../admin/addnews.jsp"><font size="2" color="blue">发布信息</font></a>
				</div>
			</div>
			<div>
				<jsp:include page="../web/footer.jsp" />
			</div>
		</div>
	</body>
</html>