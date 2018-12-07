<%@ page language="java" pageEncoding="UTF-8"%>

<div style="float: left; width: 10%;padding-left: 10px;">
	<span class="btn btn-default btn-block">目录</span>
	<ul style="list-style:none;padding-left: 0px;padding-right: 0px" class="navbar-default navbar-collapse collapse" >
		<li>
			<p class="btn btn-info btn-block" id="list-1" onclick="showList(1);">系统管理</p>
			<div class="hidden" id="list-1-div">
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/admin/urlControlList');">权限列表</p>
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/admin/roleList');">角色列表</p>
			</div>
		</li>
		<li>
			<p class="btn btn-info btn-block" id="list-2" onclick="showList(2)">用户模块</p>
			<div class="hidden" id="list-2-div">
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/user/userList');"><a href="#">用户列表</a></p>
				<p class="btn btn-default btn-block btn-sm" onclick="active(this);requestUrl('/user/userListPage');"><a href="#">用户分页列表</a></p>
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
