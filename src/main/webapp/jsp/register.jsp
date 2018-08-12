<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="uri"  prefix="prefix" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>青鸟租房 - 用户注册</title>
<link type="text/css" rel="stylesheet" href="<%=path%>/css/style.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.2.js"></script>
<script type="text/javascript">
//验证用户名
function validateName() {
	var name=$("#Name").attr('value');//获取输入框信息
	$("#validateName").html("");
	var reg = /^\w{4,16}$/;
	if (!reg.test(name)) {
		$("#validateName").html("用户名必须由数字、下划线或字母字符组成的4-16位字符");
		$("#validateName").css("color","red");
		return false;
	} else {
		var url = 'validateName?user.username='+name;
		$.ajax({
			url:url,
			dataType:"json",
			success:function(data){
				 //alert(data);
				   if(data=='true'){
					$("#validateName").html("用户名可以使用");
					$("#validateName").css("color","green");
				}else{
					$("#validateName").html("用户名已存在");
					$("#validateName").css("color","red");
				}   
			}
		});
		return true;
	}
	
}
//验证密码
function pwdBlur() {
	var passWord = $("#passWord").attr('value');
	$("#pwdMess").html("");
	var reg = /^[a-zA-Z0-9]{6,20}$/;
	if (!reg.test(passWord)) {
		$("#pwdMess").html("密码可由大小写英文字母、数字组成，长度6－20个字符");
		$("#pwdMess").css("color","red");
		return false;
	} else {
		return true;
	}
}
//密码一致性验证
function repwdBlur() {
	var passWord = $("#passWord").attr('value');
	var repwd = $("#repwd").attr('value');
	$("#repwdMess").html("");
	if (passWord==repwd) {
		return true;
	}else {
		$("#repwdMess").html("两次密码输入不一致");
		$("#repwdMess").css("color","red");
		return false;
	}
}
//验证电话
function phoneBlur() {
	var phone = $("#phone").attr('value');
	$("#phoneMess").html("");
	var reg = /^[0-9]{11,11}$/;
	if (!reg.test(phone)) {
		$("#phoneMess").html("电话号码必须为11位数字");
		$("#phoneMess").css("color","red");
		return false;
	} else {
		return true;
	}
}
//提交验证
function check(){
	if(validateName()==true&&pwdBlur()==true&&repwdBlur()==true&&phoneBlur()==true){
		return true;
	}else{
		return false;
	}
}
</script>
</head>
<body>
	<s:include value="header.jsp"></s:include>
	<div id="regLogin" class="wrap">
		<div class="dialog">
			<dl class="clearfix">
				<dt>新用户注册</dt>
				<dd class="past">填写个人信息</dd>
			</dl>
			<div class="box">
				<form method="post" id="fromasdf" action="register" onsubmit="return check()">
					<div class="infos">
						<table class="field">
							<tr>
								<td class="field">用户名：</td>
								<td><s:textfield type="text" cssClass="text" name="user.username" id="Name" value="" onblur="validateName()"/><font id="validateName"></font></td>
							</tr>
							<tr>
								<td class="field">密 码：</td>
								<td><s:password type="password" cssClass="text"
										name="user.password" id="passWord" onBlur="pwdBlur()"/><font id="pwdMess"></font></td>
								
							</tr>
							<tr>
								<td class="field">确认密码：</td>
								<td><s:password type="password" cssClass="text"
										name="repassword" id="repwd" onBlur="repwdBlur()"/><font id="repwdMess"></font></td>
								
							</tr>
							<tr>
								<td class="field">电话：</td>
								<td><s:textfield type="text" cssClass="text"
										name="user.telephone" id="phone" onblur="phoneBlur()"/><font id="phoneMess"></font></td>
								
							</tr>
							<tr>
								<td class="field">用户姓名：</td>
								<td><s:textfield type="text" cssClass="text"
										name="user.realname" id="realname"/><font id="realMess"></font></td>
							</tr>
						</table>
						
					</div>
					 <div class="button">
						<input type="submit" value="立即注册" >
					</div>
					<s:token/> 
				</form>
			</div>
		</div>
	</div>
	<s:include value="footer.jsp"></s:include>
</body>
</html>