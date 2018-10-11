<%@ page language="java" pageEncoding="UTF-8"%>

<div style="float: left; width: 10%;">
	<span class="btn btn-default btn-block">目录</span>
	<ul style="list-style:none" class="navbar-default navbar-collapse collapse">
		<li>
			<p class="btn btn-info btn-block" id="list-1" onclick="showList(1);">系统管理</p>
			<div class="hidden" id="list-1-div">
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/admin/urlControlList');">权限列表</p>
			</div>
		</li>
		<li>
			<p class="btn btn-info btn-block" id="list-2" onclick="showList(2)">用户模块</p>
			<div class="hidden" id="list-2-div">
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/user/userList');"><a href="#">用户列表</a></p>
			</div>
		</li>
	</ul>
</div>
<div style="float: left;width: 90%;" class="container" id="content">
	<div class="jumbotron">
		<h1>this is you workspace</h1>
		<p>这是你的工作空间</p>
	</div>
</div>
<script type="text/javascript">

	$(function() {
		showList(${showName});
	});

	function showList(id){
		var classValue = $("#list-"+id+"-div").attr("class");
		if(classValue=="show"){
			$("#list-"+id+"-div").attr("class","hidden");
		}else if(classValue=="hidden"){
			$("#list-"+id+"-div").attr("class","show");
		}
	}
	
	function active(obj){
		$.each($("p"), function() {     
		    $(this).removeClass("active");
		}); 
		$(obj).addClass("active");
	}
	
	function requestUrl(url){
		 $.ajax({
             url : url,
             cache : false,
             type : 'GET',
             success : function(data) {
            	 $("#content").html(data);
             },
             error : function(error) {
                  alert("页面获取有误！");
             }
        });       
		
	}
	
</script>