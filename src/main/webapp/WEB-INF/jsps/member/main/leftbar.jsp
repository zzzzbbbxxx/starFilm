<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

  </head>
  
  <body>
  	<ul>
					<li><a id="side01" href="会员中心_我的资料.html">我的资料</a></li>
					<li><a id="side02" href="会员中心_我的会员卡.html">我的会员卡</a></li>
					<li><a id="side03" href="会员中心_我的积分.html">我的积分</a></li>
					<li><a id="side04" href="会员中心_我的购票记录.html">我的购票记录</a></li>
					<li><a id="side05" href="会员中心_我的留言.html">我的留言</a></li>
					<li><a id="side06" href="会员中心_我的余额.html">我的余额</a></li>
					<li><a id="side07" href="会员中心_会员卡充值.html">会员卡充值</a></li>
				</ul>
  </body>
</html>
