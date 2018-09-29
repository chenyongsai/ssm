<%@ page language="java" pageEncoding="UTF-8"%>

<div style="float: left; width: 10%;">
	<span class="btn btn-default btn-block">目录</span>
	<ul style="list-style:none" class="navbar-default navbar-collapse collapse">
		<li>
			<p class="btn btn-info btn-block" id="list-1" onclick="showList(1);">HOME1</p>
			<div class="hidden" id="list-1-div">
				<p class="btn btn-default btn-block btn-sm" ><a href="#">home</a></p>
				<p class="btn btn-default btn-block btn-sm"><a href="#">home</a></p>
			</div>
		</li>
		<li>
			<p class="btn btn-info btn-block" id="list-2" onclick="showList(2)">HOME2</p>
			<div class="hidden" id="list-2-div">
				<p class="btn btn-default btn-block btn-sm"><a href="#">home2</a></p>
				<p class="btn btn-default btn-block btn-sm"><a href="#">home2</a></p>
			</div>
		</li>
	</ul>
</div>

<script type="text/javascript">
	function showList(id){
		active($(this));
		var classValue = $("#list-"+id+"-div").attr("class");
		if(classValue=="show"){
			$("#list-"+id+"-div").attr("class","hidden");
		}else if(classValue=="hidden"){
			$("#list-"+id+"-div").attr("class","show");
		}
	}
	
	function active(obj){
		alert(obj);
		$(obj).addClass(active);
	}
</script>