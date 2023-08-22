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

    <script language="javascript">
        function check() {
            var bd_subjectval = f.bd_subject.value;
            bd_subjectval = trim(bd_subjectval);
            if (bd_subjectval.length == 0) {
                alert("제목을 입력해주세요");
                f.bd_subject.value = "";
                f.bd_subject.focus();
                return false;
            } else {
                pass = checkByteLen(bd_subjectval, 80);
                if (!pass) {
                    alert("제목이 너무 길어요");
                    f.bd_subject.focus();
                    return false;
                }
            }
            }
    var bd_contentval = f.summernote.value;

            if (bd_contentval.length == 0) {
                alert("내용을 입력해주세요");
                f.bd_content.value = "";
                f.bd_content.focus();
                return false;
            }

    </script>


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

                        <!--<form action="insert.do" name="f" method="post" class="form-horizontal" id="board_write_form"
                              novalidate="novalidate" enctype="multipart/form-data"> -->
                            <div class="form-group">
                                <label class="col-md-2 control-label">닉네임</label>
                                <div class="form-group-half">
                                    <input type="text" class="form-control" value="${loginOkUser.nickname}" name="nickname"
                                           onkeydown="enterCheck(this)" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">제목</label>
                                <div class="form-group-half">

                                    <input type="text" class="form-control" placeholder="제목을 입력하세요" name="subject">
                                </div>
                            </div>



                            <div class="form-group">
                              <label class="col-md-2 control-label">내용</label>
                                <div class="form-group-in">

                                <textarea name="content" id="summernote" value="content"></textarea>

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

                <button id="likebutton" onclick="liked()" class="btn btn-outline-dark btn-sm" type="button">like<svg
                        xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 40 40" fill="none">
                        <path
                            d="M2 10.5C2 9.67157 2.67157 9 3.5 9C4.32843 9 5 9.67157 5 10.5V16.5C5 17.3284 4.32843 18 3.5 18C2.67157 18 2 17.3284 2 16.5V10.5Z"
                            fill="currentColor"></path>
                        <path
                            d="M6 10.3333V15.7639C6 16.5215 6.428 17.214 7.10557 17.5528L7.15542 17.5777C7.71084 17.8554 8.32329 18 8.94427 18H14.3604C15.3138 18 16.1346 17.3271 16.3216 16.3922L17.5216 10.3922C17.7691 9.15465 16.8225 8 15.5604 8H12V4C12 2.89543 11.1046 2 10 2C9.44772 2 9 2.44772 9 3V3.66667C9 4.53215 8.71929 5.37428 8.2 6.06667L6.8 7.93333C6.28071 8.62572 6 9.46785 6 10.3333Z"
                            fill="currentColor"></path>
                    </svg></button>

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
                                                        <p><a href="#">Sara Doe:</a> This guy has been going 100+ MPH on side streets. <br>
<small class="text-muted">August 6, 2016 @ 10:35am </small></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item" style="margin-bottom: 6px;">
                                <div class="d-flex media">
                                    <div></div>
                                    <div class="media-body">
                                        <div class="d-flex media" style="overflow: visible;">

                                            <div style="overflow: visible;" class="media-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <p><a href="#">Brennan Prill:</a> This guy has been going 100+ MPH on side streets. <br>
<small class="text-muted">August 6, 2016 @ 10:35am </small></p>
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
</body>
</html>