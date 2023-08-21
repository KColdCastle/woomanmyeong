<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="/front/assets/img/favicon.png" type="image/png">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="/front/assets/css/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" href="/front/styles.css">
        <link rel="stylesheet" href="/front/board_type1.css">
       <link rel="stylesheet" href="/front/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/front/Like-Button.css">


<title> Spring Board </title>
<meta charset="utf-8">

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
       <jsp:include page="../form/navbar.jsp"/>
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
            <th color='gray'>닉네임</th>
            <th color='gray'>글제목</th>
            <th color='gray'>게시판이름</th>
            <th color='gray'>업로드날짜</th>
            <th color='gray'>수정날짜</th>
            <th>삭제</th>
        </TR>

        <c:forEach items="${listResult}" var="post">
            <TR align='center' noshade>
                <TD>${post.seq}</TD>
                <TD>${post.nickname}</TD>
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
    <footer>
         <jsp:include page="../form/footer.jsp"/>


          </footer>
                <a href="#" class="scrollup" id="scroll-up">
                    <i class="ri-arrow-up-line scrollup__icon"></i>
                </a>
                <!--=============== SCROLL REVEAL ===========-->
                <script src="/front/assets/js/scrollreveal.min.js"></script>
                <!--=============== SWIPER JS ===============-->
                <script src="/front/assets/js/swiper-bundle.min.js"></script>

                <!--=============== MAIN JS ===============-->
                <script src="/front/assets/js/main.js"></script>
</html>