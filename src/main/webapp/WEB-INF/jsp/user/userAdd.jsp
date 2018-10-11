<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file = "../common/resources.jsp" %>

<form id="userFrom" action="/user/userAdd" method="get">     
    <span class="glyphicon glyphicon-user"></span>&nbsp&nbsp<input type="text" id="name" name="name" placeholder="username" /><br/>     
    <span class="glyphicon glyphicon-lock"></span>&nbsp&nbsp<input type="password" id="password" name="password" placeholder="Password" /><br/>    
    <br/>
    <input type="button" class="btn btn-success" value="添加新用户" onclick="addUser()"/>
    <input type="button" class="btn btn-success" onclick="requestUrl('/user/userList')" value="返回">        
</form>    

<script type="text/javascript">
	function addUser(){
		$("#userFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/user/userList");
		});
	}
</script>