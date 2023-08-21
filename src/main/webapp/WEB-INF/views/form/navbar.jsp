<%@ page language="java" contentType="text/html;charset=utf-8"%>

    <body>
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo"></a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">

                        <li class="nav__item">
                            <a href="../" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="../post_page/soloList.do" class="nav__link">혼자여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="../post_page/coupleList.do" class="nav__link">커플여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#discover" class="nav__link">가족여행</a>
                        </li>
		                <li class="nav__item dropdown">
                            <a class="nav__link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   자유게시판
                            </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="../post_page/list.do">여행은 혼자지</a>
                                <a class="dropdown-item" href="elements.html">여행은 커플</a>
                                <a class="dropdown-item" href="elements.html">즐거운 가족여행~</a>
                                <a class="dropdown-item" href="elements.html">맘대로 떠드는 자유게시판</a>
                                </div>
                            </li>

                     <!--   <div class="srch_img">
                           <a href="#" class="m_menu"></a>
                           <a href="#" class="searchBtn" title="검색입력서식 열기"><span></span></a>
                           <div class="appear_first">
                               <a href="#"></a>
                           </div>
                           <div class="loop">
                               <a href="#"></a>
                           </div>
                       </div>
                       <form action="/" method="post">
                           <fieldset>
                               <legend class="blind">검색하기</legend>
                               <input type="text" id="srch" placeholder="검색어를 입력해주세요">
                               <label for="srch"><a href="#" id="searchToggle">검색</a></label>
                           </fieldset>
                       </form> -->

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
