<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Page</title>
    <link rel="stylesheet" href="/front/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front/assets/css/VentasPro-Login.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        // 입력한 두 비밀번호가 일치하는지 확인하는 함수
        function checkPasswordMatch() {
            var password = document.getElementById("pwd").value;
            var confirmPassword = document.getElementById("pwdConfirm").value;

            if (password !== confirmPassword) {
                swal('비밀번호가 일치하지 않습니다.',"", 'warning');
            }else{
                swal('비밀번호가 일치합니다.',"", 'success');
            }
        }
        $(document).ready(function() {
            // 비밀번호 변경하는 함수
            $("#pwdchange").on("click", function() {
            var password = document.getElementById("pwd").value;
            var confirmPassword = document.getElementById("pwdConfirm").value;
            if (password !== confirmPassword) {
                swal('비밀번호가 일치하지 않습니다.',"", 'warning');
            }else{

                     $.ajax({
                         url: "../ajax/pwdChange.do",
                         type: "POST",
                         data: { nickname: $("#nickname").val(), email:$("#email").val(), pwd:$("#pwd").val()},
                         success: function(data) {
                             swal('비밀번호가 변경되었습니다.',"", 'success');
                         },
                         error: function() {
                             alert("서버와의 통신 중에 오류가 발생했습니다.");
                         }
                     });

                 }
             });
        });

        $(document).ready(function() {
            // 로그아웃 버튼 클릭 이벤트 핸들러
            $("#logout").on("click", function() {
                // GET 요청 보내고 페이지 새로고침
                window.location.href = "../member/logout.do";
                opener.parent.location.reload();
                setTimeout(function() {
                    window.close();
                }, 100); // 100밀리초(0.1초) 후에 창 닫기
            });
        });
        $(document).ready(function() {
            // 홈으로 버튼 클릭 이벤트 핸들러
            $("#home").on("click", function() {
                // GET 요청 보내고 페이지 새로고침
                opener.parent.location.reload();
                setTimeout(function() {
                    window.close();
                }, 100); // 100밀리초(0.1초) 후에 창 닫기
            });
        });
    </script>

    <style>
        /* 해당 버튼의 클래스에 스타일 적용 */
        .btn-primary-check {
            --bs-primary: #b42564; /* 원하는 색상으로 변경 */
            background: #b42564; /* 배경색 변경 */
        }
        .btn-primary-logout {
            --bs-primary: #4A90E2; /* 원하는 색상으로 변경 */
            background: #4A90E2; /* 배경색 변경 */
        }

    </style>
</head>

<body>
    <div id="main">
    <form id="form-login" action="mypage" method="post">
        <div class="text-center" id="info">
            <h3 class="text-center"><br>마이페이지</h3>
            <p class="text-center">회원정보</p>

                <div class="mb-3">
                    <label class="form-label" id="lbl-usuario" for="email">Email</label>
                    <input class="form-control" type="text" id="email" name="email" value="${loginOkUser.email}" readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label" id="lbl-usuario-1" for="nickname">NickName</label>
                    <input class="form-control" type="text" id="nickname" name="nickname" value="${loginOkUser.nickname}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label" id="lbl-password" for="pwd">Password</label>
                    <input class="form-control" type="password" id="pwd" name="pwd">
                </div>

                <div class="mb-3">
                    <label class="form-label" id="lbl-password-confirm" for="pwdConfirm">Password Check</label>
                    <input class="form-control" type="password" id="pwdConfirm" name="pwdConfirm">
                </div>
            <button class="btn btn-primary-check" id="pwdcheck" type="button" onclick="checkPasswordMatch();">비밀번호 확인</button>
            <br>
            <button class="btn btn-primary-check" id="pwdchange" type="button">비밀번호 변경</button>
            <br>
            <br>
            <button class="btn btn-primary-logout" id="home" type="button" onclick="home();">홈으로</button>
            <br>
            <button class="btn btn-primary-logout" id="logout" type="button" onclick="logout();">로그아웃</button>
        </div>
        </form>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
