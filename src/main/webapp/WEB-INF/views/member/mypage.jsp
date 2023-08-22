<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="/front/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front/assets/css/VentasPro-Login.css">
</head>

<body>
    <div id="main">
    <form id="form-login" action="mypage" method="post">
        <div class="text-center" id="info">
            <h3 class="text-center"><br>마이페이지</h3>
            <p class="text-center">회원정보</p>

                <div class="mb-3"><label class="form-label" id="lbl-usuario" for="txt-usuario">Email</label><input class="form-control" type="text" id="txt-usuario" name="email" value="${loginOkUser.email}" readonly>
                    <div class="mb-3"><label class="form-label" id="lbl-usuario-1" for="txt-usuario">NickName</label><input class="form-control" type="text" id="txt-usuario-1" name="nickname" value="${loginOkUser.nickname}" ></div>
                </div>
                <div class="mb-3"><label class="form-label" id="lbl-password" for="txt-password">Password</label><input class="form-control" type="password" id="txt-password" name="pwd" value="${loginOkUser.pwd}" ></div>
            <button class="btn btn-primary" id="btn-sesion" type="submit"  style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #323537;">변경</button>
        </div>
        </form>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>

