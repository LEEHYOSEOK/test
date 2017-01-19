<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prototype</title>
</head>
<body>
<script type="text/javascript">
	
/* prototype */
	function Ultra(){ 
		Ultra.prototype.ultraProp = true;
	}
	
	function Super(){ 
		Super.prototype = new Ultra(); //prototpe은 객체를 가리킴(prototype chain)
	}
	
	function Sub(){ 
		Sub.prototype = new Super();
	}
		
	var o = new Sub(); // Sub라는 객체가 생성

	console.log(o.ultraProp);

/************************************************************************************************************/
	
	
</script>
</body>
</html>