<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="org.cs.trade.domain.*"%>
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
					style="width: 665px; height: 500px; background-color: #F5F4EF; float: right; margin-left: 5px;">
					<table width="100%" height="90%">
						<tr align="center" valign="middle">
							<td>
								<font size="5" color="red">欢迎来到南充和江房产交易系统后台</font>
								<br><SCRIPT language="JavaScript">
	                                      document.write(tdate);
                                </SCRIPT>
							</td>
						</tr>
					</table>

				</div>
			</div>
			<div>
				<jsp:include page="../web/footer.jsp" />
			</div>
		</div>
	</body>
</html>