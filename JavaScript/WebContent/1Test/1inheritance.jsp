<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상속</title>
</head>
<body>
<script type="text/javascript">
	
/* 상속을 사용 */
	function person4(name){ // name은 property이다. 생성자는 객체에 대한 초기화(init(initialize))를 한다.
		this.name = name; // park 내용이 들어 옴. Property이다.
	}
	
	person4.prototype.name=null;
	person4.prototype.introduce = function(){
		return "My name is " + this.name + "<br />";		
	}

	
	var p1 = new person4("ryu"); // p1이라는 변수에 객체를 담음. new가 들어가 person은 함수가 아닌 생성자가 됨. 인자 값는 park
	document.write(p1.introduce() + "<br />");
/************************************************************************************************************/
	
	
/* 상속을 사용 */
	function person5(name){ // name은 property이다. 생성자는 객체에 대한 초기화(init(initialize))를 한다.
		this.name = name; // park 내용이 들어 옴. Property이다.
	}
	
	person5.prototype.name=null;
	person5.prototype.introduce = function(){
		return "My name is " + this.name + "<br />";		
	}

	function programmer(name){
		this.name = name;
	}
	programmer.prototype = new person5();
	
	var p1 = new programmer("lee"); // p1이라는 변수에 객체를 담음. new가 들어가 person은 함수가 아닌 생성자가 됨. 인자 값는 park
	document.write(p1.introduce() + "<br />");
/************************************************************************************************************/


/* 상속을 사용 */
	function person6(name){ // name은 property이다. 생성자는 객체에 대한 초기화(init(initialize))를 한다.
		this.name = name; // park 내용이 들어 옴. Property이다.
	}
	
	person6.prototype.name=null;
	person6.prototype.introduce = function(){
		return "My Nickname is " + this.name + "<br />";		
	}
	
	function programmer(name){
		this.name = name;
	}
	programmer.prototype = new person6();
	programmer.prototype.coding = function(){
		return "coding hard..";
	}
	
	function designer(name){
		this.name = name;
	}
	designer.prototype = new person6();
	designer.prototype.design = function(){
		return "design beautiful!";
	}
	
	var p1 = new programmer("hiker"); // p1이라는 변수에 객체를 담음. new가 들어가 person은 함수가 아닌 생성자가 됨. 인자 값는 park
	document.write(p1.introduce() + "<br />");
	document.write(p1.coding() + "<br />");
	
	var p2 = new designer("ryu");
	document.write(p2.introduce() + "<br />");
	document.write(p2.design() + "<br />");
/************************************************************************************************************/
	
	
</script>
</body>
</html>