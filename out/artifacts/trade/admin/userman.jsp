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
		<title>�ͽ���������ϵͳ��̨</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<SCRIPT language="JavaScript">
	today = new Date();
	var tdate, tdate1, tday, x;
	var x = new Array("������", "����һ", "���ڶ�", "������", "������", "������", "������");
	tdate = (today.getYear()) + "��" + (today.getMonth() + 1) + "��"
			+ today.getDate() + "��" + "    " + x[today.getDay()];
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
													���
												</TD>
												<TD align="center">
													�û���
												</TD>
												<TD align="center">
													����
												</TD>
												<TD align="center">
													��ʵ����
												</TD>
												<TD align="center">
													�Ա�
												</TD>
												<TD align="center">
													��ַ
												</TD>
												<TD align="center">
													�绰
												</TD>
												<TD align="center">
													E-Mail
												</TD>
												<TD align="center">
													���п���
												</TD>
												<TD align="center">
													�޸�
												</TD>
												<TD align="center">
													ɾ��
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
															<a href="../servlet/adminmodify?id=${user.uid }">�޸�</a>
														</td>
														<td align="center">
															<a href="../servlet/deleteuser?id=${user.uid }">ɾ��</a>
														</td>
														
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${empty pm.datas}">
												<tr>
													<td colspan="11" align="center" bgcolor="#EFF3F7">
														û���ҵ���Ӧ�ļ�¼
													</td>
												</tr>
											</c:if>
										</table>
										<pg:pager url="../servlet/findusers" items="${pm.total}"
											export="currentPageNumber=pageNumber" maxPageItems="10"
											maxIndexPages="10">
											<pg:first>
												<a href="${pageUrl}">��ҳ</a>
											</pg:first>  
                                             [��${currentPageNumber}ҳ]/[��${pm.total}����¼]
                                            <pg:prev>
												<a href="${pageUrl }">��һҳ</a>
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
												<a href="${pageUrl }">��һҳ</a>
											</pg:next>
											<pg:last>
												<a href="${pageUrl }">βҳ</a>
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