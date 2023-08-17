<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<style>
	a{text-decoration:none}
</style>
<meta charset="utf-8">
<center>
	<font color='gray' size='4' face='맑은고딕'>
	<hr width='600' size='2' color='gray' noshade>
	<h3>왜 사공사?</h3>
	<font color='gray' size='4' face='맑은고딕'>
	<a href='../write.do'>글쓰기</a>
	</font>
	<hr width='600' size='2' color='gray' noshade>
	</font>

	<table border='2' width='600' align='center' noshade>
			<tr>
				<td width='100' align='center'>글번호</td>
				<td>${post.seq}</td>
			</tr>
			<tr>
				<td align='center'>글쓴이</td>
				<td>${post.email}</td>
			</tr>
			<tr>
				<td align='center'>이메일</td>
				<td>${post.boardname}</td>
			</tr>
			<tr>
				<td align='center'>글제목</td>
				<td>${post.subject}</td>
			</tr>
			<tr>
				<td align='center'>글내용</td>
				<td>${post.content}</td>
			</tr>
	</table>
	
	<hr width='600' size='2' color='gray' noshade>
	<font color='gray' size='4' face='휴먼편지체'>
	<a href='update.do?seq=${post.seq}'>수정</a>
	 &nbsp;&nbsp;| 
	<a href='del.do?seq=${post.seq}'>삭제</a>
	 &nbsp;&nbsp;| 
	<a href='list.do'>목록</a>
	</font>
	<hr width='600' size='2' color='gray' noshade>
</center>
