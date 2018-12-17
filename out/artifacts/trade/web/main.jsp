<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>数据展示</title>
		<link href="../css/house.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">

			<script language="javascript">
<!--
function CheckForm()
{
if (document.login.username.value.length == 0) {
alert("请输入您的用户名!");
document.login.username.focus();
return false;
}
if(document.login.password.value.length == 0)
{
alert("请输入您的密码!");
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
															<font size="2" color="#DC0049" style="font-weight: bold">系统公告信息</font>&nbsp;&nbsp;
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
															<a href="../servlet/findnews"><font color="#FEFEFE">更多信息...</font>
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
												<font size="2" color="#DC0049" style="font-weight: bold">二手房信息</font>&nbsp;&nbsp;
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
													target="_bank"> <font color="#008000">[出售]</font><%=in.getLocalarea()%>-<%=in.getArea() %>(平方米)-<%=in.getFloornumber() %>(楼层)</a>
												(<%=in.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">更多信息...</font>
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
												<font size="2" color="#DC0049" style="font-weight: bold">出租房信息</font>&nbsp;&nbsp;
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
													target="_bank"> ☆☆-----<%=in2.getLocalarea()%>-<%=in2.getLinkman() %>-<%=in2.getFloornumber() %>(楼层)</a>
												(<%=in2.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">更多信息...</font>
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
												<font size="2"color="#DC0049" style="font-weight: bold">写字楼信息</font>&nbsp;&nbsp;
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
													target="_bank"> <%=in3.getContentstyle()%>-<%=in3.getArea() %>(平方米)-<%=in3.getFloornumber() %>(楼层)</a>
												(<%=in3.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">更多信息...</font>
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
												<font size="2" color="#DC0049" style="font-weight: bold">商铺/临街房/仓库信息</font>&nbsp;&nbsp;
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
													target="_bank"> <%=in4.getLocalarea()%>-<%=in4.getArea() %>(平方米)-<%=in4.getFloornumber() %>(楼层)</a>
												(<%=in4.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">更多信息...</font>
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
												<font size="2" color="#DC0049" style="font-weight: bold">商品房信息</font>&nbsp;&nbsp;
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
													target="_bank"> 价格:<%=in5.getSaleprice()%>(万)--<%=in5.getArea() %>(平方米)-<%=in5.getFloornumber() %>(楼层)</a>
												(<%=in5.getLogindate() %>)
											</td>
										</tr>
										<%
					                    }
				                      %>
										<tr>
											<td colspan="2" align="right">
												<a href="../servlet/jump"><font color="#FEFEFE">更多信息...</font>
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

												<font size="2" color="#DC0049" style="font-weight: bold">信息查询</font>&nbsp;&nbsp;
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
												类别
											</td>
											<td>
												出租
												<input type="radio" value="出租">
											</td>
											<td>
												求租
												<input type="radio" value="求租">
											</td>
											<td>
												全部房源
												<input type="radio" value="全部" checked="checked">
											</td>
										</tr>
										<tr>
											<td>
												户型
											</td>
											<td>
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
											</td>
											<td>
												面积
											</td>
											<td>
												<input type="text" name="" size="5">
												至
												<input type="text" name="" size="5">
											</td>
										</tr>
										<tr>
											<td>
												价格
											</td>
											<td>
												<input type="text" name="" size="2">
												至
												<input type="text" name="" size="3">
											</td>
											<td>
												楼层
											</td>
											<td>
												<input type="text" name="" size="3">
												至
												<input type="text" name="" size="4">
												楼
											</td>
										</tr>
										<tr>
											<td>
												区域
											</td>
											<td>
												<SELECT size="1" name="localarea">
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
												</SELECT>

											</td>
											<td>
												位置
											</td>
											<td>
												<input type="text" size="12">
											</td>
										</tr>
										<tr align="center">
											<td colspan="4">
												<input type="submit" value="提交查询">
												<input type="reset" value="清空查询">
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
													<font size="2" color="#DC0049" style="font-weight: bold">用户登陆</font>
												</td>
											</tr>
											<tr>
												<td>
													用户
												</td>
												<td colspan="2">
													<input type="text" name="username" size="15">
												</td>
											</tr>
											<tr>
												<td>
													密码
												</td>
												<td colspan="2">
													<input type="password" name="password" size="15">
												</td>
											</tr>
											<tr>
												<td align="center" colspan="3">
													<input type="submit" value="登陆">
													&nbsp;&nbsp;
													<input type="reset" value="重置">
												</td>
											</tr>
											<tr>
												<td colspan="3">
													<%
													
													if(session.getAttribute("username")!=null)
													{
													 out.println("欢迎您:"+session.getAttribute("username"));
													 %>
													<br>
													<a href="../servlet/finduser">修改个人信息</a>
													<%
													}
													else
													{
													 %>
													<a href="../web/register.jsp" target="_bank">新用户注册</a>
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
												<A href=""><font color="#DC0049" style="font-weight: bold">服务指南</font> </A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 房管局房屋租赁处工作职责</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 房管局房屋租赁处办事程序</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 房管局房屋租赁处办事流程</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房产租赁登记备案须知</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房产租赁管理条例</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房地产租赁契约</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房产租赁登记备案须知</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房地产租赁契约</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 房屋租赁登记手续</A>

											</TD>
										</TR>
									</table>
								</div>
								<div class="rd2">
									<table align="left" border="0">
										<TR>
											<TD width="88%" height="15" align="left">
												<A href=""><font color="#DC0049" style="font-weight: bold">房产知识</font> </A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充城市房屋租赁管理条例</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 二手房评估计算器</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 南充房地产中介服务办法</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 二手房贷款应注意的问题</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 什么情况房屋不得出租</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 房屋租赁登记手续约</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 二手房买卖合同注意什么</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 商品房的各种销售方式说明</A>

											</TD>
										</TR>
										<TR>
											<TD width="88%" height="15" align="left">
												<A href="">☆ 出售公房建设部提出新要求</A>

											</TD>
										</TR>
									</table>
								</div>
								<div class="rd3">
									<table align="left">
										<tr>
											<td width="88%" height="15" align="left">
												<font color="#DC0049" style="font-weight: bold">友情链接</font>
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