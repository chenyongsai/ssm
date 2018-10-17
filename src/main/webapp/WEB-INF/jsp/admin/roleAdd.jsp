<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>    
<%@ include file = "../common/resources.jsp" %>

<div style="float: left;width: 20%;" class="container" id="content">
	<form id="addFrom" action="/admin/roleAdd" method="get" >
		<label>名称：</label>
		<input type="text" id="name" name="name" placeholder="名称" class="form-control"/><br/>    
		<label>状态：</label>
		<select name="status" class="form-control">
			<option value="0">正常</option>
			<option value="1">注销</option>
		</select>
		<br/>    
	    <input type="button" class="btn btn-success" value="添加新角色" onclick="add()"/>
	    <input type="button" class="btn btn-success" onclick="requestUrl('/admin/roleList')" value="返回">        
	</form>    
</div>
<script type="text/javascript">
	function add(){
		$("#addFrom").ajaxSubmit(function(){
		    alert("提交成功！");
		    requestUrl("/admin/roleList");
		});
	}
</script>