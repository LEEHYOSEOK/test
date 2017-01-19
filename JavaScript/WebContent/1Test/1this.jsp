<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this 예제</title>
</head>
<body>
	
<script type="text/javascript">

/*** this ***/
	
// 함수 호출
	function func(){
	    if(window === this){
	        document.write("window === this <br />");
	    }
	}
	
	func(); 
	
	
// 메소드 호출	
	var o = {
	    func : function(){
	        if(o === this){
	            document.write("o === this <br />");
	        }
	    }
	}
	
	o.func();   
	
	
// 생성자 호출
	var funcThis = null;
	
	function Func() {
		funcThis = this; // var이 앞에 없어 전역변수이다. this가 funcThis 값이 된다.
	}
	var o1 = Func(); // 일반 함수 호출
	if(funcThis === window){
		document.write("window <br />");
	}
	
	var o2 = new Func(); // 생성자 호출
	if(funcThis === o2){
		document.write("o2 <br />");
	}
	
	
// apply, this
	var a = {}
	var b = {}
	
	function func(){
		switch(this){ // this는 window를 의미한다.
		case a:
			document.write("a<br />");
			break;
		case b:
			document.write("b<br />");
			break;
		case window:
			document.write("window<br />");
			break;
		}
	}
	
	func();
	func.apply(a); // apply는 에크마스크립트에 정의되어 있는 표준 Method이다.
	func.apply(b);
	
</script>
</body>
</html>
