<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <link rel="stylesheet" href="/front/write.css">
    <script src="/front/js/trim.js"></script>

    <script>
    function trim(str){
    	while(str && str.indexOf(" ") == 0)
    		str = str.substring(1);
    	while(str && str.lastIndexOf(" ") == str.length-1)
    		str = str.substring(0, str.length-1);
    	return str;
    }
    function checkByteLen(str, maxBytes) {
        var len = 0;
        for (var i = 0; i < str.length; i++) {
            var charCode = str.charCodeAt(i);
            if (charCode <= 0x007F) {
                len += 1;
            } else if (charCode <= 0x07FF) {
                len += 2;
            } else if (charCode <= 0xFFFF) {
                len += 3;
            } else {
                len += 4;
            }
        }
        return len <= maxBytes;
    }
    $(document).ready(function() {
        $("#submitButton").on("click", function() {
            var bd_subjectval = document.getElementById("subject").value;
            bd_subjectval = trim(bd_subjectval);
            if (bd_subjectval.length == 0 || bd_subjectval=="") {
                swal('제목을 입력해주세요.',"", 'warning');
                f.bd_subject.value = "";
                f.bd_subject.focus();
                return false;
            } else {
                pass = checkByteLen(bd_subjectval, 80);
                if (!pass) {
                    swal('제목이 너무 길어요.',"", 'warning');
                    f.bd_subject.focus();
                    return false;
                }
            }
            var bd_contentval = document.getElementById("summernote").value;
            if (bd_contentval.length == 0 || bd_contentval=="") {
                swal('내용을 입력해주세요.',"", 'warning');
                f.bd_content.value = "";
                f.bd_content.focus();
                return false;
            }
            $.ajax({
                    url: "boardin.do",
                    method: "POST",
                    data: $("#boardpostinsert").serialize(),
                    success: function(response) {
                        // 서버로의 요청이 성공적으로 완료되면 페이지 이동
                        location.href = document.referrer;
                    },
                    error: function(xhr, status, error) {
                        // 서버 요청 실패 시 처리
                        // 예: swal로 에러 메시지 출력
                        swal('서버 요청 실패', '서버와의 통신 중 문제가 발생했습니다.', 'error');
                    }
                });
            });
        });
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
        <title>글쓰기</title>

    </head>
    <body>
    <jsp:include page="form/navbar.jsp"/>
    <img src="/front/assets/img/home1.jpg" alt="" class="board_reply_img">
        <h1 class="home__data-title" style="position: absolute;"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 여행에 빠지다</h1>

    <form id="boardpostinsert" action="boardin.do" method="post" name="f" >
        <main class="main">
            <div class="write">
                <div class="row">
                    <div class="row-in">
                       <input type="hidden" class="form-control" name="email" value="${loginOkUser.email}">
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
                                    <input type="text" class="form-control" placeholder="제목을 입력하세요" name="subject" id="subject">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">카테고리</label>
                                <div class="form-group-quarter">
                                    <select id="board_category" name="boardname" class="form-control" >

                                                <option value="혼자여행">혼자여행</option>
                                                <option value="커플여행">커플여행</option>
                                                <option value="가족여행">가족여행</option>
                                                <option value="자유게시판">자유게시판</option>
                                                <c:choose>
                                                <c:when test="${loginOkUser.nickname =='관리자'}">
                                                    <option value="공지사항">공지사항</option>
                                                </c:when>
                                                </c:choose>
                                    </select>
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

                            <div class="form-group">
                                <div class="form-group-submit">
                                    <button type="button" class="btn btn-primary" id="submitButton">글쓰기</button>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            </form>
        </body>
        <jsp:include page="form/footer.jsp"/>
</html>