<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Page</title>
    <link rel="stylesheet" href="/front/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front/assets/css/VentasPro-Login.css">

    <script>
        // 입력한 두 비밀번호가 일치하는지 확인하는 함수
        function checkPasswordMatch() {
            var password = document.getElementById("txt-password").value;
            var confirmPassword = document.getElementById("txt-password-confirm").value;

            if (password !== confirmPassword) {
                alert("비밀번호가 일치하지 않습니다.");
            }
            alert("비밀번호가 일치합니다.");
        }
    </script>
    <style>
        /* 해당 버튼의 클래스에 스타일 적용 */
        .btn-primary-check {
            --bs-primary: #b42564; /* 원하는 색상으로 변경 */
            background: #b42564; /* 배경색 변경 */
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
                    <label class="form-label" id="lbl-usuario" for="txt-usuario">Email</label>
                    <input class="form-control" type="text" id="txt-usuario" name="email" value="${loginOkUser.email}" readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label" id="lbl-usuario-1" for="txt-usuario">NickName</label>
                    <input class="form-control" type="text" id="txt-usuario-1" name="nickname" value="${loginOkUser.nickname}">
                </div>

                <div class="mb-3">
                    <label class="form-label" id="lbl-password" for="txt-password">Password</label>
                    <input class="form-control" type="password" id="txt-password" name="pwd" value="${loginOkUser.pwd}">
                </div>

                <div class="mb-3">
                    <label class="form-label" id="lbl-password-confirm" for="txt-password-confirm">Password Check</label>
                    <input class="form-control" type="password" id="txt-password-confirm" name="pwdConfirm" value="${loginOkUser.pwd}">
                </div>
            <button class="btn btn-primary-check" id="btn-sesion" type="button" onclick="checkPasswordMatch();">비밀번호 확인</button>
            <br>
            <button class="btn btn-primary" id="btn-sesion" type="submit" style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #256db4;">변경</button>
        </div>
        </form>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>

