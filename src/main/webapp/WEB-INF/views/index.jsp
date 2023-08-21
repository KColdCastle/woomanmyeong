<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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


        <title>국내여행에에빠진사람들</title>

    </head>
    <body>
        <jsp:include page="form/navbar.jsp"/>
        </header>

        <main class="main">
            <!--==================== HOME =================여기 홈===-->

                <img src="/front/assets/img/home1.jpg" alt="" class="home__img">

                <div class="home__container container grid">
                    <div class="home__data">
                        <span class="home__data-subtitle">국여진사람들</span>
                        <h1 class="home__data-title">국내<br> 여행에 <b>빠진 <br> 사람들</b></h1>
                        <a href="write/insert.do" class="button">글쓰기</a>

                    </div>


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

                    <div class="home__info">
                        <div>
                            <span class="home__info-title">regist/login</span>
                            <a href="" class="button button--flex button--link home__info-button">
                            <br><a href="member/regtest">회원가입</a> <i class="ri-arrow-right-line"></i>

                                <c:choose>
                                    <c:when test="${empty loginOkUser}">
                                        <a href="member/logintest">로그인</a><i class="ri-arrow-right-line"></i>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="member/logout">로그아웃</a><i class="ri-arrow-right-line"></i>
                                        <br><font style="color:green">${loginOkUser.nickname}님 환영합니다.</font><br/>
                                    </c:otherwise>
                                </c:choose>
                            </a>

                        </div>
                        <section class="home" id="home">
                        <div class="home__info-overlay">
                            <img src="/front/assets/img/home2.jpg" alt="" class="home__info-img">
                        </div>
                    </div>
                </div>
            </section>


            <!--==================== ABOUT ====================-->
              <!--  <section class="subscribe section"> -->
                <div class="subscribe__bg">
                    <div class="subscribe__container container">
                        <h2 class="section__title subscribe__title">Subscribe Our <br> Newsletter</h2>
                        <p class="subscribe__description">Subscribe to our newsletter and get a
                            special 30% discount.
                        </p>

                        <form action="" class="subscribe__form">
                            <input type="text" placeholder="검색" class="subscribe__input">

                            <button class="button">
                                검색하기
                            </button>
                        </form>
                    </div>
                </div>
            <!--  </section>  -->

                   <section class="home" id="home"></section>

                   <div class="board_type1_wrap">
                       <table class="board_list_type1">
                             <br>

                          <h2> 공지사항  </h2>
                           <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty post}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${post}" var="post">
                                        <tr>
                                            <td>${post.nickname}</td>
                                    <td>
                                <a href='content.do?&seq=${post.seq}'>${post.subject}</a>
                                 </td>
                                            <td>${post.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
       							 </section>
                               </table>
                                <div class="board_type1_wrap">
                              <table class="board_list_type1">
       							<a href="#" class="button">더보기</a>
       							<div class="text-center"><i class="fa fa-arrow-left border rounded-circle" style="color: rgb(0,0,0);"></i><button class="btn btn-primary border rounded-circle" type="button" style="background-color: #ff8000;color: rgb(0,0,0);">1</button><button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">2</button><button class="btn btn-primary border rounded-circle" type="button" style="background-color: rgba(0,123,255,0);color: rgb(0,0,0);">3</button><button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">4</button><button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">...</button><button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">7</button><i class="fa fa-arrow-right" style="color: rgb(0,0,0);"></i></div>
                                    <br>
                                    <br>
                                    <br>

       							<h2 >혼자  <br> 여행</h2>

       						   <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty post}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${post}" var="post">
                                        <tr>
                                            <td>${post.nickname}</td>
                                    <td>
                                <a href='content.do?&seq=${post.seq}'>${post.subject}</a>
                                 </td>
                                            <td>${post.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
       							 </section>
                               </table>
                           <div class="board_type1_wrap">
                         <table class="board_list_type1">


       						<a href="#" class="button">더보기</a>

                                    <br>
                                    <br>
                                    <br>
       						<h2 >커플  <br> 여행</h2>

       						   <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty post}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${post}" var="post">
                                        <tr>
                                            <td>${post.nickname}</td>
                                    <td>
                                <a href='content.do?&seq=${post.seq}'>${post.subject}</a>
                                 </td>
                                            <td>${post.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
       							 </section>
                               </table>
                           <div class="board_type1_wrap">
                         <table class="board_list_type1">

       					<a href="#" class="button">더보기</a>
                                <br>
                                <br>
                                <br>
       						  <h2>단체 <br> 여행</h2>

       						   <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty post}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${post}" var="post">
                                        <tr>
                                            <td>${post.nickname}</td>
                                    <td>
                                <a href='content.do?&seq=${post.seq}'>${post.subject}</a>
                                 </td>
                                            <td>${post.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
       							 </section>
                               </table>
                               <div class="board_type1_wrap">
                             <table class="board_list_type1">
       						<a href="#" class="button">더보기</a>

       						<br>
       						<br>
       						<br>
       						<h2>자유 <br>게시판</h2>
       						   <thead>
                               <tr>
                                <th data-bss-hover-animate="bounce">닉네임</th>
                                <th>제목</th>
                                <th>조회수</th>


                            </tr>
                                </thead>
                                <tbody>
                            <c:if test="${empty post}">
                                <tr>
                                    <td align='center' colspan="5">검색된 글이 없음</td>
                                </tr>
                            </c:if>
                                    <c:forEach items="${post}" var="post">
                                        <tr>
                                            <td>${post.nickname}</td>
                                    <td>
                                <a href='content.do?&seq=${post.seq}'>${post.subject}</a>
                                 </td>
                                            <td>${post.viewnum}</td>
                                        </tr>
                                        </c:forEach>
                                   </thead>
                                   <tbody>

                                   </tbody>
       							 </section>
                               </table>

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
        </main> -->
       <jsp:include page="form/footer.jsp"/>


<!--
        <!--=============== FOOTER ===============-->
         <footer class="footer section">

            <div class="footer__container container grid">
                <div class="footer__content grid">
                    <div class="footer__data">
                        <h3 class="footer__title">Travel</h3>
                        <p class="footer__description">Travel you choose the<br>
                            destination, we offer you the<br>
                            experience.</p>
                        <div>
                            <a href="https://www.facebook.com/" target="_blank" class="footer__social">
                                <i class="ri-facebook-box-fill"></i>
                            </a>
                            <a href="https://twitter.com/" target="_blank" class="footer__social">
                                <i class="ri-twitter-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" target="_blank" class="footer__social">
                                <i class="ri-instagram-fill"></i>
                            </a>
                            <a href="https://www.youtube.com/" target="_blank" class="footer__social">
                                <i class="ri-youtube-fill"></i>
                            </a>
                        </div>
                    </div>
                    <div class="footer__data">
                        <h3 class="footer__subtitle">About</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="#" class="footer__link">About Us</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Features</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">New & Blog</a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer__data">
                        <h3 class="footer__subtitle">Company</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Team</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Plan & Pricing</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Become a member</a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer__data">
                        <h3 class="footer__subtitle">Support</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="#" class="footer__link">FAQs</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Support Center</a>
                            </li>
                            <li class="footer__item">
                                <a href="#" class="footer__link">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="footer__rights">
                    <p class="footer__copy">&#169; 2021 devjade. All rigths reserved.</p>
                    <div class="footer__terms">
                        <a href="#" class="footer__terms-link">Terms & Agreements</a>
                        <a href="#" class="footer__terms-link">Privacy Policy</a>
                    </div>
                </div>
            </div>

        </footer> -->

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