<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <link rel="stylesheet" href="/front/test/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa:300,400">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
        <link rel="stylesheet" href="/front/test/assets/css/Community-ChatComments.css">
        <link rel="stylesheet" href="/front/test/assets/css/Like-Button-for-PanelBear-Analytics.css">
        <link rel="stylesheet" href="/front/test/assets/css/Navbar-With-Button-icons.css">
        <link rel="stylesheet" href="/front/test/assets/css/pikaday.min.css">
        <link rel="stylesheet" href="/front/test/assets/css/Wave-Button.css">





    <link rel="stylesheet" href="/front/write.css">
    <script src="/front/js/trim.js"></script>



        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="/front/assets/img/favicon.png" type="image/png">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="/front/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" type="text/css" href="/front/styles.css">
        <link rel="stylesheet" type="text/css" href="/front/board_type1.css">

        <title>글쓰기</title>

    </head>
    <body>

        <main class="main">
            <div class="write">
                <div class="row">
                    <div class="row-in">
                       <input type="hidden" class="form-control" name="email" value="${loginOkUser.email}">
                       <input type="hidden" class="form-control" name="postseq" value="${loginOkUser.seq}">


                        <!--<form action="insert.do" name="f" method="post" class="form-horizontal" id="board_write_form"
                              novalidate="novalidate" enctype="multipart/form-data"> -->
                            <div class="form-group">
                                <label class="col-md-2 control-label">글쓴이</label>
                                <div class="form-group-half">
                                    <input type="text" class="form-control" value=${post.nickname} name="nickname"
                                           onkeydown="enterCheck(this)" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">제목</label>
                                <div class="form-group-half">

                                    <input type="text" class="form-control" value=${post.subject} name="subject" readonly>
                                </div>
                            </div>



                            <div class="form-group">
                              <label class="col-md-2 control-label">내용</label>
                                <div class="form-group-in">

                                <textarea name="content" id="summernote" readonly value=${post.content}>${post.content}</textarea>

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

                <button class="btn btn-primary-check" id="nicknamecheck" type="button">like</button>

                        $(document).ready(function() {
                            // 닉네임 중복 여부를 확인하는 함수
                            $("#nicknamecheck").on("click", function() {

                                $.ajax({
                                    url: "../ajax/search.do", // 실제 서버 API 엔드포인트 URL로 변경해야 함
                                    type: "POST",
                                    data: { nickname: $("#nickname").val()},
                                    success: function(data) {
                                        if (data.available) {
                                            alert("사용 가능한 닉네임입니다.");
                                        } else {
                                            alert("이미 사용 중인 닉네임입니다.");
                                        }
                                    },
                                    error: function() {
                                        alert("서버와의 통신 중에 오류가 발생했습니다.");
                                    }
                                });
                            });
                        });




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
                                                        <p>${reply.nickname} : ${reply.replycontent} <br>
                                                            <small class="text-muted">${reply.replydate} </small>
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
            <form style="padding-right: 0px;padding-left: 0px;">
                <div class="mb-3"><label class="form-label" for="message">comment</label><textarea class="form-control" id="message"></textarea></div>
                <div class="mb-3">
                    <div class="row">
                        <div class="asd"><button class="btn btn-primary" type="button" style="margin: -3px 22px 0px 470px;background: var(--bs-gray-600);padding-left: 37px;margin-right: 24px;padding-right: 37px;">작성</button></div>
                    </div>
                </div>
            </form>
            <div class="container">
                <div class="heading"></div>
            </div>
                        <!-- </form> -->
                    </div>
                </div>
            </div>

        </section>
    </main>
    <script src="/front/test/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/front/test/assets/js/pikaday.min.js"></script>
    <script src="/front/test/assets/js/theme.js"></script>
</body>
</html>