<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>banner</title>
		<link href="css/banner.css" />
	</head>
	<body>

		<DIV>
			<IMG height="54" src="../images/toptopic.jpg" width="900"
				useMap="#Maptt" border="0">
		</DIV>
		<MAP id="Maptt" name="Maptt">
			<AREA shape="RECT" coords="700,10,788,36"
				href="http://www.nature-cn.cn/index.aspx">
			<AREA shape="RECT" coords="795,9,846,36"
				href="http://www.nature-cn.cn/topic/topic.aspx?id=24#">
			<AREA shape="RECT" target="_blank" coords="856,10,922,38"
				href="http://www.nature-1.cn/">
			<AREA shape="RECT" target="_blank" coords="929,10,981,38"
				href="http://www.nature-flooring.cn/">
		</MAP>
		<DIV class="bn">
			<OBJECT
				codeBase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
				height="123" width="880" align="top"
				classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
				<PARAM NAME="movie" VALUE="../images/banner.swf">
				<PARAM NAME="quality" VALUE="high">
				<embed src="../images/banner.swf"
					type="application/x-shockwave-flash" width="880" height="123"></embed>
			</OBJECT>
		</DIV>
		<div>
				<table align="center" height="20" width="820" border="0" bgcolor="#F7EAC7">
					<tr>
						<td>
							<a href="../servlet/shownews"><font size="2" color="#2E433C">网站首页</font></a>
						</td>
						<td>
							<a href="../servlet/findnews" target="_bank"><font size="2" color="#2E433C">系统公告</font></a>
						</td>
						<td>
							<a href="../web/register.jsp" target="_bank"><font size="2" color="#2E433C">用户注册</font></a>
						</td>
						<td>
							<a href="../servlet/jump" target="_bank"><font size="2" color="#2E433C">房屋查询</font></a>
						</td>
						<td>
							<a href="../servlet/finduser"><font size="2" color="#2E433C">修改信息</font></a>
						</td>
						<td>
							 <a href="../servlet/myinfo" ><font size="2" color="#2E433C">我的房讯</font></a>
						</td>
						<td>
							<a href="../user/addinfo.jsp"><font size="2" color="#2E433C">添加房讯</font></a>
						</td>
						<td>
							<a href="../web/logout.jsp"><font size="2" color="#2E433C">退出</font></a>
						</td>
					</tr>
				</table>
			</div>
	</body>
</html>