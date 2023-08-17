<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title> Spring Board </title>
<meta charset="utf-8">
<script type="text/javascript" language="javascript"
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
$(function(){
// 번호 입력 필드에 키보드 이벤트를 연결합니다.
$("#seq").on("keyup", function(){
// Ajax 요청을 생성합니다.
$.ajax({
url: "../ajax4/search1.do",
type: "GET",
data: {seq: $("#seq").val()},
success: function(data){
// Ajax 요청이 성공하면 실행되는 함수입니다.

// 받아온 데이터를 가지고 폼을 만듭니다.
var html = "";
html += "<form id='ajax'>";
html += "번호 <input name='seq' value='"+data.seq+"'>";
html += "이름 <input name='content' value='"+data.content+"'>";
html += "주소 <input name='email' value='"+data.email+"'>";
html += "날짜 <input name='crdate' value='"+data.crdate+"'>";
html += "</form>"

// 입력 필드 초기화 및 폼을 화면에 표시합니다.
$("#content").val("");
$("#container").html(html);
},
error : function (data) {
// Ajax 요청이 실패하면 실행되는 함수입니다.
$("#container").html("존재하지않는 SEQ");
}
});
});
// 이름 검색 버튼 클릭 이벤트를 연결합니다.
$("#btnName").on("click", function(){
// Ajax 요청을 생성합니다.
$.ajax({
url: "../ajax4/search2.do",
type: "POST",
data: {name: $("#content").val()},
success: function(data){
// Ajax 요청이 성공하면 실행되는 함수입니다.

// 받아온 데이터를 가지고 테이블을 만듭니다.
var html = "";
html += "<table border='1' width='50%'>";
html += "<tr>";
html += "<th>번호</th>";
html += "<th>이름</th>";
html += "<th>주소</th>";
html += "<th>날짜</th>";
html += "</tr>";
// 데이터를 테이블의 형태로 변환하여 추가합니다.
if(data.length == 0){
html += "<tr>";
html += "<td colspan='4' align='center'>그런 이름을 가진 멤버는 없음</td>";
html += "</tr>";
}else{
for(let post of data){
html += "<tr>";
html += "<td align='center'>"+post.seq+"</td>";
html += "<td align='center'>"+post.content+"</td>";
html += "<td align='center'>"+post.email+"</td>";
html += "<td align='center'>"+post.crdate+"</td>";
html += "</tr>";
}
}
html += "</table>"

// 입력 필드 초기화 및 테이블을 화면에 표시합니다.
$("#seq").val("");
$("#container").html(html);
}
});
});

});
</script>
	<style>
		table, th, td {
		   border: 1px solid black;
		   border-collapse: collapse;
		}
		th, td {
		   padding: 5px;
		}
		a { text-decoration:none }
	</style>
</head>
    <body>
        <center>
        <font color='gray' size='4' face='맑은고딕'>
        <hr width='600' size='2' color='gray' noshade>
        <h2> 혼자여행 </h2>
         검색: <input type="text" name="content" id="content"/>
        	    <input type="button" value="검색" id="btnName"/>
            <font color='gray' size='4' face='맑은고딕'>
                <a href='../'>홈으로</a>
                <a href='write.do'>글쓰기</a><br/>
            </font>
        <hr width='600' size='2' color='gray' noshade>

        <TABLE border='2' width='600' align='center' noshade>
        <TR size='2' align='center' noshade bgcolor='AliceBlue'>
            <th bgcolor='AliceBlue'>no</th>
            <th color='gray'>e-mail</th>
            <th color='gray'>subject</th>
            <th color='gray'>게시판이름</th>
            <th color='gray'>업로드날짜</th>
            <th color='gray'>수정날짜</th>
            <th>삭제</th>
        </TR>

        <c:forEach items="${listResult}" var="post">
            <TR align='center' noshade>
                <TD>${post.seq}</TD>
                <TD>${post.email}</TD>
                <TD>
                  <a href="content.do?seq=${post.seq}">
                    ${post.subject}
                  </a>
                </TD>
                <TD>${post.boardname}</TD>
                <TD>${post.crdate}</TD>
                <TD>${post.cudate}</TD>
                <td align='center'><a href='del.do?&seq=${post.seq}'>삭제</a></td>
               </TR>
        </c:forEach>
        </TABLE>
        </font>
        <hr width='600' size='2' color='gray' noshade>
        </center>
    </body>
</html>