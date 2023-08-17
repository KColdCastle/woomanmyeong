<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>국여진 회원가입창</title>
    

    <!-- <link rel="icon" href="./images/images2/favicon.png"> -->
    <link rel="stylesheet" href="loginM.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <body>
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo"></a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="#about" class="nav__link">혼자여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#discover" class="nav__link">커플여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#place" class="nav__link">가족여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#place" class="nav__link">단체여행</a>
                        </li>
                        <li class="nav__item">
                            <a href="#place" class="nav__link">자유게시판</a>
                        </li>
                        <li class="nav__item">
                            <a href="#place" class="nav__link">신고</a>
                        </li>
                    </ul>
                </div>
            </nav>
    <style>
        body {
            background-image: url('./images/background.png');
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
        <!-- 1. 로고 -->
        <h2 style="color: rgb(140, 171, 255);"></h2>
        <!-- <img class="logo" src="./images/images2/logo-naver.png"> -->

        <!-- 2. 필드 -->
        <div class="field">
            <b style="color: rgb(68, 119, 206);">닉네임</b>
            <input type="text" placeholder="닉네임을 입력하세요 ">
            <!-- <span class="email"><input type="text"></span> -->
        </div>
        <div class="field">
            <b style="color: rgb(68, 119, 206);">비밀번호</b>
            <input type="text" placeholder="비밀번호를 입력하세요 ">
            <!-- <input class="userpw" type="password"> -->
        </div>
        <div class="field">
            <b style="color: rgb(68, 119, 206);">비밀번호 재확인</b>
            <input type="text" placeholder="비밀번호 확인 ">
            <!-- <input class="userpw-confirm" type="password"> -->
        </div>
        <div class="field">
            <b style="color: rgb(68, 119, 206);">이메일</b>
            <input type="text" placeholder="이메일을 입력하세요 ">
            
        </div>


        <!-- 5. 이메일_전화번호 -->
        <div class="col-sm-6 ms-0">
            <select class="form-select" aria-label="Default select example" id="freefix">
                <option selected>이메일 선택</option>
                <option value="@naver.com">@naver.com</option>
                <option value="@daum.net">@daum.net</option>
                <option value="@gmail.com">@gmail.com</option>
                <option value="@hamail.com">@hamail.com</option>
                <option value="@yahoo.com">@yahoo.com</option>
            </select>
        </div>
        <div class="col-sm-7 mt-3 me-3">
            <input class="form-control mail-check-input" placeholder="인증번호 "
                   disabled="disabled" maxlength="7" onkeyup="checkAuthNumFn()">
        </div>
        <div class="col-sm-3 mt-3 ">
            <input type="button" class="btn btn-primary" id="mail-Check-btn" value="메일인증">
        </div>
        <span id="mail-check-warn" class="mb-2"></span>
        <input type="submit" value="가입하기">
    </div>

</body>
</html>