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
                            <a href="#about" class="nav__link">단체여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="sBoardList.jsp" class="nav__link">자유게시판</a>
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
</body>
</html>