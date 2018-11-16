<%@ page language="java" pageEncoding="UTF-8"%>

<div id="pagination"></div>

<script type="text/javascript">
$(function(){
	$('#pagination').pagination({
		totalData:${pageTotal},//数据总条数
	   	pageCount:${pages},//总页数
	   	current:${pageNum},//当前第几页
	    coping: true,//首页和尾页
	    homePage: '首页',
	    endPage: '末页',
	    prevContent: '上页',
	    nextContent: '下页',
		callback: jumpPage
	});
   
	function jumpPage(index){
		$("#pageNum").val(index);
		$("#ajaxForm").ajaxSubmit(loadData);
   	}
   
	function loadData(data){
		$("#content").html(data);
	}
})
</script>
<style type="text/css">
#pagination {
	height: 40px;
	line-height: 40px;
	width: 100%;
	margin-top: 20px;
	text-align: center;
}

#pagination .active {
	color: #c41929;
	border: 1px solid transparent;
	background: #e3e3e3;
	font-size: 14px;
	padding: 3px 4px;
	margin-right: 10px;
}

#pagination a, #pagination span {
	border: 1px solid #cdcdcd;
	background: #fff;
	font-size: 14px;
	padding: 3px 4px;
	color: #000;
	margin-right: 10px;
}

#pagination a.jump-btn {
	margin-right: 20px;
	margin-left: 20px;
}

#pagination input {
	height: 18px;
	line-height: 18px;
	width: 30px;
}
</style>