<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    

<%@ include file = "../common/resources.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">    
<html>
  <head>
    <title>My JSP 'userinfo.jsp' starting page</title>    
    <meta http-equiv="pragma" content="no-cache">    
    <meta http-equiv="cache-control" content="no-cache">    
    <meta http-equiv="expires" content="0">        
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">    
    <meta http-equiv="description" content="This is my page">    
  </head>    
      
  <body>    
  	<%@ include file="../common/top.jsp"%>
  	<%@ include file="../common/list.jsp"%>
  	<div style="float: left;width: 90%;" class="container" >
	    <form id="addUser" action="addUser" method="post">     
	        <span class="glyphicon glyphicon-user"></span>&nbsp&nbsp<input type="text" id="name" name="name" placeholder="username" /><br/>     
	        <span class="glyphicon glyphicon-lock"></span>&nbsp&nbsp<input type="password" id="password" name="password" placeholder="Password" /><br/>    
	        <br/>
	        <input type="submit" class="btn btn-success" value="添加新用户"/>
	        <input type="button" class="btn btn-success" onclick="javascript:history.back(-1);" value="返回">        
	    </form>    
    </div>
  </body>    
</html>     