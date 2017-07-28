<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
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
<body bgcolor="#ffe">


<!-- jquery 相关 -->
<script src="${basePath }/static/jquery/jquery.js"></script>
<script src="${basePath }/static/portamento/portamento.js"></script>

	<button id="show">show</button>
	<button id="hidden">hidden</button>

	<!-- 浮动层 -->
	<div id="sidebar">
		<span class="glyphicon glyphicon-paperclip" style="color: rgb(0, 0, 0);"> Paperclip</span> 以下书籍已选中：
	</div>

	<script>
		$(function() {

			$("#hidden").click(function() {
				$("#sidebar").hide();
			});

			$("#show").click(function() {
				$("#sidebar").show();
			});

			$('#sidebar').portamento({
				disableWorkaround : false
			});
		});
	</script>















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

	<br> 000000000000000000000000
</body>
</html>