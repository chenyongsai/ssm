<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file="../common/resources.jsp"%>

<form id="updateFrom" action="/user/userUpdate" method="post">
	<input name="id" value="${user.id }" type="hidden"/>
   	<span class="glyphicon glyphicon-user"></span>&nbsp&nbsp<input id="name" name="name" value="${user.name}"/><br/>     
   	<span class="glyphicon glyphicon-lock"></span>&nbsp&nbsp<input id="password" name="password" value="${user.password }"/><br/>
   	<br/>
   	<input type="button" class="btn btn-success" value="更新用户" onclick="update()"/> 
   	<input type="button" class="btn btn-success" onclick="requestUrl('/user/userList')" value="返回">     
</form>

<script type="text/javascript">
	function update(){
		$("#updateFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/user/userList");
		});
	}
</script>