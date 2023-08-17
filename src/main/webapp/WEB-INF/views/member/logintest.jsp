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
    <form id="loginform" action="login" method="post">
        <div class="text-center" id="info" style="padding: 1px;height: 437px;">
            <h3 class="text-center" style="padding: 45px;">여행에 빠진 사람들</h3>
            <p class="text-center" style="height: 18px;font-size: 21px;">fall in travel</p>
            <form class="text-start" id="form-login">
                <div class="mb-3"><label class="form-label" id="lbl-usuario" for="txt-usuario">Email</label><input class="form-control" type="text" id="txt-usuario" name="email"></div>
                <div class="mb-3"><label class="form-label" id="lbl-password" for="txt-password">Password</label><input class="form-control" type="password" id="txt-password" name="pwd"></div>
            </form><button class="btn btn-primary" id="btn-sesion" type="submit" style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #323537;">로그인</button>
        </div>
        </form>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>