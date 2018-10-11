<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file="../common/resources.jsp"%>

<div style="float: left;width: 20%;" class="container" id="content">
	<form id="updateFrom" action="/admin/urlControlUpdate" method="post">
		<input name="id" value="${urlControl.id }" type="hidden"/>
	   	
	   	<label>目录：</label>
		<select name="menu" class="form-control" accesskey="${urlControl.menu }">
			<option value="2" <c:if test="${urlControl.menu==2 }">selected</c:if>>用户管理</option>
			<option value="1" <c:if test="${urlControl.menu==1 }">selected</c:if>>系统管理</option>
		</select>
		<br/>     
		<label>名称：</label>
		<input type="text" id="name" name="name" value="${urlControl.name }" placeholder="名称" class="form-control"/><br/>    
		<label>路径：</label>
		<input type="text" id="url" name="url" value="${urlControl.url }" placeholder="路径" class="form-control"/><br/>    
		<label>状态：</label>
		<select name="status" class="form-control" >
			<option value="0" <c:if test="${urlControl.status==0 }">selected</c:if>>正常</option>
			<option value="1" <c:if test="${urlControl.status==1 }">selected</c:if>>注销</option>
		</select>
		<br/>    
		<label>排序：</label>
		<input type="text" id="orderBy" name="orderBy" value="${urlControl.orderBy }" placeholder="排序" class="form-control"/><br/>    
	   	<br/>
	   	<input type="button" class="btn btn-success" value="更新权限" onclick="update()"/> 
	   	<input type="button" class="btn btn-success" onclick="requestUrl('/admin/urlControlList')" value="返回">     
	</form>
</div>
<script type="text/javascript">
	function update(){
		$("#updateFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/admin/urlControlList");
		});
	}
</script>