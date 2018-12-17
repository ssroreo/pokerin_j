<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>会员发布信息</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
	    <%
	String username = (String) session.getAttribute("username");
	if (username == null) {
		response.sendRedirect("../servlet/shownews");
	}
%>
			<SCRIPT language="JavaScript">
	function check() {
		if (document.form.area.value == "") {
			alert("请输入面积！")
			form.area.focus();
			return false;
		} else if (document.form.saleprice.value == "") {
			alert("请输入价格！")
			form.saleprice.focus();
			return false;
		}

		else if (document.form.floornumber.value == "") {
			alert("请输入楼层！")
			form.floornumber.focus();
			return false;
		}

		else
			return true;
	}
</SCRIPT>

			<jsp:include page="../web/banner.jsp" />
			<div>
				<table align="center" height="500" width="810" border="1"
					bgcolor="#F5F4EF" bordercolor="#F7EAC7">
					<tr>
						<td align="left">
							网站首页&nbsp;—&gt;&nbsp;添加我的房屋信息
						</td>
					</tr>
					<tr>

						<td>
							<table align="center" height="500" width="810" border="0"
								cellPadding="0" cellSpacing="1" bgcolor="#F5F4EF">
								<tr>
									<td>
										<form action="../servlet/addinfo" method="post" name="form"
											onsubmit="return check();">
											<table align="center" height="500" width="700" border="0">
												<tr>
													<td colspan="6">
														<h2 align="center">
															<font color="red">添加我的房屋信息</font>
														</h2>
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														房屋地址:
													</td>
													<td align="left" width="20%">
														<input type="text" name="address">
													</td>
													<td align="left" width="10%">
														几庭几室:
													</td>
													<td align="left" width="20%">
														<SELECT size="1" name="antrum">
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
													</td>
													<td align="left" width="10%">
														房屋面积:
													</td>
													<td align="left" width="20%">
														<input type="text" name="area" >
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														基础设施:
													</td>
													<td align="left" width="20%">
														<input type="text" name="basices">
													</td>
													<td align="left" width="10%">
														小区名称:
													</td>
													<td align="left" width="20%">
														<input type="text" name="contentname">
													</td>
													<td align="left" width="10%">
														房屋类型:
													</td>
													<td align="left" width="20%">
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
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														装修程度:
													</td>
													<td align="left" width="20%">
														<input type="text" name="fitment">
													</td>
													<td align="left" width="10%">
														房屋楼层:
													</td>
													<td align="left" width="20%">
														<input type="text" name="floornumber">
													</td>
													<td align="left" width="10%">
														房屋性质:
													</td>
													<td align="left" width="20%">
														<input type="text" name="housestyle">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														房&nbsp;&nbsp;龄:
													</td>
													<td align="left" width="20%">
														<input type="text" name="uselife">
													</td>
													<td align="left" width="10%">
														房屋价格:
													</td>
													<td align="left" width="20%">
														<input type="text" name="saleprice">
													</td>
													<td align="left" width="10%">
														所属区&nbsp;:
													</td>
													<td align="left" width="20%">
														<SELECT size="1" name="localarea">
															<OPTION value="顺庆区">
																顺庆区
															</OPTION>
															<OPTION value="嘉陵区">
																嘉陵区
															</OPTION>
															<OPTION value="高坪区">
																高坪区
															</OPTION>
														</SELECT>
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														所属产权:
													</td>
													<td align="left" width="20%">
														<input type="text" name="property">
													</td>
													<td align="left" width="10%">
														联系人&nbsp;:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkman">
													</td>
													<td align="left" width="10%">
														联系方式:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkmethod">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														信息说明:
													</td>
													<td align="left" colspan="5">
														<textarea rows="8" cols="40" name="remark">
													</textarea>
													</td>
												</tr>
												<tr>
													<td colspan="6">
														<input type="submit" value="提交房讯">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input type="reset" value="重置房讯">
													</td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
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