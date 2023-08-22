<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
    <html lang="ko">
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

        <title>국내여행에 혼자 즐기는 사람들</title>

    </head>
    <body>
        <jsp:include page="../form/navbar.jsp"/>


        <main class="main">
        <!--==================== HOME =================여기 홈===-->

        <img src="/front/assets/img/home1.jpg" alt="" class="home__img__list">

            <div class="home__container container grid">
                <div class="home__data">
                    <span class="home__data-subtitle"><br><br> <br><br><br> <br><br> <br><br <br><br> </span>
                    <h1 class="home__data-title"><br><br> <br><br> <br><br>  <br><br> <br><br> <br><br> 혼자 여행을 즐기는 사람들</h1>
                    <c:if test="${loginOkUser.nickname !='관리자'}">
                        <a href="/write/insert.do" class="button">글쓰기</a>
                    </c:if>
                </div>

               <section class="home" id="home"></section>
                <div class="subscribe__bg">
                   <div class="subscribe__container container">
                    <!--  <h2 class="section__title subscribe__title">Subscribe Our <br> Newsletter</h2>-->
                    <!--   <p class="subscribe__description">Subscribe to our newsletter and get a
                    special 30% discount.-->
                    </p>

                        <form action="" class="subscribe__form">
                        <input type="text" placeholder="검색" class="subscribe__input">

                        <button class="button">
                        검색하기
                    </button>
                    </form>
                   </div>
               </div>
               <div class="board_type1_wrap">
                   <table class="board_list_type1">
                   <br>
                       <thead>
                           <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
								<th>날짜</th>
                                <th>조회수</th>
                                <c:if test="${loginOkUser.nickname =='관리자'}">
                                    <th align='center'>삭제</th>
                                </c:if>
                           </tr>
                       </thead>
                       <tbody>
                            <c:if test="${empty soloList}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                        <c:forEach items="${soloList.list.content}" var="soloList">
                                <tr>
                                    <td>${soloList.nickname}</td>
                                    <td>
                                        <a href='content.do?&seq=${soloList.seq}'>${soloList.subject}</a>
                                    </td>
									<td>${soloList.crdate}</td>
                                    <td>${soloList.viewnum}</td>
								    <c:if test="${loginOkUser.nickname =='관리자'}">
                                         <td align='center'>
                                             <a href='del.do?&seq=${post.seq}'>삭제</a>
                                         </td>
                                     </c:if>
                                </tr>
                        </c:forEach>
                       </tbody>
                   </table>
               </div>
            <jsp:include page="../form/footer.jsp"/>
        </main>

        <!--=============== SCROLL UP ===============-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line scrollup__icon"></i>
        </a>
        <!--=============== SCROLL REVEAL ===========-->
        <script src="/front/assets/js/scrollreveal.min.js"></script>

        <!--=============== SWIPER JS ===============-->
        <script src="/front/assets/js/swiper-bundle.min.js"></script>
        <!--=============== MAIN JS ===============-->
        <script src="/front/assets/js/main.js"></script>
    </body>
</html>