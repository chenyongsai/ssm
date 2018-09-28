<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<table>
			<thead>
				<tr><td colspan="3"><a href="/user/toAdd">添加用户</a></tr>
				<tr>
					<td>用户</td>
					<td>密码</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${uList}" var="ul">
					<tr>
						<td>${ul.name }</td>
						<td>${ul.password }</td>
						<td>
							<a href="/user/userInfo?id=${ul.id}">详情</a>
							<a href="/user/deleteUser?id=${ul.id}">删除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
  </body>    
</html>     