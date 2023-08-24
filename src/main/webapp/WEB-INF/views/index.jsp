<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
    <html lang="ko">
    <head>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
        <link rel="stylesheet" href="front/styles.css">
        <link rel="stylesheet" href="front/board_type1.css">
       <link rel="stylesheet" href="/front/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/front/Like-Button.css">

        <style>
                /* 커서 스타일 */
                .custom-cursor {
                    position: absolute;
                    width: 30px;
                    height: 30px;
                    background-image: url('front/boat.png');
                    background-size: cover;
                }
            </style>
        <style>
          .included-page {
            position: absolute;
            top: 0;
            right: 0;
            width: 2000px;
            height 1000px;
          }
        </style>
        <title>국내여행에에빠진사람들</title>


    </head>
    <body>
        <jsp:include page="form/navbar.jsp"/>
        <div class="included-page">
        <jsp:include page="other/weather.jsp" />
        </div>



        </header>



        <main class="main">
            <!--==================== HOME =================여기 홈===-->

                <img src="front/assets/img/home1.jpg" alt="" class="home__img">

                <div class="home__container container grid">
                    <div class="home__data">
                        <span class="home__data-subtitle">국여진사람들</span>
                        <h1 class="home__data-title">국내<br> 여행에 <b>빠진 <br> 사람들</b></h1>


                        <button id="writebutton" class="button" type="button" onclick="writebutton()">글쓰기</button>

                                <script>
                                function writebutton(){
                                    if(${empty loginOkUser}){
                                    swal('알림','로그인을 해주세요.','info');
                                    }else{
                                    window.location.href = "/write/insert.do" ;
                                    }
                                }
                                </script>


                    </div>

                   <!--  <section class="subscribe section"> -->

                <div class="subscribe__bg">
                    <div class="subscribe__container container">
                         <!--  <h2 class="section__title subscribe__title">Subscribe Our <br> Newsletter</h2>-->
                      <!--   <p class="subscribe__description">Subscribe to our newsletter and get a
                            special 30% discount.-->
                        </p>

                        <form method="GET" action="/post_page/list.do">
                             <div class="subscribe__form">
                                 <input class="subscribe__input " type="text" placeholder="검색어를 입력하세요." id="searchText" name="searchText" value="${param.searchText}">
                                     <button class="button" type="submit">
                                         검색하기
                                     </button>
                             </div>
                        </form>
                    </div>
                </div>
            <!--  </section>  -->



                    <div class="home__social">
                        <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                            <i class="ri-facebook-box-fill"></i>
                        </a>
                        <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                            <i class="ri-instagram-fill"></i>
                        </a>
                        <a href="https://twitter.com/" target="_blank" class="home__social-link">
                            <i class="ri-twitter-fill"></i>
                        </a>

                    </div>

                </div>

            </section>



            <!--==================== ABOUT ====================-->


                   <section class="home" id="home"></section>

                   <div class="board_type1_wrap">
                       <table class="board_list_type1">
                             <br>

                      <h2 class="section__title">공지 <br> 사항</h2>
                           <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>
                        </tr>
                     </thead>
                     <thead>
                                <tbody>
                            <c:if test="${empty noticePost}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${noticePost}" var="noticePost">
                                        <tr>
                                            <td>${noticePost.nickname}</td>
                                    <td>
                                <a href='post_page/content.do?&seq=${noticePost.seq}'>${noticePost.subject}</a>
                                 </td>
                                            <td>${noticePost.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
                             </section>
                               </table>
                                <div class="board_type1_wrap">
                              <table class="board_list_type1">
                            <a href="post_page/noticeList.do"  class="button">공지사항더보기</a>

                                    <br>
                                    <br>
                                    <br>

                            <h2 class="section__title">혼자 <br> 여행</h2>

                            <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty soloPost}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${soloPost}" var="soloPost">
                                        <tr>
                                            <td>${soloPost.nickname}</td>
                                    <td>
                                <a href='post_page/content.do?&seq=${soloPost.seq}'>${soloPost.subject}</a>
                                 </td>
                                            <td>${soloPost.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
                             </section>
                               </table>
                           <div class="board_type1_wrap">
                         <table class="board_list_type1">


                         <a href="post_page/soloList.do" class="button">혼자여행 게시판 더보기</a>

                                    <br>
                                    <br>
                                    <br>
                         <h2 class="section__title">커플 <br> 여행</h2>

                            <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty couplePost}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${couplePost}" var="couplePost">
                                        <tr>
                                            <td>${couplePost.nickname}</td>
                                    <td>
                                <a href='post_page/content.do?&seq=${couplePost.seq}'>${couplePost.subject}</a>
                                 </td>
                                            <td>${couplePost.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
                             </section>
                               </table>
                           <div class="board_type1_wrap">
                         <table class="board_list_type1">

                      <a href="post_page/coupleList.do" class="button">커플 여행 <br> 게시판더보기</a>
                                <br>
                                <br>
                                <br>
                          <h2 class="section__title">단체 <br> 여행</h2>

                            <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty familyPost}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${familyPost}" var="familyPost">
                                        <tr>
                                            <td>${familyPost.nickname}</td>
                                    <td>
                                <a href='post_page/content.do?&seq=${familyPost.seq}'>${familyPost.subject}</a>
                                 </td>
                                            <td>${familyPost.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
                             </section>
                               </table>
                               <div class="board_type1_wrap">
                             <table class="board_list_type1">
                         <a href="post_page/familyList.do" class="button">가족여행 <br>게시판더보기</a>

                         <br>
                         <br>
                         <br>
                         <h2 class="section__title">자유 <br> 여행</h2>
                            <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty freePost}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${freePost}" var="freePost">
                                        <tr>
                                            <td>${freePost.nickname}</td>
                                    <td>
                                <a href='post_page/content.do?&seq=${freePost.seq}'>${freePost.subject}</a>
                                 </td>
                                            <td>${freePost.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
                             </section>
                               </table>
                     <a href="post_page/freeList.do" class="button">자유게시판더보기</a>
                           </div>



            <!--==================== VIDEO ====================-->



            <section class="video section">
                <h2 class="section__title">Video Tour</h2>
                <div class="video__container container">
                    <p class="video__description">Find out more with our video of the most beautiful and pleasant places for you and your family.</p>
                    <div class="video__content">
                        <video id="video-file">
                            <source src="front/assets/video/video.mp4" type="video/mp4">
                        </video>
                        <button class="button button--flex video__button" id="video-button">
                            <i class="ri-play-line video__button-icon" id="video-icon"></i>
                        </button>
                    </div>
                </div>
            </section>


            <!--==================== PLACES ====================-->


                    <!--==================== PLACES CARD 1====================-->
                    <!-- <div class="place__card">
                        <img src="front/assets/img/place1.jpg" alt="" class="place__img">
                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4.8</span>
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">Bali</h3>
                                <span class="place__subtitle">Indonesia</span>
                                <span class="place__price">$2499</span>
                            </div>
                        </div>

                        <button class="button button--flex place__button">
                            <i class="ri-arrow-right-line"></i>
                        </button>
                    </div> -->

                    <!--==================== PLACES CARD 2====================-->
                    <!-- <div class="place__card">
                        <img src="assets/img/place2.jpg" alt="" class="place__img">
                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">5.0</span>
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">Bora Bora</h3>
                                <span class="place__subtitle">Polinesia</span>
                                <span class="place__price">$1599</span>
                            </div>
                        </div>

                        <button class="button button--flex place__button">
                            <i class="ri-arrow-right-line"></i>
                        </button>
                    </div> -->

                    <!--==================== PLACES CARD 3====================-->
                    <!-- <div class="place__card">
                        <img src="assets/img/place3.jpg" alt="" class="place__img">
                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4.9</span>
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">Hawaii</h3>
                                <span class="place__subtitle">USA</span>
                                <span class="place__price">$3499</span>
                            </div>
                        </div>

                        <button class="button button--flex place__button">
                            <i class="ri-arrow-right-line"></i>
                        </button>
                    </div> -->

                    <!--==================== PLACES CARD 4====================-->
                    <!-- <div class="place__card">
                        <img src="assets/img/place4.jpg" alt="" class="place__img">
                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4.8</span>
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">Whitehaven</h3>
                                <span class="place__subtitle">Australia</span>
                                <span class="place__price">$2499</span>
                            </div>
                        </div>

                        <button class="button button--flex place__button">
                            <i class="ri-arrow-right-line"></i>
                        </button>
                    </div> -->

                    <!--==================== PLACES CARD 5====================-->
                    <!-- <div class="place__card">
                        <img src="assets/img/place5.jpg" alt="" class="place__img">
                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4.8</span>
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">Hvar</h3>
                                <span class="place__subtitle">Croacia</span>
                                <span class="place__price">$1999</span>
                            </div>
                        </div>

                        <button class="button button--flex place__button">
                            <i class="ri-arrow-right-line"></i>
                        </button>
                    </div>
                </div> -->

            </section>

            <!--==================== SUBSCRIBE ====================-->


            <!--==================== SPONSORS ====================-->
            <!-- <section class="sponsor section">
                <div class="sponsor__container container grid">
                    <div class="sponsor__content">
                        <img src="assets/img/sponsors1.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="assets/img/sponsors2.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="assets/img/sponsors3.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="assets/img/sponsors4.png" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="assets/img/sponsors5.png" alt="" class="sponsor__img">
                    </div>
                </div>
            </section>
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
    <jsp:include page="form/footer.jsp"/>
</html>