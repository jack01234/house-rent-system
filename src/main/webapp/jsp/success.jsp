<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>青鸟租房-操作成功</title>
<link type="text/css" rel="stylesheet" href="<%=path%>/css/style.css" />
</head>
<body>
	<s:include value="header.jsp"></s:include>
	<div id="regLogin" class="wrap">
		<div class="dialog">
			<div class="box">
				<div class="msg">
					<p>
						恭喜：操作成功！<a href="<%=path%>/manage.jsp;">返回首页</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<s:include value="footer.jsp"></s:include>
</body>
</html>