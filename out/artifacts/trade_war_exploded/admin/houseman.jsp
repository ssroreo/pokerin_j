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
													编号
												</TD>
												<TD align="center">
													区域
												</TD>
												<TD align="center">
													户型
												</TD>
												<TD align="center">
													面积((m²)
												</TD>
												<TD align="center">
													楼层
												</TD>
												<TD align="center">
													价格
												</TD>
												<TD align="center">
													位置
												</TD>
												<TD align="center">
													详细
												</TD>
												<TD align="center">
													编辑
												</TD>
												<TD align="center">
													删除
												</TD>

											</tr>
											<c:if test="${!empty pm.datas}">
												<c:forEach items="${pm.datas}" var="user">
													<tr bgcolor="#EFF3F7">
														<td align="center">
															${user.id }
														</td>
														<td align="center">
															${user.localarea }
														</td>
														<td align="center">
															${user.antrum}
														</td>
														<td align="center">
															${user.area}
														</td>
														<td align="center">
															${user.floornumber}
														</td>
														<td align="center">
															${user.saleprice}(万元)
														</td>
														<td align="center">
															${user.address}
														</td>
														<td align="center">
															<a href="../servlet/infodetail?id=${user.id }"> 
                                                                                                                                                                     ☆详细信息 ☆</a>
														</td>
														<td align="center">
															<a href="../servlet/showinfo?action=xiugai&id=${user.id }"> 
                                                                                                                                                                     ☆编辑 ☆</a>
														</td>
														<td align="center">
															<a href="../servlet/deleteinfo?action=shanchu&id=${user.id }"> 
                                                                                                                                                                     ☆删除 ☆</a>
														</td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${empty pm.datas}">
												<tr>
													<td colspan="5" align="center" bgcolor="#EFF3F7">
														没有找到相应的记录
													</td>
												</tr>
											</c:if>
										</table>
										<pg:pager url="../servlet/jump?action=chaxun" items="${pm.total}"
											export="currentPageNumber=pageNumber" maxPageItems="20"
											maxIndexPages="20">
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
				</div>
			</div>
			<div>
				<jsp:include page="../web/footer.jsp" />
			</div>
		</div>
	</body>
</html>