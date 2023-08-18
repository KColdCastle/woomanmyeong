<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- head 내용은 여기에 넣으세요 -->
</head>

<body>
    <center>
        <font color='gray' size='4' face='맑은고딕'>
            <hr width='600' size='2' color='gray' noshade>
            <h2> 혼자여행 </h2>
            검색: <input type="text" name="content" id="content" />
            <input type="button" value="검색" id="btnName" />
            <font color='gray' size='4' face='맑은고딕'>
                <a href='../'>홈으로</a>
                <a href='write.do'>글쓰기</a><br />
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
