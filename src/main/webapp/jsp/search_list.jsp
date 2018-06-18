<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script type="text/javascript">
		function toUrl(url){
			window.location.href = url;
			return;
		}
		
		function doSearch(){
			document.getElementById("pageForm").submit();
    		//$('#pageForm').submit();
		}
	</script>

<style type="">
br{
	display:none;
}
</style>
</head>
<body>
<div id="navbar" class="wrap">
	<dl class="search clearfix">
		<s:form method="get" action="house!findAll.action" id='findFrom'>
			<dt>
				<ul>
					<li class="bold">房屋信息</li>
					<li>
						标题：
						<s:textfield name="house.title" id="title" cssClass="text" />
						<label class="ui-blue">
							<input type="button" onclick="doSearch();" name="search" value="搜索房屋" />
						</label>
					</li>
				</ul>
			</dt>
			<dd>
				<ul>
					<li class="first">
						价格
					</li>
					<li>
						<s:select list="#{'<=1000':'1000元及以下', '>1000,<2000':'1000元—2000元', '>=2000':'2000元及以上'}" listKey="key" listValue="value" headerKey="" headerValue="不限" name="price" value="price"></s:select>
					</li>
				</ul>
			</dd>
			<dd>
				 <ul>
					<li class="first">房屋位置</li>
					<li>
						<%-- <s:doubleselect list="dislist" listKey="id" 
						listValue="name" headerKey="" 
						headerValue="不限" name="districtId" 
						doubleList="streetMap.get(top.id)" 
						doubleListKey="id" doubleListValue="name" doubleName="house.street.id" 
						doubleHeaderKey="" doubleHeaderValue="不限">
						</s:doubleselect>  --%>
						
						<s:doubleselect name="district" list="streetMap.keySet()" 
						listKey="id" listValue="name"
						doubleName="street" doubleList="streetMap.get(top)" 
						doubleListKey="id"
						doubleListValue="name"/>
					</li>
				</ul> 
			</dd>
			<dd>
				<ul>
					<li class="first">房型</li>
					<li>
					 <s:select list="typelist" name="house.HouseType.id" listKey="id" listValue="name" headerKey="" headerValue="不限">
					</s:select> 
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">
						面积
					</li>
					<li>
						<s:select list="#{'<=40':'40及以下', '>40,<80':'40-80', '>=80':'80及以上'}" listKey="key" listValue="value" headerKey="" headerValue="不限" name="floorage" value="floorage"></s:select>
					</li>
				</ul>
			</dd>
		</s:form>
	</dl>
</div>
</body>
</html>