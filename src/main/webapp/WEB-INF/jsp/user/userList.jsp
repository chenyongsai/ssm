<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../common/resources.jsp"%>

<table class="table table-bordered table-hover" >
	<thead>
		<tr>
			<td colspan="3"><a class="btn btn-success" onclick="requestUrl('/user/userAddJsp')">添加用户</a>
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
					<a class="btn btn-success btn-sm" onclick="requestUrl('/user/userInfo?id=${ul.id}')">详情</a>
					<a class="btn btn-danger btn-sm" onclick="del('${ul.id}')">删除</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script type="text/javascript">
	function del(id){
		if(!confirm("确认删除吗")){
			return false;
		}
		$.ajax({
            url : "/user/userDelete",
            cache : false,
            data :{"id":id},
            type : 'GET',
            success : function(data) {
            	alert("删除成功!");
		    	requestUrl("/user/userList");
            },
            error : function(error) {
                 alert("页面获取有误！");
            }
       });   
	}
</script>