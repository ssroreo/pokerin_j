<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>����չʾ</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">

			<script language="javascript">
<!--
function CheckForm()
{
if (document.login.username.value.length == 0) {
alert("�����������û���!");
document.login.username.focus();
return false;
}
if(document.login.password.value.length == 0)
{
alert("��������������!");
document.login.password.focus();
return false;
}

return true;
}
-->
</script>
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

			<jsp:include page="banner.jsp" />
			<div align="center" style="margin-top: -2px;">
				<table>
					<tr>
						<td>
							<div class="left">
								<div class="gonggao">
									<table border="0" width="100%" height="100%">
										<tr>
											<td width="40%">
												<img height="180" src="../images/pic.gif" />
											</td>
											<td>
												<table border="0" align="left">
													<tr>
														<td colspan="2" align="left">
															&nbsp;&nbsp;
															<font size="2" color="#DC0049" style="font-weight: bold">ϵͳ������Ϣ</font>&nbsp;&nbsp;
															<img alt="" src="../images/news.gif">
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
															<img alt="" src="../images/new.gif">
														</td>
														<td align="left">
															<a href="../servlet/detail?id=<%=n.getId() %>"
																target="_bank"><%=title%></a> (<%=n.getNdate() %>)
														</td>
													</tr>
													<%
					                    }
				                   %>
													<tr>
														<td colspan="2" align="right">
															<a href="../servlet/findnews"><font color="#FEFEFE">������Ϣ...</font>
															</a>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld1">
									<table width="100%" height="100%" border="0">
										<tr>
											<td colspan="2" align="left">

												&nbsp;&nbsp;
												<font size="2" color="#DC0049" style="font-weight: bold">���ַ���Ϣ</font>&nbsp;&nbsp;
												<img alt="" src="../images/qiuzu.gif">
											</td>
										</tr>
										<%								   
					               @SuppressWarnings("all")
					              List<Information> info = (ArrayList) request.getAttribute("info1");
					              	for (Information in : info) {
				                         %>
										<tr>
											<td>
												<img src="../images/qiu.gif">
											</td>
											<td align="left">
												<a href="../servlet/infodetail?id=<%=in.getId() %>"
													target="_bank"> <font color="#008000">[����]</font><%=in.getLocalarea()%>-<%=in.getArea() %>(ƽ����)-<%=in.getFloornumber() %>(¥��)</a>
												(<%=in.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">������Ϣ...</font>
												</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld2">
									<table width="100%" height="100%" border="0">
										<tr>
											<td colspan="2" align="left">
												&nbsp;&nbsp;
												<font size="2" color="#DC0049" style="font-weight: bold">���ⷿ��Ϣ</font>&nbsp;&nbsp;
												<img alt="" src="../images/hezu.gif">
											</td>
										</tr>
										<%								   
					               @SuppressWarnings("all")
					              List<Information> info2 = (ArrayList) request.getAttribute("info2");
					              	for (Information in2 : info2) {
				                         %>
										<tr>
											<td>
												<img src="../images/he.gif">
											</td>
											<td align="left">
												<a href="../servlet/infodetail?id=<%=in2.getId() %>"
													target="_bank"> ���-----<%=in2.getLocalarea()%>-<%=in2.getLinkman() %>-<%=in2.getFloornumber() %>(¥��)</a>
												(<%=in2.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">������Ϣ...</font>
												</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld3">
									<table width="100%" height="100%" border="0">
										<tr>
											<td colspan="2" align="left">

												&nbsp;&nbsp;
												<font size="2"color="#DC0049" style="font-weight: bold">д��¥��Ϣ</font>&nbsp;&nbsp;
												<img alt="" src="../images/chuzu.gif">
											</td>
										</tr>
										<%								   
					               @SuppressWarnings("all")
					              List<Information> info3 = (ArrayList) request.getAttribute("info3");
					              	for (Information in3 : info3) {
				                         %>
										<tr>
											<td>
												<img src="../images/chu.gif">
											</td>
											<td align="left">
												<a href="../servlet/infodetail?id=<%=in3.getId() %>"
													target="_bank"> <%=in3.getContentstyle()%>-<%=in3.getArea() %>(ƽ����)-<%=in3.getFloornumber() %>(¥��)</a>
												(<%=in3.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">������Ϣ...</font>
												</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld4">
									<table width="100%" height="100%" border="0">
										<tr>
											<td colspan="2" align="left">
												&nbsp;&nbsp;
												<font size="2" color="#DC0049" style="font-weight: bold">����/�ٽַ�/�ֿ���Ϣ</font>&nbsp;&nbsp;
												<img alt="" src="../images/qiugou.gif">
											</td>
										</tr>
										<%								   
					               @SuppressWarnings("all")
					              List<Information> info4 = (ArrayList) request.getAttribute("info4");
					              	for (Information in4 : info4) {
				                         %>
										<tr>
											<td>
												<img src="../images/gou.gif">
											</td>
											<td align="left">
												<a href="../servlet/infodetail?id=<%=in4.getId() %>"
													target="_bank"> <%=in4.getLocalarea()%>-<%=in4.getArea() %>(ƽ����)-<%=in4.getFloornumber() %>(¥��)</a>
												(<%=in4.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">������Ϣ...</font>
												</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld5">
									<table width="100%" height="100%" border="0">
										<tr>
											<td colspan="2" align="left">

												&nbsp;&nbsp;
												<font size="2" color="#DC0049" style="font-weight: bold">��Ʒ����Ϣ</font>&nbsp;&nbsp;
												<img alt="" src="../images/chushou.gif">
											</td>
										</tr>
										<%								   
					               @SuppressWarnings("all")
					              List<Information> info5 = (ArrayList) request.getAttribute("info5");
					              	for (Information in5 : info5) {
				                         %>
										<tr>
											<td>
												<img src="../images/shou.gif">
											</td>
											<td align="left">
												<a href="../servlet/infodetail?id=<%=in5.getId() %>"
													target="_bank"> �۸�:<%=in5.getSaleprice()%>(��)--<%=in5.getArea() %>(ƽ����)-<%=in5.getFloornumber() %>(¥��)</a>
												(<%=in5.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">������Ϣ...</font>
												</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="ld6" align="left">
									<table border="0" align="center">
										<tr>
											<td colspan="4">
												<br>

												<font size="2" color="#DC0049" style="font-weight: bold">��Ϣ��ѯ</font>&nbsp;&nbsp;
												<img alt="" src="../images/go.gif">
											</td>
										</tr>

										<tr>
											<td colspan="4">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												���
											</td>
											<td>
												����
												<input type="radio" value="����">
											</td>
											<td>
												����
												<input type="radio" value="����">
											</td>
											<td>
												ȫ����Դ
												<input type="radio" value="ȫ��" checked="checked">
											</td>
										</tr>
										<tr>
											<td>
												����
											</td>
											<td>
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
											</td>
											<td>
												���
											</td>
											<td>
												<input type="text" name="" size="5">
												��
												<input type="text" name="" size="5">
											</td>
										</tr>
										<tr>
											<td>
												�۸�
											</td>
											<td>
												<input type="text" name="" size="2">
												��
												<input type="text" name="" size="3">
											</td>
											<td>
												¥��
											</td>
											<td>
												<input type="text" name="" size="3">
												��
												<input type="text" name="" size="4">
												¥
											</td>
										</tr>
										<tr>
											<td>
												����
											</td>
											<td>
												<SELECT size="1" name="localarea">
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
												</SELECT>

											</td>
											<td>
												λ��
											</td>
											<td>
												<input type="text" size="12">
											</td>
										</tr>
										<tr align="center">
											<td colspan="4">
												<input type="submit" value="�ύ��ѯ">
												<input type="reset" value="��ղ�ѯ">
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="right">
								<div class="login" align="center">
									<form action="../servlet/login" method="post" name="login" onsubmit="return CheckForm();">
										<table border="0" width="90%" height="100%" align="center">
											<tr>
												<td colspan="3">
													<font size="2" color="#DC0049" style="font-weight: bold">�û���½</font>
												</td>
											</tr>
											<tr>
												<td>
													�û�
												</td>
												<td colspan="2">
													<input type="text" name="username" size="15">
												</td>
											</tr>
											<tr>
												<td>
													����
												</td>
												<td colspan="2">
													<input type="password" name="password" size="15">
												</td>
											</tr>
											<tr>
												<td align="center" colspan="3">
													<input type="submit" value="��½">
													&nbsp;&nbsp;
													<input type="reset" value="����">
												</td>
											</tr>
											<tr>
												<td colspan="3">
													<%
													
													if(session.getAttribute("username")!=null)
													{
													 out.println("��ӭ��:"+session.getAttribute("username"));
													 %>
													<br>
													<a href="../servlet/finduser">�޸ĸ�����Ϣ</a>
													<%
													}
													else
													{
													 %>
													<a href="../web/register.jsp" target="_bank">���û�ע��</a>
													<%
													}
													 %>

												</td>
											</tr>
											<tr>
												<td colspan="3">
													<SCRIPT language="JavaScript">
	document.write(tdate);
</SCRIPT>
												</td>
											</tr>
										</table>
									</form>
								</div>
								<div class="rd1">
									<table align="left" border="0">
										<TR>
											<TD width="88%" height="15" align="left">
												<A href=""><font color="#DC0049" style="font-weight: bold">����ָ��</font> </A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַܾ������޴�����ְ��</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַܾ������޴����³���</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַܾ������޴���������</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�����޵ǼǱ�����֪</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�����޹�������</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�ز�������Լ</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�����޵ǼǱ�����֪</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�ز�������Լ</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �������޵Ǽ�����</A>

											</TD>
										</TR>
									</table>
								</div>
								<div class="rd2">
									<table align="left" border="0">
										<TR>
											<TD width="88%" height="15" align="left">
												<A href=""><font color="#DC0049" style="font-weight: bold">����֪ʶ</font> </A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ���з������޹�������</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַ�����������</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �ϳ䷿�ز��н����취</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַ�����Ӧע�������</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ʲô������ݲ��ó���</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� �������޵Ǽ�����Լ</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���ַ�������ͬע��ʲô</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ��Ʒ���ĸ������۷�ʽ˵��</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">�� ���۹������貿�����Ҫ��</A>

											</TD>
										</TR>
									</table>
								</div>
								<div class="rd3">
									<table align="left">
										<tr>
											<td width="88%" height="15" align="left">
												<font color="#DC0049" style="font-weight: bold">��������</font>
											</td>
										</tr>
										<tr>
											<td align="right">
												<img src="../images/1.gif" width="109" height="38">
											</td>
										</tr>
										<tr>
											<td align="right">
												<img src="../images/2.gif">
											</td>
										</tr>
										<tr>
											<td align="right">
												<img src="../images/3.gif">
											</td>
										</tr>
										<tr>
											<td align="right">
												<img src="../images/4.gif">
											</td>
										</tr>
										<tr>
											<td align="right">
												<img src="../images/5.gif">
											</td>
										</tr>
									</table>
								</div>
							</div>
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