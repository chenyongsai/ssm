<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
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
  	<form id="update" action="updateUser" method="post">
  		<input name="id" value="${user.id }" type="hidden"/>
       	userName: <input id="name" name="name" value="${user.name}"/><br/>     
       	password: <input id="password" name="password" value="${user.password }"/><br/>
       	<input type="submit" value="更新用户"/>      
     </form>
  </body>    
</html>     