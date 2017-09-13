<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'center.jsp' starting page</title>
    
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
  </body>
</html>
