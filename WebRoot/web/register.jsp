<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户注册界面</title>
<link href="../css/house.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<script>
		function check() {
			with(document.all){
			if (username.value.length == 0) {
				alert("用户名不能为空！")
				return false;
			}
			if (password.value != repassword.value) {
				alert("两次密码不一致！")
				repassword.value = "";
				return false;
			}
			{
				if (!isMail(email.value)) {
					alert("您的电子邮件不合法！");
					email.focus();
					return false;
				}
	
				return true;
			}
			}
		}
	</script>
	<div align="center">
		<jsp:include page="banner.jsp" />
		<div>
			<table border="1" align="center" height="400" width="820"
				bgcolor="#F5F4EF" bordercolor="#F7EAC7">
				<tr valign="top">
					<td align="left">网站首页&nbsp;—&gt;&nbsp;用户注册</td>
				</tr>
				<tr height="95%">
					<td>
						<form action="../servlet/register" method="post" name="register"
							onsubmit="return check();">
							<table border="0">
								<tr>
									<td>
										<table>
											<tr>
												<td colspan="3"><h2>
														<font color="red">用户注册</font>
													</h2>
													<hr></td>
											</tr>
											<tr>
												<td align="left">用户名</td>
												<td align="left"><input type="text" name="username"
													size="20" id="username"></td>
												<td width="300" align="left">说明:用户登录时的用户名<font
													color="red">***</font>(必填)
												</td>
											</tr>
											<tr>
												<td align="left">密&nbsp;码</td>
												<td align="left"><input type="password" name="password"
													size="21" id="password"></td>
												<td align="left">说明:用户登录时的密码<font color="red">***</font>(必填)
												</td>
											</tr>
											<tr>
												<td align="left">确认密码</td>
												<td align="left"><input type="password"
													name="repassword" size="21" id="repassword"></td>
												<td align="left">说明:密码和确认密码必须一致<font color="red">***</font>(必填)
												</td>
											</tr>
											<tr>
												<td align="left">真是姓名</td>
												<td align="left"><input type="text" name="realname"
													size="20"></td>
												<td align="left">说明:真实姓名便于联系</td>
											</tr>
											<tr>
												<td align="left">性别</td>
												<td align="left"><select name="sex">
														<option value="男" selected="selected">&nbsp;男&nbsp;</option>
														<option value="女">&nbsp;女&nbsp;</option>
												</select></td>
												<td align="left">说明:用户的性别</td>
											</tr>
											<tr>
												<td align="left">籍贯</td>
												<td align="left"><input type="text" name="address"
													size="20"></td>
												<td align="left">说明:用户现在居住的地方</td>
											</tr>
											<tr>
												<td align="left">电话</td>
												<td align="left"><input type="text" name="phone"
													size="20"></td>
												<td align="left">说明:方便用户之间联系的电话<font color="red">***</font>(必填)
												</td>
											</tr>
											<tr>
												<td align="left">E-Mail</td>
												<td align="left"><input type="text" name="email"
													size="20" id="email"></td>
												<td align="left">说明:网络提供给我们快捷的方式交谈</td>
											</tr>
											<tr>
												<td align="left">银行卡号</td>
												<td align="left"><input type="text" name="card"
													size="20"></td>
												<td align="left">说明:用户在房产交易中的交易方式<font color="red">***</font>(必填)
												</td>
											</tr>
											<tr>
												<td align="left" colspan="2"><input type="submit"
													value="提交"></td>
												<td align="left"><input type="reset" value="充填"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</form> <font color="red">注意:</font>请您认真填写以上的注册信息，并且记住您的用户名和密码，尤其是银行卡号。
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