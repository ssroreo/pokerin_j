<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="org.cs.trade.domain.Information" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String admin = (String) session.getAttribute("admin");
	if (admin == null) {
		response.sendRedirect("../servlet/shownews");
	}
%>
<%
	Information info = (Information) request.getAttribute("info");
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>����Ա�޸ķ�����Ϣ</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<jsp:include page="../web/banner.jsp" />
			<div>
				<table align="center" height="500" width="820" border="0"
					bgcolor="#F7EAC7">
					<tr>
						<td>
							<table align="center" height="500" width="820" border="0"
								bgcolor="#F7EAC7">
								<tr>
									<td>
										<form action="../servlet/modifyinfo?action=xiugai" method="post">
											<table align="center" height="500" width="700" border="0">
												<tr>
													<td colspan="6">
														<h2 align="center">
															<font color="red">����Ա�޸ķ�����Ϣ</font>
														</h2>
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														���ݵ�ַ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="address" value="<%=info.getAddress() %>">
														<input type="hidden" name="id" value="<%=info.getId() %>">
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
														<input type="text" name="area" value="<%=info.getArea() %>">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														������ʩ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="basices" value="<%=info.getBasices() %>">
													</td>
													<td align="left" width="10%">
														С������:
													</td>
													<td align="left" width="20%">
														<input type="text" name="contentname" value="<%=info.getContentname() %>">
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
														<input type="text" name="fitment" value="<%=info.getFitment()%>">
													</td>
													<td align="left" width="10%">
														����¥��:
													</td>
													<td align="left" width="20%">
														<input type="text" name="floornumber" value="<%=info.getFloornumber()%>">
													</td>
													<td align="left" width="10%">
														��������:
													</td>
													<td align="left" width="20%">
														<input type="text" name="housestyle" value="<%=info.getHousestyle()%>">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														��&nbsp;&nbsp;��:
													</td>
													<td align="left" width="20%">
														<input type="text" name="uselife" value="<%=info.getUserlife()%>">
													</td>
													<td align="left" width="10%">
														���ݼ۸�:
													</td>
													<td align="left" width="20%">
														<input type="text" name="saleprice" value="<%=info.getSaleprice()%>">
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
														<input type="text" name="property" value="<%=info.getProperty()%>">
													</td>
													<td align="left" width="10%">
														��ϵ��&nbsp;:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkman" value="<%=info.getLinkman()%>">
													</td>
													<td align="left" width="10%">
														��ϵ��ʽ:
													</td>
													<td align="left" width="20%">
														<input type="text" name="linkmethod" value="<%=info.getLinkmethod()%>">
													</td>
												</tr>
												<tr>
													<td align="left" width="10%">
														��Ϣ˵��:
													</td>
													<td align="left" colspan="5">
														<textarea rows="8" cols="40" name="remark">
														<%=info.getRemark()%>
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