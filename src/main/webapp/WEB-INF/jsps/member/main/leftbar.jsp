<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'leftbar.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link href="${pageContext.request.contextPath }/css/css_whir.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>

</head>

<body>
	<div class="content_left">
		<h1 class="t_member"></h1>
		<div class="Sidebar">
			<ul>
				<li><a id="side01" href="会员中心_我的资料.html">我的资料</a></li>
				<li><a id="side02" href="会员中心_我的会员卡.html">我的会员卡</a></li>
				<li><a id="side03" href="会员中心_我的积分.html">我的积分</a></li>
				<li><a id="side04" href="会员中心_我的购票记录.html">我的购票记录</a></li>
				<li><a id="side05" href="会员中心_我的留言.html">我的留言</a></li>
				<li><a id="side06" href="会员中心_我的余额.html">我的余额</a></li>
				<li><a id="side07" href="会员中心_会员卡充值.html">会员卡充值</a></li>
			</ul>
			<!--选中菜单-->
			<script language="javascript" type="text/javascript">
				jQuery("#side" + side).addClass("aon");
			</script>
			<!--选中菜单-->
			<div class="side_btn">
				<a href="购票.html" class="a1" title="快速购票"></a> <a
					href="会员服务_会员专享活动.html" class="a2" title="会员服务"></a>
			</div>
		</div>
	</div>
</body>
</html>
