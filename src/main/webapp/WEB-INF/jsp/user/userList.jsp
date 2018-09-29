<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ include file="../common/resources.jsp"%>

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
		<table class="table table-bordered table-hover" >
			<thead>
				<tr>
					<td colspan="3"><a class="btn btn-success" href="/user/toAdd">添加用户</a>
				</tr>
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
						<td><a class="btn btn-success btn-sm"
							href="/user/userInfo?id=${ul.id}">详情</a> <a
							class="btn btn-danger btn-sm" href="/user/deleteUser?id=${ul.id}">删除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
