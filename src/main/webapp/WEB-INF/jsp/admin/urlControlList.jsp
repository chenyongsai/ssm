<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../common/resources.jsp"%>

<table class="table table-bordered table-hover" >
	<thead>
		<tr>
			<td colspan="6"><a class="btn btn-success" onclick="requestUrl('${path}/admin/urlControlAddJsp')">添加权限</a>
		</tr>
		<tr>
			<td>目录</td>
			<td>名称</td>
			<td>URL</td>
			<td>状态</td>
			<td>排序</td>
			<td>操作</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${urlList}" var="obj">
			<tr>
				<td>${obj.menuStr }</td>
				<td>${obj.name }</td>
				<td>${obj.url }</td>
				<td>${obj.statusStr }</td>
				<td>${obj.orderBy }</td>
				<td>
					<a class="btn btn-success btn-sm" onclick="requestUrl('${path}/admin/urlControlInfo?id=${obj.id}')">详情</a>
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
            url : "${path}/admin/urlControlDelete",
            cache : false,
            data :{"id":id},
            type : 'GET',
            success : function(data) {
            	alert("删除成功!");
		    	requestUrl("${path}/admin/urlControlList");
            },
            error : function(error) {
                 alert("页面获取有误！");
            }
       });   
	}
</script>