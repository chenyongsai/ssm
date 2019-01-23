<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../common/resources.jsp"%>

<form id="ajaxForm" action="${path}/user/userListPage">
<input type="hidden" name="pageNum" id="pageNum" value="1"/>

<table class="table table-bordered table-hover" >
	<thead>
		<tr>
			<td colspan="3">用户名：<input type="text" id="name" name="name" placeholder="username" value="${user.name }" />
			密码：<input type="text" id="Password" name="Password" placeholder="Password" value="${user.password }"/>
			<span class="btn btn-success" onclick="ajaxForm('${path}/user/userListPage')">查询</span>
			</td>
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
				<td>
					<a class="btn btn-success btn-sm" onclick="requestUrl('${path}/user/userInfo?id=${ul.id}')">详情</a>
					<a class="btn btn-danger btn-sm" onclick="del('${ul.id}')">删除</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</form>
<%@ include file="../common/page.jsp"%>
<script type="text/javascript">
	function del(id){
		if(!confirm("确认删除吗")){
			return false;
		}
		$.ajax({
            url : "${path}/user/userDelete",
            cache : false,
            data :{"id":id},
            type : 'GET',
            success : function(data) {
            	alert("删除成功!");
		    	requestUrl("${path}/user/userList");
            },
            error : function(error) {
                 alert("页面获取有误！");
            }
       });   
	}
	
</script>