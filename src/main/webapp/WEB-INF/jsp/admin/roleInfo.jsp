<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file="../common/resources.jsp"%>

<div style="float: left;width: 20%;" class="container" id="content">
	<form id="updateFrom" action="/admin/roleUpdate" method="post">
		<input name="id" value="${role.id }" type="hidden"/>
	   	
		<label>名称：</label>
		<input type="text" id="name" name="name" value="${role.name }" placeholder="名称" class="form-control"/><br/>    
		<label>状态：</label>
		<select name="status" class="form-control" >
			<option value="0" <c:if test="${role.status==0 }">selected</c:if>>正常</option>
			<option value="1" <c:if test="${role.status==1 }">selected</c:if>>注销</option>
		</select>
		<br/>    
	   	<input type="button" class="btn btn-success" value="更新角色" onclick="update()"/> 
	   	<input type="button" class="btn btn-success" onclick="requestUrl('/admin/roleList')" value="返回">     
	</form>
</div>
<script type="text/javascript">
	function update(){
		$("#updateFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/admin/roleList");
		});
	}
</script>