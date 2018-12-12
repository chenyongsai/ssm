/*
 * 自定义js
 */

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

function ajaxForm(url){
	$.ajax({
         url : url,
         data:$("#ajaxForm").serialize(),
         type : 'GET',
         success : function(data) {
        	 $("#content").html(data);
         },
         error : function(error) {
              alert("页面获取有误！");
         }
    });       
}


