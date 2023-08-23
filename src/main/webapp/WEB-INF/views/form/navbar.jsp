<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                            <a href="../post_page/familyList.do" class="nav__link">가족여행</a>
                        </li>
                        <li class="nav__item">
                        <a href="../post_page/freeList.do" class="nav__link">자유게시판</a>
                        </li>
                        <li class="nav__item">
                            <a href="../post_page/noticeList.do" class="nav__link">공지사항</a>
                        </li>
                        <li class="nav__item">
                        <a href="../post_page/list.do" class="nav__link">이것은 <br>모든글 </a>
                        </li>
                        <li class="nav__item">
                                <c:choose>
                                    <c:when test="${empty loginOkUser}">
                                        <a href="../member/logintest"  class="nav__link">로그인</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="../member/mypage.do"  class="nav__link"><font style="color:green">${loginOkUser.nickname}</font>님 환영합니다.</a>
                                    </c:otherwise>
                                </c:choose>
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
