<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="/front/assets/img/favicon.png" type="image/png">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="/front/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" type="text/css" href="/front/styles.css">
        <link rel="stylesheet" type="text/css" href="/front/board_type1.css">

        <title>국내여행에에빠진사람들</title>

    </head>
    <body>
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo"></a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="#home" class="nav__link">혼자여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#couple" class="nav__link">커플여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#discover" class="nav__link">가족여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#about" class="nav__link">단체여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="sBoardList.html" class="nav__link">자유게시판</a>
                        </li>
                        <li class="nav__item">
                            <a href="#place" class="nav__link">신고</a>
                        </li>
                    </ul>

                    <div class="nav__dark">
                        <!-- Theme change button -->
                        <span class="change-theme-name">Dark mode</span>
                        <i class="ri-moon-line change-theme" id="theme-button"></i>
                    </div>

                    <i class="ri-close-line nav__close" id="nav-close"></i>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-function-line"></i>
                </div>
            </nav>
        </header>

        <main class="main">
            <!--==================== HOME =================여기 홈===-->

                <img src="/front/assets/img/home1.jpg" alt="" class="home__img">

                <div class="home__container container grid">
                    <div class="home__data">
                        <span class="home__data-subtitle">국여진사람들</span>
                        <h1 class="home__data-title">국내<br> 여행에 <b>빠진 <br> 사람들</b></h1>
                        <a href="write.jsp" class="button">글쓰기</a>

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
                            <span class="home__info-title">회원정보 업로드</span>
                            <a href="" class="button button--flex button--link home__info-button">
                            <br><a href="loginMember.html">회원가입</a> <i class="ri-arrow-right-line"></i>
                            </a>

                        </div>
                        <section class="home" id="home">
                        <div class="home__info-overlay">
                            <img src="/context-path/front/assets/img/home2.jpg" alt="" class="home__info-img">
                        </div>
                    </div>
                </div>
            </section>


            <!--==================== ABOUT ====================-->
            <section class="couple" id="couple"></section>
            <div class="board_type1_wrap">
                <table class="board_list_type1">

                    <thead>
                        <tr>
                            <th><input type="checkbox" /></th>
                            <th class="active_type">번호</th>
                            <th>제목</th>
                            <th class="active_type">작성자</th>
                            <th class="active_type">작성날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
            <section class="subscribe section">
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
            </section>

            <section class="about section" id="about">
                <div class="about__container container grid">
                    <div class="about__data">
                        <h2 class="section__title about__title">공지사항  <br> 공지글</h2>
                        <!-- <p class="about__description">You can find the most beautiful and pleasant places at the best
                            prices with special discounts, you choose the place we will guide you all the way to wait, get your
                            place now. -->
                        </p>
                        <a href="#" class="button">위로가기버튼</a>
                    </div>

                    <div class="about__img">
                        <div class="about__img-overlay">
                            <img src="assets/img/about1.jpg" alt="" class="about__img-one">
                        </div>

                        <div class="about__img-overlay">
                            <img src="assets/img/about2.jpg" alt="" class="about__img-two">
                        </div>
                    </div>
                </div>
            </section>

            <!--==================== DISCOVER ====================-->

            <div class="board_type1_wrap">
                <table class="board_list_type1">

                    <thead>
                        <tr>
                            <th><input type="checkbox" /></th>
                            <th class="active_type">글번호</th>
                            <th>제목</th>
                            <th class="active_type">작성자</th>
                            <th class="active_type">작성날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td class="active_type">1</td>
                            <td class="left">게시물1번입니다.</td>
                            <td class="active_type">관리자</td>
                            <td class="active_type">2017-12-19</td>
                        </tr>
                    </tbody>
                </table>
            </div>



            <section class="discover section" id="discover">
              <h2 class="section__title">중간 제목 <br> Attractive Places</h2>
              <div class="board_type1_wrap">
                <table class="board_list_type1">

                    <thead>
                        <tr>
                            <th><input type="checkbox" /></th>
                            <th class="active_type">글번호</th>
                            <th>제목</th>
                            <th class="active_type">작성자</th>
                            <th class="active_type">작성날짜</th>
                        </tr>
                    </thead>
                    <tr>
                        <td><input type="checkbox" /></td>
                        <td class="active_type">1</td>
                        <td class="left">게시물1번입니다.</td>
                        <td class="active_type">관리자</td>
                        <td class="active_type">2017-12-19</td>
                    </tr>
                </tbody>
            </table>
        </div>
            </section>
            <!--==================== EXPERIENCE ====================-->
            <section class="experience section">
                <h2 class="section__title">With Our Experience <br> We Will Serve You</h2>

                <div class="experience__container container grid">
                    <div class="experience__content grid">
                        <div class="experience__data">
                            <h2 class="experience__number">20</h2>
                            <span class="experience__description">Year <br> Experience</span>
                        </div>

                        <div class="experience__data">
                            <h2 class="experience__number">75</h2>
                            <span class="experience__description">Complete <br> tours</span>
                        </div>

                        <div class="experience__data">
                            <h2 class="experience__number">650+</h2>
                            <span class="experience__description">Tourist <br> Destination</span>
                        </div>
                    </div>

                    <div class="experience__img grid">
                        <div class="experience__overlay">
                            <img src="assets/img/experience1.jpg" alt="" class="experience__img-one">
                        </div>

                        <div class="experience__overlay">
                            <img src="assets/img/experience2.jpg" alt="" class="experience__img-two">
                        </div>
                    </div>
                </div>
            </section>

            <!--==================== VIDEO ====================-->
            <section class="video section">
                <h2 class="section__title">Video Tour</h2>
                <div class="video__container container">
                    <p class="video__description">Find out more with our video of the most beautiful and pleasant places for you and your family.</p>
                    <div class="video__content">
                        <video id="video-file">
                            <source src="assets/video/video.mp4" type="video/mp4">
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
                        <img src="assets/img/place1.jpg" alt="" class="place__img">
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

        <!--=============== FOOTER ===============-->
        <!-- <footer class="footer section">

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

        </footer>  -->

        <!--=============== SCROLL UP ===============-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line scrollup__icon"></i>
        </a>
        <!--=============== SCROLL REVEAL ===========-->
        <script src="assets/js/scrollreveal.min.js"></script>
        <!--=============== SWIPER JS ===============-->
        <script src="assets/js/swiper-bundle.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="assets/js/main.js"></script>
    </body>
</html>