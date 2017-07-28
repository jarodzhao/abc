<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"  %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
	//获取后台传递的类别列表
	@SuppressWarnings("unchecked")
	List<String> type_list = (List<String>) request.getAttribute("type_list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title>书籍借阅管理系统</title>

<!-- jquery 相关 -->
<script src="${basePath }/static/jquery/jquery.js"></script>

<!-- bootstrap 相关 -->
<script src="${basePath }/static/bootstrap/js/bootstrap.min.js"></script>

<!-- bootstrap-table 相关 -->
<link href="${basePath }/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${basePath }/static/bootstrap-table/bootstrap-table.css" rel="stylesheet">

<script type="text/javascript" src="${basePath }/static/bootstrap-table/bootstrap-table.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/locale/bootstrap-table-zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/export/bootstrap-table-export.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/export/tableExport.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/blockui/jquery.blockUI.min.js"></script>

<link rel="stylesheet" href="${basePath }/static/jquery/jquery.searchableSelect.css" />
<script type="text/javascript" src="${basePath }/static/jquery/jquery.searchableSelect.js"></script>

<!-- x-editable 相关 -->
<link rel="stylesheet" href="${basePath}/static/x-editable/bootstrap-editable.css" />
<script type="text/javascript" src="${basePath}/static/x-editable/bootstrap-editable.js"></script>

<script type="text/javascript" src="${basePath }/js/index.js"></script>

<style type="text/css">
.nav, a {
	color: #00f;
}
body, input {
	font-size: 12px;
	margin: 0;
}
#wrapper {
	overflow: hidden;
}

#content {
	width: 486px;
	margin-right: 10px;
	float: left;
	min-height: 1200px;
}

#sidebar {
	font-size: 12px;
	color: #666;
	border: solid 1px #ddd;
	width: 280px;
	background: #fff;
	padding: 10px;
	float: right;
	height: 400px;
}

#portamento_container {
	float: right;
	position: relative;
}

#portamento_container #sidebar {
	float: none;
	position: absolute;
}

#portamento_container #sidebar.fixed {
	position: fixed;
}
</style>
</head>
<body>

<script src="${basePath }/static/portamento/portamento.js"></script>

	<div id="sidebar">要滑动的元素!!</div>
	
	<jsp:include page="toolbar.jsp"></jsp:include>

	<hr style="size: 0px;">

	<div class="row">

		<div class="col-xs-12">

			<!--列表-->

			<div class="widget-box">

				<div class="widget-header clearfix" id="toolbar">

					<div class="widget-header-btn form-inline pull-left">

						<div class="pull-left">
							<!--span class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true">
									<span class="glyphicon glyphicon-stats"></span> 书籍类别 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
									<c:forEach items="${type_list}" var="type">
										<li><a href="#" onclick="getType('${type}')">${type}</a></li>
									</c:forEach>
									<li role="separator" class="divider"></li>
									<li><a href="#" onclick="getType()">所有类别</a></li>
								</ul>
							</span-->
							<button class="btn btn-sm btn-default" type="button" data-toggle="modal"
									 data-target="#myModal-plus">
								<i class="glyphicon glyphicon-import"></i> 归还
							</button>
							<button class="btn btn-sm btn-default" type="button" onclick="jiechu()">
								<i class="glyphicon glyphicon-export"></i> 借出
							</button>
							<!-- button class="btn btn-sm btn-default red" type="button" onclick="deleteMethod()">
								<i class="glyphicon glyphicon-trash"></i> 删除
							</button>
							<button id="set" class="btn btn-sm btn-default" type="button" onclick="quitMethod()">
								<i class="glyphicon glyphicon-stats"></i> 设置分类
							</button -->
						</div>
					</div>
				</div>


				<div class="widget-body">
					<div class="widget-main">
						<div class="table-responsive">
							<table id="report0" class="table table-striped table-hover"></table>
						</div>
					</div>
				</div>
			</div>
			<!--列表-->

		</div>
	</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>0000000000000000000000000
</body>
</html>
