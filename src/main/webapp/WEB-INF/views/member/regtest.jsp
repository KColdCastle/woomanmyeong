<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="/front/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front/assets/css/animate.min.css">
    <link rel="stylesheet" href="/front/assets/css/VentasPro-Login.css">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
    <div id="main">
    <form id="signupForm" action="register" method="post">
        <div class="text-center" id="info" style="padding: 1px;height: 732px;">
            <h3 class="text-center" style="padding: 45px;">여행에 빠진 사람들</h3>
            <p class="fs-4 text-center" style="height: 18px;font-size: 21px;margin: 15px;">회원가입</p>
            <form class="text-start" id="form-login">
                <div class="mb-3"><label class="form-label" id="lbl-usuario" for="txt-usuario">NickName</label><input class="form-control" input type="text" id="txt-usuario" name="nickname">
                    <div class="mb-3"><label class="form-label" id="lbl-usuario-1" for="txt-usuario">Password</label><input class="form-control"input type="password" id="txt-usuario-1" name="pwd">
                        <div class="mb-3"><label class="form-label" id="lbl-usuario-1" for="txt-usuario">Re_Password</label><input class="form-control"input type="password" id="txt-usuario-1" name="check_pwd"></div>
                    </div>
                </div>
                <div class="mb-3"><label class="form-label" id="lbl-password" for="txt-password">Email</label>
                <input class="form-control" type="text" id="txt-usuario-2" name="email">
                    <select class="form-select" style="margin: 0px;" id="emailDomainSelect" name="maildomain">
                        <option value="@naver.com" selected="">@naver.com</option>
                        <option value="@gmail.com">@gmail.com</option>
                        <option value="@daum.net">@daum.net</option>
                        <option value="@nate.com ">@nate.com </option>
                    </select>
                    <div class="mb-3"><label class="form-label" id="lbl-password-1" for="txt-password">Certification Number</label><input class="form-control" type="text" id="txt-usuario-3" disabled="disabled" onkeyup="checkAuthNumFn()" name="verificationCode" maxlength="10"></div>
                </div>
            </form>
                <div class="mb-3">
                  <button class="btn btn-primary pulse animated" id="btn-sesion" id="emailConfirmButton" value="메일인증" onclick="sendEmailConfirmation()" type="button" style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #323537;width: 248px;padding: 6px 12px;margin: -51px;">메일인증</button>
                </div>
                <button class="btn btn-primary pulse animated" id="btn-sesion-1" type="submit" style="--bs-primary: #256db4;--bs-primary-rgb: 37,109,180;background: #323537;width: 249px;">회원가입</button>
            </div>
         </form>
    </div>
    <script src="/front/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/front/assets/js/bs-init.js"></script>
    <script>
            function sendEmailConfirmation() {
                var selectedDomain = document.getElementById("emailDomainSelect").value;
                var userEmail = document.querySelector("input[name=email]").value;

                var completeEmail = userEmail + selectedDomain;

                var xhr = new XMLHttpRequest();
                xhr.open("POST", "/api/mail/confirm.json", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        swal('코드발송','이메일 인증 코드를 발송했습니다. 이메일을 확인해주세요.','info');
                    }
                };
                xhr.send("email=" + completeEmail);
                enableMailVerification();
                disableEmail();
            }
        </script>

        <script>
            function enableMailVerification() {
                var verificationInput = document.getElementById("txt-usuario-3");
                verificationInput.removeAttribute("disabled");
                verificationInput.focus();
            }
            function disableEmail(){
                document.getElementById("txt-usuario-2").readOnly = true;
            }
        </script>
</body>

</html>