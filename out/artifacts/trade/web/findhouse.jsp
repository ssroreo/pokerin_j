<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>������Ϣ��ѯ</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="banner.jsp" />
			<div>
				<table border="1" align="center" height="600" width="820"
					bgcolor="#F5F4EF" bordercolor="#F7EAC7">
					<tr valign="top">
						<td align="left">
							��վ��ҳ&nbsp;��&gt;&nbsp;������Ϣ��ѯ
						</td>
					</tr>
					<tr height="95%" valign="top">
						<td>
							<table border="1" width="100%" style="BORDER-COLLAPSE: collapse">
								<tr>
									<td>
										<FORM style="MARGIN: 5px" name="main"
											onsubmit="return checkinput()" action="../servlet/find"
											method="post">
											<DIV align="center">
												<CENTER>
													<TABLE style="BORDER-COLLAPSE: collapse"
														borderColor="#FFFFFF" cellSpacing="0" cellPadding="0"
														width="93%" border="1">
														<TBODY align="left">
															<TR align="left">
																<TD align="left" width="17%" height="20" align="left">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> ��Ϣ</SPAN>���
																	<SPAN lang="zh-cn">��</SPAN>
																</TD>
																<TD width="33%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<SELECT size="1" name="contentstyle">
																		<OPTION value="��������" selected="selected">
																			��������
																		</OPTION>
																		<OPTION value="���ݺ���">
																			���ݺ���
																		</OPTION>
																		<OPTION value="���ݳ���">
																			���ݳ���
																		</OPTION>
																		<OPTION value="������">
																			������
																		</OPTION>
																		<OPTION value="���ݳ���">
																			���ݳ���
																		</OPTION>
																	</SELECT>
																</TD>
																<TD align="left" width="16%">
																	<IMG src="../images/point.gif">
																	&nbsp;����ѡ��
																</TD>
																<TD width="34%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<SELECT size="1" name="antrum">
																		<OPTION value="ȫ��" selected="selected">
																			ȫ��
																		</OPTION>
																		<OPTION value="����">
																			����
																		</OPTION>
																		<OPTION value="һ��һ��">
																			һ��һ��
																		</OPTION>
																		<OPTION value="����һ��">
																			����һ��
																		</OPTION>
																		<OPTION value="��������">
																			��������
																		</OPTION>
																		<OPTION value="����һ��">
																			����һ��
																		</OPTION>
																		<OPTION value="��������">
																			��������
																		</OPTION>
																		<OPTION value="����һ��">
																			����һ��
																		</OPTION>
																		<OPTION value="��������">
																			��������
																		</OPTION>
																		<OPTION value="��������">
																			��������
																		</OPTION>
																		<OPTION value="��������">
																			��������
																		</OPTION>
																	</SELECT>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif" border="0"> </SPAN>���
																	<SPAN lang="zh-cn">��Χ��</SPAN>
																</TD>
																<TD width="33%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="area1">
																	<SPAN lang="zh-cn"> </SPAN>��
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="999" name="area2">
																	<SPAN lang="zh-cn">ƽ����</SPAN>
																</TD>
																<TD align="left" width="16%">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> </SPAN>�۸�
																	<SPAN lang="zh-cn">��Χ��</SPAN>
																</TD>
																<TD width="34%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="saleprice1">
																	<SPAN lang="zh-cn"> </SPAN>��
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="9999" name="saleprice2">
																	<SELECT style="FONT-SIZE: 12px; COLOR: #ff0000"
																		size="1" name="D4">
																		<OPTION value="��Ԫ" selected="selected">
																			��Ԫ
																		</OPTION>
																	</SELECT>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> ¥��ѡ��</SPAN>
																</TD>
																<TD width="33%" height="20" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="floornumber1">
																	<SPAN lang="zh-cn"> </SPAN>��
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="100" name="floornumber2">
																	<SPAN lang="zh-cn">¥</SPAN>
																</TD>
																<TD align="left" width="16%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif" border="0"> ����ѡ��</SPAN>
																</TD>
																<TD width="34%" height="20" align="left">
																	&nbsp;
																	<SPAN lang="zh-cn"><SELECT size="1"
																			name="localarea">
																			<OPTION value="ȫ��" selected="selected">
																				ȫ��
																			</OPTION>
																			<OPTION value="˳����">
																				˳����
																			</OPTION>
																			<OPTION value="������">
																				������
																			</OPTION>
																			<OPTION value="��ƺ��">
																				��ƺ��
																			</OPTION>
																		</SELECT> </SPAN>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> ����</SPAN>λ��
																	<SPAN lang="zh-cn">��</SPAN>
																</TD>
																<TD width="33%" height="20" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="14" name="address">
																	<SPAN lang="zh-cn">��·����</SPAN>
																</TD>
																<TD align="left" width="50%" colSpan="2" height="20">
																	<P align="center">
																		<INPUT type="submit" value="������Ϣ��ѯ">
																		<SPAN lang="zh-cn">&nbsp; <INPUT type="reset"
																				value="������"> </SPAN>
																	</P>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="100%" colSpan="4" height="2">
																	<P align="center"></P>
																</TD>
															</TR>
														</TBODY>
													</TABLE>
												</CENTER>
											</DIV>
										</FORM>
									</td>
								</tr>
								<tr>
									<td>
										<table width="778" border="0" cellPadding="0" cellSpacing="1"
											bgcolor="#6386d6">
											<tr bgcolor="#EFF3F7">
												<TD align="center">
													���
												</TD>
												<TD align="center">
													����
												</TD>
												<TD align="center">
													����
												</TD>
												<TD align="center">
													���((m�0�5)
												</TD>
												<TD align="center">
													¥��
												</TD>
												<TD align="center">
													�۸�
												</TD>
												<TD align="center">
													λ��
												</TD>
												<TD align="center">
													��ϸ
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
															${user.saleprice}(��Ԫ)
														</td>
														<td align="center">
															${user.address}
														</td>
														<td align="center">
															<a href="../servlet/infodetail?id=${user.id }" target="_bank"> 
                                                                                                                                                                     ����ϸ��Ϣ ��</a>
														</td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${empty pm.datas}">
												<tr>
													<td colspan="5" align="center" bgcolor="#EFF3F7">
														û���ҵ���Ӧ�ļ�¼
													</td>
												</tr>
											</c:if>
										</table>
										<pg:pager url="../servlet/jump" items="${pm.total}"
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
									</td>
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