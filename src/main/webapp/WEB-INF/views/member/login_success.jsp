<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>회원가입 성공</title>
    <script>
        // JavaScript 코드
        window.onload = function() {
            // 페이지 로드 시 알림창 띄우기
            swal("환영합니다",'fallintravel 여행에 빠진 사람들.','success');

            // 일정 시간 후에 페이지 이동
            setTimeout(function() {
                window.location.href = "../index.do";
            }, 1000); // 1초 후에 페이지 이동
        };
    </script>
</head>
<body>
</body>
</html>