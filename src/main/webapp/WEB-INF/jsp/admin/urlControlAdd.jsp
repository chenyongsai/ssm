<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file = "../common/resources.jsp" %>

<div style="float: left;width: 20%;" class="container" id="content">
	<form id="addFrom" action="/admin/urlControlAdd" method="get" >
		<label>目录：</label>
		<select name="menu" class="form-control">
			<option value="2">用户模块</option>
			<option value="1">系统管理</option>
		</select>
		<br/>     
		<label>名称：</label>
		<input type="text" id="name" name="name" placeholder="名称" class="form-control"/><br/>    
		<label>路径：</label>
		<input type="text" id="url" name="url" placeholder="路径" class="form-control"/><br/>    
		<label>状态：</label>
		<select name="status" class="form-control">
			<option value="0">正常</option>
			<option value="1">注销</option>
		</select>
		<br/>    
		<label>排序：</label>
		<input type="text" id="orderBy" name="orderBy" placeholder="排序" class="form-control"/><br/>    
	    <br/>
	    <input type="button" class="btn btn-success" value="添加新权限" onclick="add()"/>
	    <input type="button" class="btn btn-success" onclick="requestUrl('/admin/urlControlList')" value="返回">        
	</form>    
</div>
<script type="text/javascript">
	function add(){
		$("#addFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/admin/urlControlList");
		});
	}
</script>