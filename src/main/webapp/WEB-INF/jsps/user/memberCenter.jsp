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
<script type="text/javascript" language="javascript">
	var m = '0'
	var side = '01'
</script>
</head>

<body>
	<div class="header">
		<div class="Top auto">
			<a href="#" class="sina"></a><a href="#" class="tqq"></a><span><a
				href="登陆.html">登陆</a> | <a href="注册.html">注册</a></span><span
				id="login_after" style="display:none;">gz_1003 | <a href="#">会员中心</a></span>
			| 全国服务热线：888-8888888
		</div>
	</div>
	<div class="Content">
		<!--/*列表*/-->
		<div class="advisting_ban">
			<img src="${pageContext.request.contextPath }/images/pageban.jpg" />
		</div>
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
		<div class="content_right">
			<div class="Current">
				<span>我的资料</span>
			</div>
			<!--/**/-->
			<div class="member_center">

				<table class="my_member_info" cellpadding="0" cellspacing="0"
					border="0">
					<tr>
						<td class="word">昵称</td>
						<td><input type="text" class="text" /><span class="red">昵称输入后不可修改</span></td>
					</tr>
					<tr>
						<td class="word">邮箱</td>
						<td><input type="text" class="text" disabled="disabled"
							value="55555@qq.com" /><a href="会员中心_我的资料_验证.html">验证</a> <a
							href="会员中心_我的资料_修改邮箱.html">修改邮箱</a></td>
					</tr>
					<tr>
						<td class="word">常去影院</td>
						<td><select><option>佛山</option></select> <select><option>星星国际影城</option></select></td>
					</tr>
					<tr>
						<td class="word">真实姓名</td>
						<td><input type="text" class="text" /></td>
					</tr>
					<tr>
						<td class="word">性别</td>
						<td><select><option>女</option>
								<option>男</option></select></td>
					</tr>
					<tr>
						<td class="word">生日</td>
						<td><input type="text" class="text" /></td>
					</tr>
					<tr>
						<td class="word">手机</td>
						<td><input type="text" class="text" /><a
							href="会员中心_我的资料_手机绑定.html">(未绑定)立即绑定</a></td>
					</tr>
					<tr>
						<td class="word">电话</td>
						<td><input type="text" class="text" /></td>
					</tr>
					<tr>
						<td class="word">身体证号</td>
						<td><input type="text" class="text" /></td>
					</tr>
					<tr>
						<td class="word">所在地区</td>
						<td><select><option>省份</option></select> <select><option>城市</option></select></td>
					</tr>
					<tr>
						<td class="word">邮编</td>
						<td><input type="text" class="text" /></td>
					</tr>
					<tr>
						<td class="word">详细地址</td>
						<td><input type="text" class="text" style="width:438px;" /></td>
					</tr>
					<tr>
						<td class="word"></td>
						<td><input type="button" class="btn" value="提交" /></td>
					</tr>
				</table>

			</div>
			<!--/**/-->
		</div>
		<div class="clear"></div>
		<!--/*列表 end*/-->
	</div>
	<%@ include file="/WEB-INF/jsps/common/bottomHelp.jsp"%>
	<%@ include file="/WEB-INF/jsps/common/footer.jsp"%>
</body>
</html>
