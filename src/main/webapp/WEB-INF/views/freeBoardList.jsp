<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="freeboard.css">
    <link rel="stylesheet" href="board_type1.css">
    <div class="board_type1_wrap">
        <table class="board_list_type1">
            
            <header class="header" id="header">
                <nav class="nav container">
                    <a href="#" class="nav__logo"></a>
    
                    <div class="nav__menu" id="nav-menu">
                        <ul class="nav__list">
                            <li class="nav__item">
                                <a href="#home" class="nav__link active-link">Home</a>
                            </li>
                            <li class="nav__item">
                                <a href="#home" class="nav__link">혼자여행</a>
                            </li>
                            <li class="nav__item">
                                <a href="#couple" class="nav__link">커플여행</a>
                            </li>
                            <li class="nav__item">
                                <a href="#discover" class="nav__link">가족여행</a>
                            </li>
                            <li class="nav__item">
                                <a href="#about" class="nav__link">단체여행</a>
                            </li>
                            <li class="nav__item">
                                <a href="sBoardList.html" class="nav__link">자유게시판</a>
                            </li>
                            <li class="nav__item">
                                <a href="#place" class="nav__link">신고</a>
                            </li>
                        </ul>

            <thead>
                <tr>
                    <th><input type="checkbox" /></th>
                    <th class="active_type">글번호</th>
                    <th>제목</th>
                    <th class="active_type">작성자</th>
                    <th class="active_type">작성날짜</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td class="active_type">1</td>
                    <td class="left">게시물1번입니다.</td>
                    <td class="active_type">관리자</td>
                    <td class="active_type">2017-12-19</td>
                </tr>
            </tbody>
        </table>
        <style>
            body {
                background-image: url('./images/back.jpg');
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
    </div>