<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/front/test/assets/bootstrap/css/bootstrap.min.css">


    <link rel="stylesheet" href="/front/write.css">
    <script src="/front/js/trim.js"></script>

    <link rel="shortcut icon" href="/front/assets/img/favicon.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="/front/swiper-bundle.min.css">
    <link rel="stylesheet" type="text/css" href="/front/styles.css">
    <link rel="stylesheet" type="text/css" href="/front/board_type1.css">
    <link rel="stylesheet" type="text/css" href="/front/board_reply.css">

    <title>글쓰기</title>
</head>
       <!-- <jsp:include page="../form/navbar.jsp"/> -->
    <body>

       <main class="main">
           <div class="write">
               <div class="row">
                   <div class="row-in">

       <div data-v-0c83c085="" role="main" class="contents">
    <div data-v-0c83c085="" class="article-view-head">
        <h1 data-v-0c83c085=""><a data-v-0c83c085="" href="../" class="">홈</a> <a
                data-v-0c83c085=""href="./list.do" >게시판폼</a></h1>
        <h2 data-v-0c83c085="">${post.subject}</h2>
        <div data-v-0c83c085="" class="name"><a data-v-0c83c085=""
                 class="point" input type="text" class="form-control" value=${post.nickname} name="nickname"
                                           onkeydown="enterCheck(this)" readonly >${post.nickname}</a>

        </div>
        <div data-v-0c83c085="" class="wrap-info"><span data-v-0c83c085="" class="date"><i data-v-0c83c085=""
                    class="blind">작성일</i>${post.crdate}</span> <span data-v-0c83c085="" class="pv"><i data-v-0c83c085=""
                    class="blind">조회수</i>${post.viewnum}</span> <span data-v-0c83c085="" class="cmt"><i data-v-0c83c085=""
                    class="blind">댓글</i></span>
            <div data-v-0c83c085="" class="info_fnc">
               <span style="display: none;">
                            <div data-v-0c83c085="" class="ly_more popper">
                                <div data-v-0c83c085="" class="tip"></div>

                            </div>

            </div>
        </div>
    </div>
<div data-v-0c83c085="" class="article-view-contents">
<p data-v-0c83c085="" id="contentArea" class="contents-txt" input type="text" class="form-control" value=${post.content}</p>
<div data-v-0c83c085="" class="article_info">
    <div data-v-0c83c085="" class="info"><a data-v-0c83c085="" class="like"><i data-v-0c83c085=""
                class="blind">좋아요</i>좋아요</a> <a data-v-0c83c085="" class="cmt"><i data-v-0c83c085=""
                class="blind">댓글</i></a></div>

    </div>
                                <script>
                                $(document).ready(function() {
                                     $('#summernote').summernote({
                                             height: 300,                 // set editor height
                                             minHeight: null,             // set minimum height of editor
                                             maxHeight: null,             // set maximum height of editor
                                             focus: true                  // set focus to editable area after initializing summernote
                                     });
                                });

                                $(document).ready(function() {
                                     $('#summernote').summernote();
                                   });
                                </script>
                            </div>

                <form id="likeForm">
                    <button id="likebutton" class="btn btn-outline-dark btn-sm" type="button">
                        like<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 40 40" fill="none">
                            <path d="M2 10.5C2 9.67157 2.67157 9 3.5 9C4.32843 9 5 9.67157 5 10.5V16.5C5 17.3284 4.32843 18 3.5 18C2.67157 18 2 17.3284 2 16.5V10.5Z" fill="currentColor"></path>
                            <path d="M6 10.3333V15.7639C6 16.5215 6.428 17.214 7.10557 17.5528L7.15542 17.5777C7.71084 17.8554 8.32329 18 8.94427 18H14.3604C15.3138 18 16.1346 17.3271 16.3216 16.3922L17.5216 10.3922C17.7691 9.15465 16.8225 8 15.5604 8H12V4C12 2.89543 11.1046 2 10 2C9.44772 2 9 2.44772 9 3V3.66667C9 4.53215 8.71929 5.37428 8.2 6.06667L6.8 7.93333C6.28071 8.62572 6 9.46785 6 10.3333Z" fill="currentColor"></path>
                        </svg>
                    </button>
                    <input type="hidden" class="form-control" name="email" value="${loginOkUser.email}">
                    <input type="hidden" class="form-control" name="postseq" value="${post.seq}">
                </form>
                                <form style="padding-right: 0px;padding-left: 0px;" method="POST" action="comment.do">
                                <input type="hidden" class="form-control" name="email" value="${loginOkUser.email}">
                                <input type="hidden" class="form-control" name="nickname" value="${loginOkUser.nickname}">
                                <input type="hidden" class="form-control" name="postseq" value="${post.seq}">
                                    <div class="mb-3">
                                        <label class="form-label" for="replycontent">comment</label>
                                        <textarea class="form-control" id="replycontent" name="replycontent"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <div class="row">
                                            <div class="asd">
                                                <input type="submit" class="btn btn-primary" style="margin: -3px 22px 0px 470px;background: var(--bs-gray-600);padding-left: 37px;margin-right: 24px;padding-right: 37px;" value="작성">
                                            </div>
                                        </div>
                                    </div>
                                </form>

                <div class="card">
                    <div class="card-header">
                        <h3>Community&nbsp;</h3>
                    </div>
                    <div class="card-body" style="height: 233px;">
                        <ul class="list-group">
                            <li class="list-group-item" style="margin-bottom: 6px;">
                                <div class="d-flex media">
                                    <div></div>
                                    <div class="media-body">
                                        <div class="d-flex media" style="overflow: visible;">

                                            <div style="overflow: visible;" class="media-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                    <c:forEach items="${reply}" var="reply">
                                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;${reply.nickname} : ${reply.replycontent} <br>
                                                            <small class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;${reply.replydate} </small>
                                                        </p>
                                                    </c:forEach>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </footer>

            <div class="container">
                <div class="heading"></div>
            </div>
                        <!-- </form> -->
                    </div>
                </div>
            </div>

<script>
    document.getElementById("likebutton").addEventListener("click", function() {
        // Create a new FormData object to gather form data
        var formData = new FormData(document.getElementById("likeForm"));

        // Create a new XMLHttpRequest object
        var xhr = new XMLHttpRequest();

        // Configure the AJAX request
        xhr.open("POST", "good.do", true);

        // Set up a callback function to handle the response
        xhr.onreadystatechange = function() {

        };

        // Send the AJAX request with the form data

        alert("liked!");
        xhr.send(formData);
    });
</script>
        </section>
    </main>
    <script src="/front/test/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/front/test/assets/js/pikaday.min.js"></script>
    <script src="/front/test/assets/js/theme.js"></script>
</body>
</html>         <!--   <p class="name"> <a href="#" class="point">닉네임닉네임</a>
                · i******** </p>
            <p class="cmt-txt">
            </p>
            <div class="wrap-info"><span class="date"><i class="blind">작성일</i>54분</span> <a class="like"><i
                        class="blind">좋아요수</i>댓글 좋아요</a>
                <div class="info_fnc">
                    <div class="more_wp"><span><span style="display: none;">
                            </span> <a class="more on"><i class="blind">메뉴 더보기</i></a></span></div>
                </div>
            </div>
        </div>
     <div id="269286152" class="wrap-comment comment_area">
            <p class="name">> <a
                    href="/kr/company/%ED%81%90%EB%B8%8C%EC%97%94%ED%84%B0%ED%85%8C%EC%9D%B8%EB%A8%BC%ED%8A%B8/"
                    class="point">닉네임닉네임닉닉닉ㄴ긴긴ㄱ닉닉</a>
                · Q********* </p>
            <p class="cmt-txt">댓글내용</p>
            <div class="wrap-info"><span class="date"><i class="blind">작성일</i>50분</span> <a class="like"><i
                        class="blind">좋아요수</i>좋아요</a> <a class="cmt"><i class="blind">대댓글</i>43</a>
                <div class="info_fnc">
                    <div class="more_wp"><span><span style="display: none;">
                </div>
            </div>
        </div>
    </div>-->



                                <script>
                                $(document).ready(function() {
                                     $('#summernote').summernote({
                                             height: 300,                 // set editor height
                                             minHeight: null,             // set minimum height of editor
                                             maxHeight: null,             // set maximum height of editor
                                             focus: true                  // set focus to editable area after initializing summernote
                                     });
                                });

                                $(document).ready(function() {
                                     $('#summernote').summernote();
                                   });
                                </script>
                            </div>

                <button id="likebutton" onclick="liked()" class="btn btn-outline-dark btn-sm" type="button">like<svg
                        xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 40 40" fill="none">
                        <path
                            d="M2 10.5C2 9.67157 2.67157 9 3.5 9C4.32843 9 5 9.67157 5 10.5V16.5C5 17.3284 4.32843 18 3.5 18C2.67157 18 2 17.3284 2 16.5V10.5Z"
                            fill="currentColor"></path>
                        <path
                            d="M6 10.3333V15.7639C6 16.5215 6.428 17.214 7.10557 17.5528L7.15542 17.5777C7.71084 17.8554 8.32329 18 8.94427 18H14.3604C15.3138 18 16.1346 17.3271 16.3216 16.3922L17.5216 10.3922C17.7691 9.15465 16.8225 8 15.5604 8H12V4C12 2.89543 11.1046 2 10 2C9.44772 2 9 2.44772 9 3V3.66667C9 4.53215 8.71929 5.37428 8.2 6.06667L6.8 7.93333C6.28071 8.62572 6 9.46785 6 10.3333Z"
                            fill="currentColor"></path>
                    </svg></button>
                                <form style="padding-right: 0px;padding-left: 0px;" method="POST" action="comment.do">
                                <input type="hidden" class="form-control" name="email" value="${loginOkUser.email}">
                                <input type="hidden" class="form-control" name="nickname" value="${loginOkUser.nickname}">
                                <input type="hidden" class="form-control" name="postseq" value="${post.seq}">
                                    <div class="mb-3">
                                        <label class="form-label" for="replycontent">comment</label>
                                        <textarea class="form-control" id="replycontent" name="replycontent"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <div class="row">
                                            <div class="asd">
                                                <input type="submit" class="btn btn-primary" style="margin: -3px 22px 0px 470px;background: var(--bs-gray-600);padding-left: 37px;margin-right: 24px;padding-right: 37px;" value="작성">
                                            </div>
                                        </div>
                                    </div>
                                </form>

            <!--   <div class="card">
                    <div class="card-header">
                        <h3>Community&nbsp;</h3>
                    </div>
                    <div class="card-body" style="height: 233px;">
                        <ul class="list-group">
                            <li class="list-group-item" style="margin-bottom: 6px;">
                                <div class="d-flex media">
                                    <div></div>
                                    <div class="media-body">
                                        <div class="d-flex media" style="overflow: visible;">

                                            <div style="overflow: visible;" class="media-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                    <c:forEach items="${reply}" var="reply">
                                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;${reply.nickname} : ${reply.replycontent} <br>
                                                            <small class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;${reply.replydate} </small>
                                                        </p>
                                                    </c:forEach>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div> -->
            </footer>

            <div class="container">
                <div class="heading"></div>
            </div>
                        <!-- </form> -->
                    </div>
                </div>
            </div>

<script>
    let likepost = document.getElementById("likebutton");
    likepost.addEventListener("click", function () {
        panelbear("track", "likepost");
    });
</script>
        </section>
    </main>
    <script src="/front/test/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/front/test/assets/js/pikaday.min.js"></script>
    <script src="/front/test/assets/js/theme.js"></script>
     <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

</body>
</html>