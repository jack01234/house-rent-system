<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>青鸟租房-操作失败</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
</head>
<body>
<s:include value="header.jsp"></s:include>
<div id="regLogin" class="wrap">
  <div class="dialog">
	<div class="box">
	<h4>操作失败</h4>
	
	<div class="infos">
	<s:property value="message"/>,<a href="javascript:window.history.back();">返回</a><br/>
	错误信息：
	<hr/>
	<s:actionerror/>
	</div>
	
	</div>
 </div>
</div>
<s:include value="footer.jsp"></s:include>
</body>
</html>