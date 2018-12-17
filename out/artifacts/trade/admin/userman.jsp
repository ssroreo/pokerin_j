<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
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
		<SCRIPT language="JavaScript">
	today = new Date();
	var tdate, tdate1, tday, x;
	var x = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
	tdate = (today.getYear()) + "年" + (today.getMonth() + 1) + "月"
			+ today.getDate() + "日" + "    " + x[today.getDay()];
	tdate1 = (today.getYear()) + "-" + (today.getMonth() + 1) + "-"
			+ today.getDate();
	jran = today.getTime();
	function rnd() {
		ia = 9301;
		ic = 49297;
		im = 233280;
		jran = (jran * ia + ic) % im;
		return jran / (im * 1.0);
	};
	function rand(number) {
		return Math.ceil(rnd() * number);
	};
</SCRIPT>
		<div align="center">

			<jsp:include page="../web/banner.jsp" />
			<div align="center"
				style="margin-top: 0px; width: 820px; height: 500px;">
				<jsp:include page="../admin/navigat.jsp" />
				<div
					style="width: 665px; height: 500px; background-color:#F5F4EF; float: right; margin-left: 5px;">
                      <table width="100%" border="0" cellPadding="0" cellSpacing="1"
											bgcolor="#6386d6">
											<tr bgcolor="#F65327">
												<TD align="center">
													编号
												</TD>
												<TD align="center">
													用户名
												</TD>
												<TD align="center">
													密码
												</TD>
												<TD align="center">
													真实姓名
												</TD>
												<TD align="center">
													性别
												</TD>
												<TD align="center">
													地址
												</TD>
												<TD align="center">
													电话
												</TD>
												<TD align="center">
													E-Mail
												</TD>
												<TD align="center">
													银行卡号
												</TD>
												<TD align="center">
													修改
												</TD>
												<TD align="center">
													删除
												</TD>

											</tr>
											<c:if test="${!empty pm.datas}">
												<c:forEach items="${pm.datas}" var="user">
													<tr bgcolor="#EFF3F7">
														<td align="center">
															${user.uid }
														</td>
														<td align="center">
															${user.username}
														</td>
														<td align="center">
															${user.password}
														</td>
														<td align="center">
															${user.realname}
														</td>
														<td align="center">
															${user.sex}
														</td>
														<td align="center">
															${user.address}
														</td>
														<td align="center">
															${user.phone}
														</td>
														<td align="center">
															${user.email}
														</td>
														<td align="center">
															${user.card}
														</td>
														<td align="center">
															<a href="../servlet/adminmodify?id=${user.uid }">修改</a>
														</td>
														<td align="center">
															<a href="../servlet/deleteuser?id=${user.uid }">删除</a>
														</td>
														
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${empty pm.datas}">
												<tr>
													<td colspan="11" align="center" bgcolor="#EFF3F7">
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
				</div>
			</div>
			<div>
				<jsp:include page="../web/footer.jsp" />
			</div>
		</div>
	</body>
</html>