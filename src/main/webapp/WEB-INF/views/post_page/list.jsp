<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
   <input type="hidden" class="form-control" name="nickname" value="${loginOkUser.nickname}">

    <div class="row justify-content-center">
        <div class="col-xl-10 col-xxl-9">
            <div class="card shadow">
                <div class="card-header d-flex flex-wrap justify-content-center align-items-center justify-content-sm-between gap-3">
                    <h5 class="display-6 text-nowrap text-capitalize mb-0">전체글</h5>
                    <form method="GET" action="/post_page/list.do">
                    <div class="input-group input-group-sm w-auto">
                        <input class="form-control form-control-sm" type="text" placeholder="검색어를 입력하세요." id="searchText" name="searchText" value="${param.searchText}">
                        <button class="btn btn-outline-primary btn-sm" type="submit">검색</button>
                    </div>
                    </form>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>닉네임</th>
                                    <th>제목</th>
                                    <th>게시판이름</th>
                                    <th>업로드날짜</th>
                                    <th>수정날짜</th>
                                    <th class="text-center">조회수</th>
                                    <c:if test="${loginOkUser.nickname =='관리자'}">
                                        <th align='center'>삭제</th>
                                    </c:if>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listResult.list.content}" var="post">
                                    <TR align='center' noshade>
                                        <TD>${post.nickname}</TD>
                                        <TD>
                                          <a href="content.do?seq=${post.seq}">
                                            ${post.subject}
                                          </a>
                                        </TD>
                                        <TD align='center'>${post.boardname}</TD>
                                        <TD align='center'>${post.crdate}</TD>
                                        <TD align='center'>${post.cudate}</TD>
                                        <TD align='center'>${post.viewnum}</TD>
                                            <c:if test="${loginOkUser.nickname =='관리자'}">
                                                <td align='center'>
                                                    <a href='del.do?&seq=${post.seq}'>삭제</a>
                                                </td>
                                            </c:if>
                                       </TR>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer">
                    <nav>
                        <ul class="pagination pagination-sm mb-0 justify-content-center">
                               <c:forEach begin="0" end="${listResult.totalPageCount > 1 ? listResult.totalPageCount - 1 : 0}" var="i">
                                   <li class="page-item">
                                   <a class="page-link" href="list.do?page=${i}&searchText=${param.searchText}">
                                        <c:choose>
                                           <c:when test="${i==listResult.page}">
                                           <strong>${i+1}</strong>
                                           </c:when>
                                           <c:otherwise>
                                              ${i+1}
                                           </c:otherwise>
                                        </c:choose>
                                </a>&nbsp;
                                </li>
                               </c:forEach>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrapList.min.js"></script>
</body>

</html>