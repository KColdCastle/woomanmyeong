<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


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
    function back(){
        location.href = document.referrer;
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
    <jsp:include page="form/navbar.jsp"/>
    <form id="boardpostinsert" action="write/boardin.do" method="post" name="f">

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

                                    <input type="text" class="form-control" placeholder="제목을 입력하세요" name="subject">
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
                                    <button type="submit" class="btn btn-primary"onclick="back();">글쓰기</button>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            </form>
        </body>
        <jsp:include page="form/footer.jsp"/>
</html>