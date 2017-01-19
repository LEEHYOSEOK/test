<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Script 좋은 예제 test</title>
</head>
<body>

<ul>
	<li>a</li>
	<li>b</li>
	<li>c</li>
	
<script type="text/javascript">

/*** function ***/
	
// 기본
	function numbering () {
		var i = 0;
		while (i < 5) {
			document.write(i+"<br />");
			i += 1;
		}
	}
	numbering();
/************************************************************************************************************/
	
	
	// return 출력하기
	function get_member1(){
		return "abcde"; // return이 출력
	}
	document.write(get_member1() + "<br />");
/************************************************************************************************************/
	
	
// argument 사용하여 return 출력하기
	function get_argument(arg){ //arg는 매개변수(parameter)이다.
		return arg * 1000; // return이 출력
	}
	
	document.write(get_argument(1) + ","); //arg가 입력
	document.write(get_argument(2) + "<br />");
/************************************************************************************************************/
	
	
// 복수 argument 사용
	function get_arguments(arg1, arg2){ //arg는 매개변수(parameter)이다.
		return arg1 * arg2; // return이 출력
	}
	
	document.write(get_arguments(10, 20) + ",");
	document.write(get_arguments(20, 30) + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)
	function get_members () {
		return ["a1", "b2", "c3"]
	}
	var members = get_members();
	document.write(members[0] + ",");
	document.write(members[1] + ",");
	document.write(members[2] + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array) 응용
	function get_members1 () {
		return ["a1", "b2", "c3"]
	}
	
	members = get_members1();
	// members[i].toUpperCase()는 members[i]에 담긴 문자를 대문자로 변환해준다.
	document.write(members[0].toUpperCase()+",");
	document.write(members[1].toUpperCase()+",");
	document.write(members[2].toUpperCase()+"<br />");
/************************************************************************************************************/
	
	
// 배열 (array)와 반복문(for) 결합 사용
	function get_members1 () {
		return ["a1", "b2", "c3", "d4"]
	}
	
	members = get_members();
	// members.length는 배열에 담긴 값의 숫자를 알려준다. 
	for(var i = 0; i < members.length; i++) {
		 // members[i].toUpperCase()는 members[i]에 담긴 문자를 대문자로 변환해준다
		document.write(members[i].toUpperCase() + "<br />");
	}
/************************************************************************************************************/
	
	
	
	
	
/** if 문 **/

//prompt를 사용하여 원하는 Data를 입력받으면 "True", 아니면 "False" 표시
/* 자꾸 prompt 창이 떠서 귀찮아서 주석 걸어둠
	var id = prompt("ok라고 입력바람.");
	if(id == "ok"){
		var pw = prompt("no라고 입력 바람.")
		if (pw == "no"){
			document.write("no라고 입력함." + "<br />");
		} else {
			document.write("no라고 입력하세요." + "<br />");
		}
		document.write("ok라고 입력함." + "<br />");
	}
	else {
		document.write("ok라고 입력하세요." + "<br />");
	}
*/	
/************************************************************************************************************/
	
	if(j = 1){
			document.write(1);
			document.write(2);
			document.write(3);
			document.write(4+"<br />");	 
		} else {
			document.write(5+"<br />");
	}
/************************************************************************************************************/
	
	
	
	
	
/*** for 문 ***/
 
// 기본
	for (var f = 0; f < 5; f++) {
		document.write("f 값 ="+f+"<br />");
	}
/************************************************************************************************************/
	
	
	for (var i = 0; i < 2; i++) {
		numbering();
	}
/************************************************************************************************************/
	
	
	
/*** 배열 (array) ****/
 
 	// 기본
	var member = ["a1", "b1", "c1"];
	document.write (member[0] + ",");
	document.write (member[1] + ",");
	document.write (member[2] + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 크기 확인
	var arr = [1, 2, 3, 4, 5];
	document.write (arr.length + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 마지막  "단일" 원소(element)를 추가
	var arr = ["a", "b", "c", "d"];
	arr.push("e"); // push는 단일 원소를 끝에 추가해준다.
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 첫번째  "단일" 원소(element)를 추가
	var arr = ["a", "b", "c", "d"];
	arr.unshift("z"); // unshift는 단일 원소를 제일 앞에 추가해준다.
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 마지막  "복수" 원소(element)를 추가
	var arr = ["a", "b", "c", "d"];
	// concat은 복수 원소를 추가해준다. 복수이기 때문에 배열 형식으로 대괄호로 작성
	arr = arr.concat(["e", "f"]);
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 중간에  원소(element)를 추가
	var arr = ["a", "b", "c", "d"];
	// splice는  원소를 중간에 추가해준다.
	arr.splice(1, 2, "x", "y");	
	// (1은 추가 또는 삭제 배열의 인자를 의미, 2는 2개의 해당하는 원소를 삭제한다. 이 값이 0이면 어떠한 원소도 삭제되지 않는다, "x","y"는 추가될 원소 값)
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 첫번째  원소(element)를 제거
	var arr = ["a", "b", "c", "d"];
	// shift는 제일 첫번째 원소를 제거해준다.
	arr.shift();	
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 마지막  원소(element)를 제거
	var arr = ["a", "b", "c", "d"];
	// pop은 제일 마지막 원소를 제거해준다.
	arr.pop();	
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 원소(element)를 정렬
	var arr = ["c", "d", "a", "b"];
	// sort는 순서대로 정렬을 해준다. (원하는 순서대로 설정 가능)
	arr.sort();	
	document.write (arr + "<br />");
/************************************************************************************************************/
	
	
// 배열 (array)의 원소(element)를 역순으로 정렬
	var arr = ["c", "d", "a", "b"];
	// sort에서 revserse를 추가하면 역순서대로 정렬을 해준다. (원하는 순서대로 설정 가능)
	arr.sort().reverse();
	document.write (arr + "<br />");
/************************************************************************************************************/
	
		
// 배열 (array)과  반복문(for ~ in) 결합 사용
	var arr = ["a", "b", "c", "d"];
	for (var name in arr) {
		// 인자값과 원소값을 for ~ in문을 이용해서 출력한다.
		document.write("<li>인자 : " + name + ", 원소 : " + arr[name] + "</li>");
	}
/************************************************************************************************************/

	
/*** 객체 (Object) ****/
//배열은 자동으로 Value의 식별자가 숫자로 설정되지만, 객체는 원하는 내용으로 설정 할 수 있다.
//배열은 순서가 있지만, 객체는 Key와 Value가 있다.
	
	
// 기본
 	//배열과 달리 중괄호로 시작해서 중괄호로 끝난다.
 	var grade = {"a" : 10, "b" : 6, "c" : 83};
	
	document.write(grade["a"] + ","); // Object의 Key인 "c"를 대괄호안에 입력하면 값을 출력 할 수 있다.
	document.write(grade.a + "<br />");	// Object의 Key를 대괄호를 쓰지 않고 "c"를 입력하면 값을 출력 할 수 있다.
/************************************************************************************************************/

	
// 객체 응용_1
	var grade = {};
	// Object의 Key와 Value를 나누어 만들 수도 있다. 
	grade["a"] = 10;
	grade["b"] = 6;
	grade["c"] = 83;
	
	document.write(grade["b"] + ","); // Object의 Key인 "c"를 대괄호안에 입력하면 값을 출력 할 수 있다.
	document.write(grade.b + "<br />");	// Object의 Key를 대괄호를 쓰지 않고 ".c"를 입력하면 값을 출력 할 수 있다.
/************************************************************************************************************/

	
// 객체 응용_2
	// 중괄호{} 대신 "new Object();"를 입력 할 수도 있다.
	var grade = new Object();
	// Object의 Key와 Value를 나누어 만들 수도 있다. 
	grade["a"] = 10;
	grade["b"] = 6;
	grade["c"] = 83;
	
	document.write(grade["c"] + ","); // Object의 Key인 "c"를 대괄호안에 입력하면 값을 출력 할 수 있다.
	document.write(grade.c + "<br />");	// Object의 Key를 대괄호를 쓰지 않고 ".c"를 입력하면 값을 출력 할 수 있다.
/************************************************************************************************************/

	
// 객체 (Object)와  반복문(for ~ in) 결합 사용
	var grade = {"a" : 10, "b" : 6, "c" : 83};
	for (var name in grade) {
		// Key값과 Value값을 for ~ in문을 이용해서 출력한다.
		document.write("<li>key : " + name + ", value : " + grade[name] + "</li>");
	}
/************************************************************************************************************/


// 객체 (Object)지향 프로그래밍
	var grade = {
		"list" : {"a" : 10, "b" : 6, "c" : 83},
		"list1" : {"a" : 10}, // 객체 (Object)안에 객체 (Object)를 넣을 수 있다.
		"list2" : {"b" : 6}, // 객체 (Object)안에 또 다른 객체 (Object)를 넣을 수도 있다.
		"list3" : function(c) { //객체 (Object)안에 함수를 넣을 수도 있다.
			var c = 83;
			document.write(c + "<br />");
		},
		"list4" : function() {
			for(var name in this.list){ //this를 사용
				document.write(name + " : " + this.list[name] + "<br />");
			}
		}
	}
	document.write(grade["list1"]["a"] + ",");
	document.write(grade["list2"]["b"] + ",");
	grade["list3"]();
	grade.list4();
/************************************************************************************************************/
		
	
	
	
</script>
</ul>
</body>
</html>