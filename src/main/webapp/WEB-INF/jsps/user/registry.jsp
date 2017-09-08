<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<meta name="" content="" />
<title></title>
<link href="${pageContext.request.contextPath}/css/css_whir.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$("#sub").click(function() {
		alert("点击");
	});
</script>

</head>

<body>
	<div class="header">
		<div class="Top auto">
			<a href="会员中心_我的购票记录.html">我的订单</a> | <a href="帮助中心.html">帮助中心</a>
		</div>
	</div>
	<div class="auto">
		<div class="change_city">
			<!--/*logo*/-->
			<div class="logo">
				<a href="toRegistry.do"></a>
			</div>
			<!--/*logo end*/-->
			<!--/*更换城市*/-->
			<div class="city">
				<b>会员登陆</b></a>

			</div>
			<!--/*更换城市 end*/-->
		</div>
	</div>
	<div class="login_content">
		<div class="login_Main">
			<!--/*登录*/-->
			<div class="login_left">
				<h1>欢迎加入星星国际电影城电影网</h1>
				<form action="registry.do" method="post">
					<table cellpadding="0" cellspacing="0" border="0" class="reg_table">
						<tr>
							<td class="w">用户名：</td>
							<td><div class="name">
									<input class="text" type="text" name="username" value="" />
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td class="tips">6~18个字符，可使用字母、数字、下划线，需以字母开头</td>
						</tr>
						<tr>
							<td class="w">密码：</td>
							<td><div class="password">
									<input class="text" id="password" type="password"
										name="password" value="" />
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td class="tips">6~16个字符，区分大小写</td>
						</tr>
						<tr>
							<td class="w">确认密码：</td>
							<td><div class="password">
									<input class="text" id="chkpassword" type="password" value="" />
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td class="tips" id="passwordTip">请再次填写密码</td>
						</tr>
						<tr>
							<td class="w">邮箱：</td>
							<td><div class="email">
									<input class="text" type="text" name="email" value=" " />
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td class="tips">6~18个字符，可使用字母、数字、下划线，需以字母开头</td>
						</tr>
						<tr>
							<td class="w">验证码：</td>
							<td><div class="code">
									<input id="code" class="text" type="text" value=""
										style="width:87px;" /><img
										src="${pageContext.request.contextPath }/images/code3.jpg" /><a
										href="#">看不清，换一张?</a>
								</div></td>
						</tr>
						<tr>
							<td class="w"></td>
							<td><input type="checkbox" checked="checked" />我已经看过并同意《星星国际影城协议》</td>
						</tr>
						<tr>
							<td class="w"></td>
							<td><input type="button" id="sub" class="btn" value="立即注册" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="login_right">
				客服热线：<b>400-888-8888</b>
			</div>
			<div class="clear"></div>
			<!--/*登录 end*/-->
		</div>
	</div>
	<%@ include file="/WEB-INF/jsps/common/bottomHelp.jsp"%>
	<%@ include file="/WEB-INF/jsps/common/footer.jsp"%>
	
	<script type="text/javascript">
		jQuery(".bottom_help").css("margin-top", "0");
		jQuery(".auto .city b").text("会员注册");
		
		var verPassword = true;
		//确认密码验证
		$("#chkpassword").blur(function(){
			if ($("#chkpassword").val() == $("#password").val()) {
				verPassword = false;
				$("#passwordTip").text("正确").css("color","green");
			} else {
				verPassword = true;
				$("#passwordTip").text("两次密码不一致").css("color","red");
			}
		});
		
		
		$("#sub").click(function() {
			var password = $("#password").val().trim();
			var username = $("input[name='username']").val();
			var email = $("input[name='email']").val();
			var emailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			var usernameReg = /^[a-zA-Z][a-zA-Z0-9_]*$/;
			
			if($("#code").val() != "1274"){
				alert("验证码不正确");
			} else if (!emailReg.test(email)) {
				alert("邮箱格式不正确");
			} else if (password.length < 6 || password.length > 16) {
				alert("密码输入不符合要求!");
			} else if (verPassword) {
				alert("两次密码输入不正确!");
			} else if (!usernameReg.test(username) || username.length < 6 || username.length > 18) {
				alert("用户名格式不正确!");
			} else {
				$("form").submit();
			}
		});
	</script>
</body>
</html>
