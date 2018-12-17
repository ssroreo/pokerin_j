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
		<title>更多信息查询</title>
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
							网站首页&nbsp;—&gt;&nbsp;房屋信息查询
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
																			src="../images/point.gif"> 信息</SPAN>类别
																	<SPAN lang="zh-cn">：</SPAN>
																</TD>
																<TD width="33%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<SELECT size="1" name="contentstyle">
																		<OPTION value="房屋求租" selected="selected">
																			房屋求租
																		</OPTION>
																		<OPTION value="房屋合租">
																			房屋合租
																		</OPTION>
																		<OPTION value="房屋出租">
																			房屋出租
																		</OPTION>
																		<OPTION value="房屋求购">
																			房屋求购
																		</OPTION>
																		<OPTION value="房屋出售">
																			房屋出售
																		</OPTION>
																	</SELECT>
																</TD>
																<TD align="left" width="16%">
																	<IMG src="../images/point.gif">
																	&nbsp;户型选择
																</TD>
																<TD width="34%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<SELECT size="1" name="antrum">
																		<OPTION value="全部" selected="selected">
																			全部
																		</OPTION>
																		<OPTION value="单间">
																			单间
																		</OPTION>
																		<OPTION value="一室一厅">
																			一室一厅
																		</OPTION>
																		<OPTION value="两室一厅">
																			两室一厅
																		</OPTION>
																		<OPTION value="两室两厅">
																			两室两厅
																		</OPTION>
																		<OPTION value="三室一厅">
																			三室一厅
																		</OPTION>
																		<OPTION value="三室两厅">
																			三室两厅
																		</OPTION>
																		<OPTION value="四室一厅">
																			四室一厅
																		</OPTION>
																		<OPTION value="四室两厅">
																			四室两厅
																		</OPTION>
																		<OPTION value="四室三厅">
																			四室三厅
																		</OPTION>
																		<OPTION value="其它户型">
																			其它户型
																		</OPTION>
																	</SELECT>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif" border="0"> </SPAN>面积
																	<SPAN lang="zh-cn">范围：</SPAN>
																</TD>
																<TD width="33%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="area1">
																	<SPAN lang="zh-cn"> </SPAN>至
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="999" name="area2">
																	<SPAN lang="zh-cn">平方米</SPAN>
																</TD>
																<TD align="left" width="16%">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> </SPAN>价格
																	<SPAN lang="zh-cn">范围：</SPAN>
																</TD>
																<TD width="34%" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="saleprice1">
																	<SPAN lang="zh-cn"> </SPAN>至
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="9999" name="saleprice2">
																	<SELECT style="FONT-SIZE: 12px; COLOR: #ff0000"
																		size="1" name="D4">
																		<OPTION value="万元" selected="selected">
																			万元
																		</OPTION>
																	</SELECT>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> 楼层选择：</SPAN>
																</TD>
																<TD width="33%" height="20" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="4" value="0" name="floornumber1">
																	<SPAN lang="zh-cn"> </SPAN>至
																	<SPAN lang="zh-cn"> </SPAN>
																	<INPUT size="4" value="100" name="floornumber2">
																	<SPAN lang="zh-cn">楼</SPAN>
																</TD>
																<TD align="left" width="16%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif" border="0"> 区域选择：</SPAN>
																</TD>
																<TD width="34%" height="20" align="left">
																	&nbsp;
																	<SPAN lang="zh-cn"><SELECT size="1"
																			name="localarea">
																			<OPTION value="全市" selected="selected">
																				全市
																			</OPTION>
																			<OPTION value="顺庆区">
																				顺庆区
																			</OPTION>
																			<OPTION value="嘉陵区">
																				嘉陵区
																			</OPTION>
																			<OPTION value="高坪区">
																				高坪区
																			</OPTION>
																		</SELECT> </SPAN>
																</TD>
															</TR>
															<TR align="left">
																<TD align="left" width="17%" height="20">
																	<SPAN lang="zh-cn"><IMG
																			src="../images/point.gif"> 地理</SPAN>位置
																	<SPAN lang="zh-cn">：</SPAN>
																</TD>
																<TD width="33%" height="20" align="left">
																	<SPAN lang="zh-cn">&nbsp;</SPAN>
																	<INPUT size="14" name="address">
																	<SPAN lang="zh-cn">（路名）</SPAN>
																</TD>
																<TD align="left" width="50%" colSpan="2" height="20">
																	<P align="center">
																		<INPUT type="submit" value="房屋信息查询">
																		<SPAN lang="zh-cn">&nbsp; <INPUT type="reset"
																				value="表单重置"> </SPAN>
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
															<a href="../servlet/infodetail?id=${user.id }" target="_bank"> 
                                                                                                                                                                     ☆详细信息 ☆</a>
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
										<pg:pager url="../servlet/jump" items="${pm.total}"
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