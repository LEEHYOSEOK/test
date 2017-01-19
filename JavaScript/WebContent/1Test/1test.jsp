<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
function writeCheck()
 {
	var form = document.writeform;
	
	if( !form.name.value) // form 에 있는 name 값이 없을 때
 	{
	 	alert("이름을 적어주세요"); //경고창 띄움
	 	form.name.focus(); // form 에 있는 name 위치로 이동
	 	return;
 	}
	
	if( !form.password.value) // form 에 있는 name 값이 없을 때
 	{
	 	alert("비밀번호를 적어주세요"); //경고창 띄움
	 	form.password.focus(); // form 에 있는 password 위치로 이동
	 	return;
 	}
	
	if( !form.title.value) // form 에 있는 name 값이 없을 때
 	{
	 	alert("제목을 적어주세요"); //경고창 띄움
	 	form.title.focus(); // form 에 있는 title 위치로 이동
	 	return;
 	}

	if( !form.memo.value) // form 에 있는 name 값이 없을 때
 	{
	 	alert("내용을 적어주세요"); //경고창 띄움
	 	form.memo.focus(); // form 에 있는 memo 위치로 이동
	 	return;
 	}
	
	form.submit();
 }
 
 
 if(true){
		document.write(1);
		document.write(2);
		document.write(3);
		document.write(4);	 
	} else {
		document.write(5);
 }
	
	

</script>
<html>
<head><title>Test</title></head>
<body>
 int total = 0;{
	for (int i = 1; i <= 100; i ++) {
		total += i;
	}
	document.write("total"); // 1부터 100 합

	}

<br />
------------------------------------------------------------------------------------------------------------------------
<br />

<%
	int result = 70;
%>

<% 
	if (result >= 100)
		out.println("굿");
	else if (result >= 80)
		out.println("배드80");
	else if (result >= 70)
		out.println("배드70");
	else if (result >= 60)
		out.println("배드60");
	else if (result >= 50)
		out.println("배드50");
	else
		out.println("그만");
%>

<br />
------------------------------------------------------------------------------------------------------------------------
<br />
**for문 이용 글씨키우기**
<br />
<%
	int i, sum=0;
%>

<%
	for (i=1; i<=4; i++) {
%>
	<font size=<%= i %>>글씨키우기</font><br />
<% } %>
------------------------------------------------------------------------------------------------------------------------
<br />

1 .. 20 까지 짝수 출력
<br />
<%
	for (i=2; i<30; i=i+2) {
		sum = sum + i;
%>
	&nbsp; <%= i %>
<%
	}
%>
<br />
1 .. 20 까지의 합 : <%= sum %>

<br />
------------------------------------------------------------------------------------------------------------------------
<br />

<%
	int no, a = 2;

	for (no=3; no<20; no++) {
		a = a + no;
%>
		<%= no %>
<%
	}
%>

<br />
------------------------------------------------------------------------------------------------------------------------
<br />

<%
	int con1 = 19;

	if (con1 < 20) {
		out.println("sta1");
	}
	else {
		out.println("sta2");
	}
%>

<br />
------------------------------------------------------------------------------------------------------------------------
<br />
<%



%>

<br />
------------------------------------------------------------------------------------------------------------------------
<br />

int max;

int  main()
{
  int dal[50][50];
  int i;
  int x=0;
  int y=-1;
  int t=1;
  int p;
  int cnt=1;
  int jmax;

  printf("배열 숫자를 입력하세요 nXn: ");
  scanf("%d",&p);
  max=p;
  
  jmax=max;
  while(0<=jmax)
  {
    for(i=0;i<jmax;i++) //행 표현
    {
      y=y+t;
      dal[x][y]=cnt;
      cnt++;
    }
    jmax--;
    for(i=0;i<jmax;i++)// 열 표현
    {
      x=x+t;
      dal[x][y]=cnt;
      cnt++;
    }
    
    t=t*-1;
  }
  for(x=0;x<max;x++)// 출력 부분
  {    
    for(y=0;y<max;y++)
    {
      printf("%4d",dal[x][y]);
    }
    printf("\n");
  }
  
  return 0;
}

<br />
------------------------------------------------------------------------------------------------------------------------
<br />


</body>
</html>
