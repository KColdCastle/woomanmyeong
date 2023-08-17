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
                            <a href="freeBoardList.jsp" class="nav__link">자유게시판</a>
                        </li>
                        <li class="nav__item">
                            <a href="./bug.jsp" class="nav__link">신고</a>
                        </li>
                    </ul>

                    <div class="nav__dark">
                   <!-- Theme change button -->
                   <span class="change-theme-name">Dark mode</sp    an>
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
                        <a href="/write/insert.do" class="button">글쓰기</a>

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
                            <br><a href="member/reg">회원가입</a> <i class="ri-arrow-right-line"></i>

                                                <c:choose>
                                                    <c:when test="${empty loginOkUser}">
                                                        <a href="member/login">로그인</a><i class="ri-arrow-right-line"></i>
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
                            <img src="/context-path/front/assets/img/home2.jpg" alt="" class="home__info-img">
                        </div>
                    </div>
                </div>
            </section>


            <!--==================== ABOUT ====================-->
            <section class="couple" id="couple"></section>
               <div class="board_type1_wrap">
                  <table class="board_list_type1">

            <div class="grid text-center">
             <div class="section">
                 <h2 class="section-title">솔로 여행</h2>
                 <i class="section-icon"><img src="https://d2u3dcdbebyaiu.cloudfront.net/img/web/topic_logo_kr_1587367050.png" alt="icon" width="32" height="32"></i>
                 <div class="article-list">

          </h2> <div class="article-container">
            <span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
            <a href="/kr/post/%EB%A7%88%ED%9D%94%EC%9D%B4-%EB%90%98%EB%A9%B4%EC%84%9C-%EB%8A%90%EB%82%80%EC%A0%90-zsnra2Uq" class="tit ">마흔이 되면서 느낀점..</a>
            <div class="wrap-info"><!----> <a href="/kr/post/%EB%A7%88%ED%9D%94%EC%9D%B4-%EB%90%98%EB%A9%B4%EC%84%9C-%EB%8A%90%EB%82%80%EC%A0%90-zsnra2Uq" class="pv">
            <i class="blind">조회수</i>31K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
             <a href="/kr/post/%EB%AC%B8%EC%8B%A0%EC%9E%88%EB%8B%A4%EA%B3%A0-%ED%97%A4%EC%96%B4%EC%A1%8C%EB%8B%A4-%ED%95%98%ED%95%98-qvJ4n0bt" class="tit ">문신있다고 헤어졌다 하하</a>
             <div class="wrap-info"><!----> <a href="/kr/post/%EB%AC%B8%EC%8B%A0%EC%9E%88%EB%8B%A4%EA%B3%A0-%ED%97%A4%EC%96%B4%EC%A1%8C%EB%8B%A4-%ED%95%98%ED%95%98-qvJ4n0bt" class="pv">
             <i class="blind">조회수</i>3,431</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
             <a href="/kr/post/[blind-X-%EB%A9%A4%ED%94%BC%EC%8A%A4]-%EB%AE%A4%EC%A7%80%EC%BB%AC-%EB%A9%A4%ED%94%BC%EC%8A%A4-%EB%8C%93%EA%B8%80%EC%9D%B4%EB%B2%A4%ED%8A%B8-oKe9EnVk" class="tit ">[blind X 멤피스] 뮤지컬 멤피스 댓글이벤트</a>
             <div class="wrap-info"><!----> <a href="/kr/post/[blind-X-%EB%A9%A4%ED%94%BC%EC%8A%A4]-%EB%AE%A4%EC%A7%80%EC%BB%AC-%EB%A9%A4%ED%94%BC%EC%8A%A4-%EB%8C%93%EA%B8%80%EC%9D%B4%EB%B2%A4%ED%8A%B8-oKe9EnVk" class="pv">
             <i class="blind">조회수</i>31K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span> <a href="/kr/post/%EB%82%98%EB%8F%84-25%EC%82%B4-%EB%A7%8C23-HZKkmFK2" class="tit ">나도 !!! 25살 (만23)</a>
             <div class="wrap-info"><!----> <a href="/kr/post/%EB%82%98%EB%8F%84-25%EC%82%B4-%EB%A7%8C23-HZKkmFK2" class="pv"><i class="blind">조회수</i>1,904</a> <!----></div></div>
             <div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
             <a href="/kr/post/%EC%96%98%EB%91%90%EB%9E%91-bTBxET6a" class="tit ">얘두랑 </a> <div class="wrap-info"><!---->
             <a href="/kr/post/%EC%96%98%EB%91%90%EB%9E%91-bTBxET6a" class="pv"><i class="blind">조회수</i>32</a> <!----></div></div>
             <a href="/kr/topics/%EB%B8%94%EB%9D%BC%EB%B8%94%EB%9D%BC" class="btn-more">더보기</a> <!----> <!----> <!----></div>


                  <div class="section">
                  <h2 class="section-title">커플 여행</h2>
                 <i class="section-icon"><img src="https://d2u3dcdbebyaiu.cloudfront.net/img/web/topic_logo_kr_1587367690.png" alt="icon" width="32" height="32"></i>
                   <div class="article-list">
               </h2> <div class="article-container"><i class="ico">
               <span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
               <a href="/kr/post/%ED%80%80%ED%85%80-%EC%97%B0%EA%B5%AC%EC%86%8C%EC%99%80-LK-99-CnZhVjVs" class="tit ">퀀텀 연구소와 LK-99</a>
               <div class="wrap-info"><!----> <a href="/kr/post/%ED%80%80%ED%85%80-%EC%97%B0%EA%B5%AC%EC%86%8C%EC%99%80-LK-99-CnZhVjVs" class="pv">
               <i class="blind">조회수</i>591</a> <!----></div></div><div class="article"><span class="topic" style="display: none;">
               <a href="/kr/topics/" class=""></a></span>
               <a href="/kr/post/%EC%9C%BC%ED%9C%B4-%EC%B4%88%EC%A0%84%EB%8F%84%EC%B2%B4%EA%B0%80-%EC%A4%91%EC%9A%94%ED%95%9C%EA%B2%8C-%EC%95%84%EB%8B%88%EC%95%BC-qrnCVQ2y" class="tit ">으휴 초전도체가 중요한게 아니야</a>
                <div class="wrap-info"><!----> <a href="/kr/post/%EC%9C%BC%ED%9C%B4-%EC%B4%88%EC%A0%84%EB%8F%84%EC%B2%B4%EA%B0%80-%EC%A4%91%EC%9A%94%ED%95%9C%EA%B2%8C-%EC%95%84%EB%8B%88%EC%95%BC-qrnCVQ2y" class="pv">
                <i class="blind">조회수</i>827</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
                <a href="/kr/post/%EC%9A%B0%EB%A6%AC%EB%82%98%EB%9D%BC%EB%8A%94-%EC%99%9C-%EB%B6%80%EC%9E%90%EC%97%90%EB%8C%80%ED%95%9C%EC%9D%B8%EC%8B%9D%EC%9D%B4%EC%95%88%EC%A2%8B%EC%9D%84%EA%B9%8C-hBcPZ1qZ" class="tit ">우리나라는 왜 부자에대한인식이안좋을까?</a>
                <div class="wrap-info"><!----> <a href="/kr/post/%EC%9A%B0%EB%A6%AC%EB%82%98%EB%9D%BC%EB%8A%94-%EC%99%9C-%EB%B6%80%EC%9E%90%EC%97%90%EB%8C%80%ED%95%9C%EC%9D%B8%EC%8B%9D%EC%9D%B4%EC%95%88%EC%A2%8B%EC%9D%84%EA%B9%8C-hBcPZ1qZ" class="pv">
                <i class="blind">조회수</i>765</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span> <a href="/kr/post/%EA%B5%AD%EC%9E%A5%EC%84%9C-%EC%9E%A5%EA%B8%B0%ED%88%AC%EC%9E%90-%ED%95%98%EB%A9%B4-%EC%95%88%EB%90%98%EB%8A%94-%ED%9A%8C%EC%82%AC-%ED%95%B4%EB%8F%84-%EB%90%98%EB%8A%94-%ED%9A%8C%EC%82%AC-%ED%83%91-3%EA%B0%9C-%EC%95%8C%EB%A0%A4%EC%A4%8C-aA4BJnYH" class="tit ">국장서 장기투자 하면 안되는 회사 , 해도 되는 회사 탑 3개 알려줌.</a>
                 <div class="wrap-info"><!----> <a href="/kr/post/%EA%B5%AD%EC%9E%A5%EC%84%9C-%EC%9E%A5%EA%B8%B0%ED%88%AC%EC%9E%90-%ED%95%98%EB%A9%B4-%EC%95%88%EB%90%98%EB%8A%94-%ED%9A%8C%EC%82%AC-%ED%95%B4%EB%8F%84-%EB%90%98%EB%8A%94-%ED%9A%8C%EC%82%AC-%ED%83%91-3%EA%B0%9C-%EC%95%8C%EB%A0%A4%EC%A4%8C-aA4BJnYH" class="pv">
                 <i class="blind">조회수</i>354</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
                 <a href="/kr/post/Winter-is-coming-RbsiKDpt" class="tit ">Winter is coming</a> <div class="wrap-info"><!----> <a href="/kr/post/Winter-is-coming-RbsiKDpt" class="pv">
                 <i class="blind">조회수</i>9,095</a> <!----></div></div> <a href="/kr/topics/%EC%A3%BC%EC%8B%9D%C2%B7%ED%88%AC%EC%9E%90" class="btn-more">더보기</a> <!----> <!----> <!----></div>



            <div class="section">
          <h2 class="section-title">단체여행</h2>
         <i class="section-icon"><img src="https://d2u3dcdbebyaiu.cloudfront.net/img/web/topic_logo_kr_1587367690.png" alt="icon" width="32" height="32"></i>
           <div class="article-list">
          </h2> <div class="article-container"><span class="topic" style="display: none;">
          <a href="/kr/topics/" class=""></a></span> <a href="/kr/post/%EA%B0%80%EC%A0%95-%EC%88%98%EC%A4%80-%EC%B0%A8%EC%9D%B4%EB%A1%9C-%ED%97%A4%EC%96%B4%EC%A7%90-%EA%B3%A0%EB%AF%BC-PQTKQfoX" class="tit ">가정 수준 차이로 헤어짐 고민</a>
          <div class="wrap-info"><!----> <a href="/kr/post/%EA%B0%80%EC%A0%95-%EC%88%98%EC%A4%80-%EC%B0%A8%EC%9D%B4%EB%A1%9C-%ED%97%A4%EC%96%B4%EC%A7%90-%EA%B3%A0%EB%AF%BC-PQTKQfoX" class="pv">
          <i class="blind">조회수</i>1,913</a>
          <!----></div></div><div class="article">
          <span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
          <a href="/kr/post/%EC%A1%B4%EA%B2%BD%ED%95%A0-%EC%88%98-%EC%9E%88%EB%8A%94-%EB%82%A8%EC%9E%90%EA%B0%80-%EB%8F%84%EB%8C%80%EC%B2%B4-%EB%AD%94-%EB%A7%90%EC%9D%B4%EB%83%90-abCAoP6n" class="tit ">존경할 수 있는 남자가 도대체 뭔 말이냐?</a>
          <div class="wrap-info"><!----> <a href="/kr/post/%EC%A1%B4%EA%B2%BD%ED%95%A0-%EC%88%98-%EC%9E%88%EB%8A%94-%EB%82%A8%EC%9E%90%EA%B0%80-%EB%8F%84%EB%8C%80%EC%B2%B4-%EB%AD%94-%EB%A7%90%EC%9D%B4%EB%83%90-abCAoP6n" class="pv">
          <i class="blind">조회수</i>16K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
          <a href="/kr/post/%EC%97%AC%EC%9E%90%EC%B9%9C%EA%B5%AC%EA%B0%80-%EB%B2%97%EB%B0%A9%EB%95%8C%EB%A7%A4-%EB%A7%8E%EC%9D%B4%EC%8B%A4%EB%A7%9D%ED%96%88%EB%8C%80-XOVeayhD" class="tit ">여자친구가 벗방때매 많이실망했대</a>
          <div class="wrap-info"><!----> <a href="/kr/post/%EC%97%AC%EC%9E%90%EC%B9%9C%EA%B5%AC%EA%B0%80-%EB%B2%97%EB%B0%A9%EB%95%8C%EB%A7%A4-%EB%A7%8E%EC%9D%B4%EC%8B%A4%EB%A7%9D%ED%96%88%EB%8C%80-XOVeayhD" class="pv">
          <i class="blind">조회수</i>5,165</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span> <a href="/kr/post/%EA%B2%B0%ED%98%BC%ED%95%98%EA%B3%A0-%EC%8B%B6%EB%8B%A4-8qLW8eVo" class="tit ">결혼하고 싶다</a> <div class="wrap-info"><!----> <a href="/kr/post/%EA%B2%B0%ED%98%BC%ED%95%98%EA%B3%A0-%EC%8B%B6%EB%8B%A4-8qLW8eVo" class="pv"><i class="blind">조회수</i>55</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span> <a href="/kr/post/5%EB%85%84-%EC%82%AC%EA%B7%80%EA%B3%A0-%EC%98%A4%EB%8A%98-%ED%97%A4%EC%96%B4%EC%A1%8C%EB%8A%94%EB%8D%B0-%ED%8E%91%ED%8E%91-%EC%9A%B8%EA%B3%A0%EC%8B%B6%EC%9C%BC%EB%8B%88%EA%B9%8C-%EC%8A%AC%ED%94%88-%EB%85%B8%EB%9E%98-%EC%B6%94%EC%B2%9C-%EC%A2%80-n1pW1Uwo" class="tit ">5년 사귀고 오늘 헤어졌는데 펑펑 울고싶으니까 슬픈 노래 추천 좀</a> <div class="wrap-info"><!----> <a href="/kr/post/5%EB%85%84-%EC%82%AC%EA%B7%80%EA%B3%A0-%EC%98%A4%EB%8A%98-%ED%97%A4%EC%96%B4%EC%A1%8C%EB%8A%94%EB%8D%B0-%ED%8E%91%ED%8E%91-%EC%9A%B8%EA%B3%A0%EC%8B%B6%EC%9C%BC%EB%8B%88%EA%B9%8C-%EC%8A%AC%ED%94%88-%EB%85%B8%EB%9E%98-%EC%B6%94%EC%B2%9C-%EC%A2%80-n1pW1Uwo" class="pv"><i class="blind">조회수</i>5,929</a> <!----></div></div>
          <a href="/kr/topics/%EC%8D%B8%C2%B7%EC%97%B0%EC%95%A0" class="btn-more">더보기</a> <!----> <!----> <!----></div>



     <div class="section">
        <h2 class="section-title">자유 게시판</h2>
        <i class="section-icon"><img src="https://d2u3dcdbebyaiu.cloudfront.net/img/web/topic_logo_kr_1587367606.png" alt="icon" width="32" height="32"></i>
         <div class="article-list">
          </h2> <div class="article-container">
          <span class="topic" style="display: none;">
          <a href="/kr/topics/" class=""></a></span>
          <a href="/kr/post/%EC%96%B4%EB%A6%B4%EB%95%90-%EC%9D%B4%EA%B3%B3%EC%A0%80%EA%B3%B3-%EB%8B%A4%EB%85%80%EB%B3%B4%EB%8A%94%EA%B2%8C-%EB%8B%B5%EC%9D%BC%EA%B9%8C-a4OEhMrV" class="tit ">어릴땐 이곳저곳 다녀보는게 답일까</a>
           <div class="wrap-info"><!---->
           <a href="/kr/post/%EC%96%B4%EB%A6%B4%EB%95%90-%EC%9D%B4%EA%B3%B3%EC%A0%80%EA%B3%B3-%EB%8B%A4%EB%85%80%EB%B3%B4%EB%8A%94%EA%B2%8C-%EB%8B%B5%EC%9D%BC%EA%B9%8C-a4OEhMrV" class="pv">
           <i class="blind">조회수</i>84</a> <!----></div></div>
           <div class="article"><span class="topic" style="display: none;">
           <a href="/kr/topics/" class=""></a></span>
            <a href="/kr/post/%EC%9D%B4%EC%A7%81%EC%8B%9C-%ED%9D%AC%EB%A7%9D%EC%97%B0%EB%B4%89-LCUGDmk7" class="tit ">이직시 희망연봉</a>
            <div class="wrap-info"><!----> <a href="/kr/post/%EC%9D%B4%EC%A7%81%EC%8B%9C-%ED%9D%AC%EB%A7%9D%EC%97%B0%EB%B4%89-LCUGDmk7" class="pv">
            <i class="blind">조회수</i>132</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
             <a href="/kr/post/%EC%98%A4%ED%8D%BC%EB%A0%88%ED%84%B0-%EB%B0%9B%EA%B3%A0-%EB%A0%88%ED%8D%BC%EC%B2%B4%ED%81%AC-%EB%8B%A8%EA%B3%84%EC%9D%B8%EB%8D%B0-BjdckGLS" class="tit ">오퍼레터 받고 레퍼체크 단계인데</a>
              <div class="wrap-info"><!----> <a href="/kr/post/%EC%98%A4%ED%8D%BC%EB%A0%88%ED%84%B0-%EB%B0%9B%EA%B3%A0-%EB%A0%88%ED%8D%BC%EC%B2%B4%ED%81%AC-%EB%8B%A8%EA%B3%84%EC%9D%B8%EB%8D%B0-BjdckGLS" class="pv"><i class="blind">조회수</i>58</a> <!----></div></div>
              <div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
              <a href="/kr/post/%EB%A9%B4%EC%A0%91%EB%B3%B4%EA%B3%A0-%EB%82%98%EC%99%94%EB%8A%94%EB%8D%B0-1XFHqh5k" class="tit ">면접보고 나왔는데....</a>
              <div class="wrap-info"><!----> <a href="/kr/post/%EB%A9%B4%EC%A0%91%EB%B3%B4%EA%B3%A0-%EB%82%98%EC%99%94%EB%8A%94%EB%8D%B0-1XFHqh5k" class="pv">
              <i class="blind">조회수</i>82</a> <!----></div></div><div class="article"><span class="topic" style="display: none;">
              <a href="/kr/topics/" class=""></a></span>
              <a href="/kr/post/%EA%B2%BD%EC%B0%B0-%ED%98%B9%EC%9D%80-%EA%B3%B5%EB%AC%B4%EC%9B%90-%EC%8B%9C%ED%97%98-%ED%95%A9%EA%B2%A9-%EB%B9%84%EA%B2%B0-%EC%A2%80-oQ3CSCqu" class="tit ">경찰 혹은 공무원 시험 합격 비결 좀...</a>
              <div class="wrap-info"><!----> <a href="/kr/post/%EA%B2%BD%EC%B0%B0-%ED%98%B9%EC%9D%80-%EA%B3%B5%EB%AC%B4%EC%9B%90-%EC%8B%9C%ED%97%98-%ED%95%A9%EA%B2%A9-%EB%B9%84%EA%B2%B0-%EC%A2%80-oQ3CSCqu" class="pv">
              <i class="blind">조회수</i>199</a> <!----></div></div> <a href="/kr/topics/%EC%9D%B4%EC%A7%81%C2%B7%EC%BB%A4%EB%A6%AC%EC%96%B4" class="btn-more">더보기</a> <!----> <!----> <!----></div>



        <div class="topic-list topic"><h2><i class="ico"><img src="https://d2u3dcdbebyaiu.cloudfront.net/img/web/topic_logo_kr_1587367050.png" alt="icon" width="32" height="32"></i>
            블라블라
          </h2> <div class="article"><span class="topic" style="display: none;">
          <a href="/kr/topics/" class=""></a></span>
          <a href="/kr/post/%ED%98%84%EC%8B%A4%EC%A0%81%EC%9C%BC%EB%A1%9C-%EC%B7%A8%EC%A7%91%EA%B0%80%EB%8A%A5-pvT3SZum" class="tit ">현실적으로 취집가능?</a>
          <div class="wrap-info"><!---->
          <a href="/kr/post/%ED%98%84%EC%8B%A4%EC%A0%81%EC%9C%BC%EB%A1%9C-%EC%B7%A8%EC%A7%91%EA%B0%80%EB%8A%A5-pvT3SZum" class="pv">
          <i class="blind">조회수</i>7,160</a> <!----></div></div><div class="article">
          <span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
          <a href="/kr/post/%EB%82%A8%EC%9E%90%EC%B9%9C%EA%B5%AC-%ED%8F%AD%ED%96%89%EC%8B%A0%EA%B3%A0%ED%95%B4%EC%95%BC%ED%95%A0%EA%B9%8C-%EC%96%B4%EB%96%A1%ED%95%B4%EC%95%BC%ED%95%A0%EA%B9%8C%EC%8B%A0%EA%B3%A0%EB%B3%B4%EB%B3%B5%EB%8B%B9%ED%95%A0%EA%B9%8C%EB%B4%90-%EA%B3%A0%EB%AF%BC%EC%9D%B4%EC%95%BC-yStxBjOd" class="tit ">남자친구 폭행...신고해야할까? 어떡해야할까(신고보복당할까봐 고민이야)</a>
          <div class="wrap-info"><!---->
          <a href="/kr/post/%EB%82%A8%EC%9E%90%EC%B9%9C%EA%B5%AC-%ED%8F%AD%ED%96%89%EC%8B%A0%EA%B3%A0%ED%95%B4%EC%95%BC%ED%95%A0%EA%B9%8C-%EC%96%B4%EB%96%A1%ED%95%B4%EC%95%BC%ED%95%A0%EA%B9%8C%EC%8B%A0%EA%B3%A0%EB%B3%B4%EB%B3%B5%EB%8B%B9%ED%95%A0%EA%B9%8C%EB%B4%90-%EA%B3%A0%EB%AF%BC%EC%9D%B4%EC%95%BC-yStxBjOd" class="pv">
          <i class="blind">조회수</i>15K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
           <a href="/kr/post/%EB%A7%88%ED%9D%94%EC%9D%B4-%EB%90%98%EB%A9%B4%EC%84%9C-%EB%8A%90%EB%82%80%EC%A0%90-zsnra2Uq" class="tit ">마흔이 되면서 느낀점..</a>
           <div class="wrap-info"><!----> <a href="/kr/post/%EB%A7%88%ED%9D%94%EC%9D%B4-%EB%90%98%EB%A9%B4%EC%84%9C-%EB%8A%90%EB%82%80%EC%A0%90-zsnra2Uq" class="pv">
           <i class="blind">조회수</i>36K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;"><a href="/kr/topics/" class=""></a></span>
           <a href="/kr/post/[blind-X-%EB%A9%A4%ED%94%BC%EC%8A%A4]-%EB%AE%A4%EC%A7%80%EC%BB%AC-%EB%A9%A4%ED%94%BC%EC%8A%A4-%EB%8C%93%EA%B8%80%EC%9D%B4%EB%B2%A4%ED%8A%B8-oKe9EnVk" class="tit ">[blind X 멤피스] 뮤지컬 멤피스 댓글이벤트</a>
           <div class="wrap-info"><!----> <a href="/kr/post/[blind-X-%EB%A9%A4%ED%94%BC%EC%8A%A4]-%EB%AE%A4%EC%A7%80%EC%BB%AC-%EB%A9%A4%ED%94%BC%EC%8A%A4-%EB%8C%93%EA%B8%80%EC%9D%B4%EB%B2%A4%ED%8A%B8-oKe9EnVk" class="pv">
           <i class="blind">조회수</i>37K</a> <!----></div></div><div class="article"><span class="topic" style="display: none;">
           <a href="/kr/topics/" class=""></a></span> <a href="/kr/post/%EA%B4%91%ED%99%94%EB%AC%B8-25%F0%9F%99%8B%E2%80%8D%E2%99%80%EF%B8%8F-%EC%8B%AC%EC%8B%AC%ED%95%B4-%EC%A3%BC%EA%B1%B0%E2%80%A6-Gn0Xs5Pj" class="tit ">광화문 25🙋‍♀️ 심심해 주거…</a>
           <div class="wrap-info"><!---->
           <a href="/kr/post/%EA%B4%91%ED%99%94%EB%AC%B8-25%F0%9F%99%8B%E2%80%8D%E2%99%80%EF%B8%8F-%EC%8B%AC%EC%8B%AC%ED%95%B4-%EC%A3%BC%EA%B1%B0%E2%80%A6-Gn0Xs5Pj" class="pv">
           <i class="blind">조회수</i>220</a> <!----></div></div>
           <a href="/kr/topics/%EB%B8%94%EB%9D%BC%EB%B8%94%EB%9D%BC" class="btn-more">더보기</a> <!----> <!----> <!----></div>


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