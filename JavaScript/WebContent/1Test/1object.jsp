<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Object(객체) 생성자와 new</title>
</head>
<body>
<script type="text/javascript">

/*생성자와 new를 사용하지 않음 */
	var person1 = { // Object는 중괄호{}로 시작
			"name" : "joo", // name은 Property이다. Property는 객체안에 들어 있는 변수이다.
			"introduce" : function() { // Method는 객체안에 있는 함수이다.
				return "My name is " + this.name + "<br />"; //this는 person1
			}
	}
	document.write(person1.introduce());
	
	var person2 = {
			"name" : "young",
			"introduce" : function() {
				return "My name is " + this.name + "<br />";
			}
	}
	document.write(person2.introduce());
/************************************************************************************************************/

	
/*new를 사용 */
	function person3(){}
	var p = new person3(); // 함수에 new를 붙이면 생성자가 된다. return 값은 객체가 된다. 현재 p는 빈 객체
		
	p.name ="lhs";
	p.introduce = function(){ // 익명 함수를 Property에 넣게되면 Method가 된다.
		return "My name is " + this.name + "<br />";
	}
	
	console.log(p);
	document.write(p.introduce());
/************************************************************************************************************/
		
	
/*생성자와 new사용 */
	function person(name){ // name은 property이다. 생성자는 객체에 대한 초기화(init(initialize))를 한다.
		this.name = name; // park 내용이 들어 옴. Property이다.
		this.introduce = function() { // introduce의 Property는 함수가 포함되어 있어 Method이다.
			return "My name is " + this.name + "<br />";
		}
	}
	
	var p1 = new person("park"); // p1이라는 변수에 객체를 담음. new가 들어가 person은 함수가 아닌 생성자가 됨. 인자 값는 park
	document.write(p1.introduce() + "<br />");
	
	var p2 = new person("cho");
	document.write(p2.introduce() + "<br />");
/************************************************************************************************************/
	
	
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

	
</script>
</body>
</html>