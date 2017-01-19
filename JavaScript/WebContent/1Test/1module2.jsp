<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>JS jQuery</title>
	<script src="jquery-1.11.2.js" type="text/javascript"></script>
</head>
<body>
	<ul id="list">
		<li>empty</li>
		<li>empty</li>
		<li>empty</li>
		<li>empty</li>
		<li>empty</li>
	</ul>
	<input type="button" value="Execute" id="execute_btn" />
	<script type="text/javascript">
	//jquery는 항상 $(달러)로 시작된다. id값은 #(샾)으로 인식. list의 하위 내용인 li의 내용 변경 
	//$("#list li").text("not empty");
	$("#execute_btn").click(function(){
		$("#list li").text("not empty");
	})
	</script>
</body>
</html>