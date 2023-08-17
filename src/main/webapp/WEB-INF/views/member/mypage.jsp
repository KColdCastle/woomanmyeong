<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Page</title>


    <link rel="stylesheet" href="/front/loginM.css">
    <style>
        body {
            background-image: url('/front/images/background.png');
            background-size: cover; /* 배경 이미지가 화면을 덮도록 설정 */
            background-repeat: no-repeat; /* 배경 이미지 반복 제거 */
            background-attachment: fixed; /* 배경 이미지 스크롤에 고정 */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            margin: 0;
        }
        .modal {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
            max-width: 600px;
            width: 100%;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

    </style>
</head>
<body>


    <div class="member">
    <form id="mypageform" action="mypage" method="post">
        <!-- 1. 로고 -->
        <h2 style="color: rgb(140, 171, 255);">마이페이지</h2>
        <!-- <img class="logo" src="./images/images2/logo-naver.png"> -->

        <!-- 2. 필드 -->
        <div class="field">
            <b style="color: rgb(68, 119, 206);">이메일</b>
            <input type="text" name="email" value="${loginOkUser.email}" readonly>
            <!-- <span class="email"><input type="text"></span> -->
        </div>
		<div class="field">
            <b style="color: rgb(68, 119, 206);">닉네임</b>
            <input type="text" name="nickname" value="${loginOkUser.nickname}">
            <!-- <span class="email"><input type="text"></span> -->
        </div>
        <div class="field">
            <b style="color: rgb(68, 119, 206);">비밀번호</b>
            <input type="text" name="pwd" value="${loginOkUser.pwd}">
            <!-- <input class="userpw" type="password"> -->
        </div>

        <input type="submit" value="회원정보 변경">
    </div>
        </form>
    </div>

</body>
</html>