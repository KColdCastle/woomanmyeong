<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
function mypage(){
  window.open("../member/mypage.do", "My Page", "width=600, height=800, left=600, top=100");
}
</script>
<style>
.nav__link__nick {
  background-color: transparent; /* 배경색을 투명으로 설정 */
  color:hsl(var(--hue-color), 24%, 35%); /* 원하는 글자색으로 변경 */
  border: none; /* 기본 테두리 제거 */
  cursor: pointer; /* 마우스 커서 모양 변경 */
  font-size: 16px; /* 원하는 글자 크기로 변경 */
  font-weight: bold; /* 원하는 폰트 두께로 변경 */
  font-family: "Open Sans", sans-serif;
}
.nav__link__nick:hover {
  color: white;
}
</style>

        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo"></a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">

                        <li class="nav__item">
                            <a href="../index.do" class="nav__link active-link">Home</a>
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
                                        <a href="../"  class="nav__link">로그인</a>
                                    </c:when>
                                    <c:otherwise>
                                        <input class="nav__link__nick" type="button" onclick="mypage()" value="${loginOkUser.nickname}"/>
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
