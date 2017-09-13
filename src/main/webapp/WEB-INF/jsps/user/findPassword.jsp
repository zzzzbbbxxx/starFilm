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
<link href="${pageContext.request.contextPath }/css/css_whir.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
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
				<table cellpadding="0" cellspacing="0" border="0" class="reg_table">
					<tr>
						<td class="w">用户名：</td>
						<td><div class="name">
								<input class="text" type="text" value="" name="username" />
							</div></td>
					</tr>
					<tr>
						<td></td>
						<td class="tips"></td>
					</tr>
					<tr>
						<td class="w">验证码：</td>
						<td><div class="code">
								<input class="text" type="text" value="  " style="width:87px;" /><img
									src="${pageContext.request.contextPath }/images/code3.jpg" /><a
									href="#">看不清，换一张?</a>
							</div></td>
					</tr>
					<tr>
						<td></td>
						<td class="tips"></td>
					</tr>
					<tr>
						<td class="w"></td>
						<td><input type="button" class="btn" value="发送找回密码邮件"
							onclick="location.href='购票第二步.html';return false;" /></td>
					</tr>
				</table>
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
		jQuery(".auto .city b").text("找回密码");
	</script>
</body>
</html>
