<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>��Ա������Ϣ</title>
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
			alert("�����������")
			form.area.focus();
			return false;
		} else if (document.form.saleprice.value == "") {
			alert("������۸�")
			form.saleprice.focus();
			return false;
		}

		else if (document.form.floornumber.value == "") {
			alert("������¥�㣡")
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
							��վ��ҳ&nbsp;��&gt;&nbsp;����ҵķ�����Ϣ
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
															<font color="red">����ҵķ�����Ϣ</font>
														</h2>
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														���ݵ�ַ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="address">
													</td>
													<td align="left" width="10%">
														��ͥ����:
													</td>
													<td align="left" width="20%">
														<SELECT size="1" name="antrum">
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
													</td>
													<td align="left" width="10%">
														�������:
													</td>
													<td align="left" width="20%">
														<input type="text" name="area" >
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														������ʩ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="basices">
													</td>
													<td align="left" width="10%">
														С������:
													</td>
													<td align="left" width="20%">
														<input type="text" name="contentname">
													</td>
													<td align="left" width="10%">
														��������:
													</td>
													<td align="left" width="20%">
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
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														װ�޳̶�:
													</td>
													<td align="left" width="20%">
														<input type="text" name="fitment">
													</td>
													<td align="left" width="10%">
														����¥��:
													</td>
													<td align="left" width="20%">
														<input type="text" name="floornumber">
													</td>
													<td align="left" width="10%">
														��������:
													</td>
													<td align="left" width="20%">
														<input type="text" name="housestyle">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														��&nbsp;&nbsp;��:
													</td>
													<td align="left" width="20%">
														<input type="text" name="uselife">
													</td>
													<td align="left" width="10%">
														���ݼ۸�:
													</td>
													<td align="left" width="20%">
														<input type="text" name="saleprice">
													</td>
													<td align="left" width="10%">
														������&nbsp;:
													</td>
													<td align="left" width="20%">
														<SELECT size="1" name="localarea">
															<OPTION value="˳����">
																˳����
															</OPTION>
															<OPTION value="������">
																������
															</OPTION>
															<OPTION value="��ƺ��">
																��ƺ��
															</OPTION>
														</SELECT>
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														������Ȩ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="property">
													</td>
													<td align="left" width="10%">
														��ϵ��&nbsp;:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkman">
													</td>
													<td align="left" width="10%">
														��ϵ��ʽ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkmethod">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														��Ϣ˵��:
													</td>
													<td align="left" colspan="5">
														<textarea rows="8" cols="40" name="remark">
													</textarea>
													</td>
												</tr>
												<tr>
													<td colspan="6">
														<input type="submit" value="�ύ��Ѷ">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input type="reset" value="���÷�Ѷ">
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