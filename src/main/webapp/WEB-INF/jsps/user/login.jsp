<%@page import="org.apache.xmlbeans.impl.xb.xsdschema.IncludeDocument.Include"%>
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
<link href="${pageContext.request.contextPath }/css/css_whir.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
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
				<a href="index.html"></a>
			</div>
			<!--/*logo end*/-->
			<!--/*更换城市*/-->
			<div class="city">
				<b>会员登陆</b>
			</div>
			<!--/*更换城市 end*/-->
		</div>
	</div>
	<div class="login_content">
		<div class="login_Main">
			<!--/*登录*/-->
			<div class="login_left">
				<h1>欢迎加入星星国际电影城电影网</h1>
				<form action="login.do" method="post">
				<table cellpadding="0" cellspacing="0" border="0"
					class="login_table">
					<tr>
						<td class="w">用户名：</td>
						<td><div class="name">
								<input class="text" type="text" value="输入用户名"
									onblur="if(this.value=='')this.value='输入用户名';"
									onfocus="this.value='';" name="username" />
							</div></td>
					</tr>
					<tr>
						<td class="w">登录密码：</td>
						<td><div class="password">
								<input class="text" type="text" value="输入登录密码"
								name="password" />
									<a class="Keyboard" href="#" title="键盘输入"></a>
							</div></td>
					</tr>
					<tr>
						<td class="w">验证码：</td>
						<td><input class="text" type="text" value=" 输入验证码"
							onblur="if(this.value=='')this.value=' 输入验证码';"
							onfocus="this.value='';" id="code"/><img src="${pageContext.request.contextPath }/images/code.jpg"
							class="code" /></td>
					</tr>
					<tr>
						<td class="w"></td>
						<td><input type="checkbox" checked="checked" />下次自动登陆
							<p>
								<a href="findPassword.do">找回密码？</a>
							</p></td>
					</tr>
					<tr>
						<td class="w"></td>
						<td><input type="button" class="btn" value="立即登录"/></td>
					</tr>
					<tr>
						<td class="w"></td>
						<td><font color="red">${loginMessage}</font></td>
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
	
	<%@ include file="/WEB-INF/jsps/common/bottomHelp.jsp" %>
	<%@ include file="/WEB-INF/jsps/common/footer.jsp" %>
	
	<script type="text/javascript">
		jQuery(".bottom_help").css("margin-top", "0");
		
		$(".password input").focus(function() {
			$(".password input").val("");
			$(".password input").attr("type","password");
		});
		
		$(".password input").blur(function() {
			if($(".password input").val() == ""){
			$(".password input").val("输入登录密码");
			$(".password input").attr("type","text");
			}
		});
		
		$(".btn").click(function(){
			if ($(".name input").val() == "输入用户名") {
				alert("请输入用户名!");
			} else if ($(".password input").val() == "输入登录密码") {
				alert("请输入登录密码!");
			} else if ($("#code").val() != "FRES") {
				alert("验证码不正确!");
			} else {
				$("form").submit();
			}
		});
		
		//TODO 下次自动登录功能的实现		
	</script>
</body>
</html>
