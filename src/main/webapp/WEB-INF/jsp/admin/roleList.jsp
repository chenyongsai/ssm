<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../common/resources.jsp"%>

<table class="table table-bordered table-hover" >
	<thead>
		<tr>
			<td colspan="6"><a class="btn btn-success" onclick="requestUrl('/admin/roleAddJsp')">添加权限</a>
		</tr>
		<tr>
			<td>名称</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${roleList}" var="obj">
			<tr>
				<td>${obj.name }</td>
				<td>${obj.statusStr }</td>
				<td>
					<a class="btn btn-success btn-sm" onclick="requestUrl('/admin/roleInfo?id=${obj.id}')">详情</a>
					<a class="btn btn-danger btn-sm" onclick="del('${obj.id}')">删除</a>
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
            url : "/admin/roleDelete",
            cache : false,
            data :{"id":id},
            type : 'GET',
            success : function(data) {
            	alert("删除成功!");
		    	requestUrl("/admin/roleList");
            },
            error : function(error) {
                 alert("页面获取有误！");
            }
       });   
	}
</script>