<%@ page contentType="text/html;charset=utf-8"%>
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
</html>