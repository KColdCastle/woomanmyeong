<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 실패</title>
    <script>
        // JavaScript 코드
        window.onload = function() {
            // 페이지 로드 시 알림창 띄우기
            alert("회원가입에 실패했습니다. 다시 시도해 주세요.");
            // 이전 페이지로 돌아가기
            goBack();
        };

        function goBack() {
            window.history.go(-1);
        }
    </script>
</head>
<body>
</body>
</html>
