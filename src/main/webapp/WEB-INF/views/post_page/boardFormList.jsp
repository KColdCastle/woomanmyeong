<%@ contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="front/boardForm/bootstrap.min.css">
    <link rel="stylesheet" href="front/boardForm/fontawesome-all.min.css">
    <link rel="stylesheet" href="front/boardForm/font-awesome.min.css">
    <link rel="stylesheet" href="front/boardForm/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="front/boardForm/Lista-Productos-Canito.css">
</head>

<body>

<div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2 style="width: 343px;">board List </h2>
            </div>
            <div class="col-md-4 d-flex justify-content-end align-self-start">
            <i class="fas fa-search d-xl-flex justify-content-xl-center align-items-xl-center"></i>
            <input class="border rounded d-xl-flex justify-content-xl-center align-items-xl-center search-field" type="search" id="search-field" style="background-color: #eaeaea;width: 80%;height: 38px;padding: 0px;margin-left: 17px;" name="search">
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>글번호</th>
                    <th>닉네임</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>조회수</th>
                    <th>수정/삭제</th>
                </tr>
                </thead>

                <tbody>
                    <jsp:include file="list.jsp"/>
                </tbody>
                      </table>
                  </div>
              </div>
          </div>

<div class="text-center">
<i class="fa fa-arrow-left border rounded-circle" style="color: rgb(0,0,0);"></i>
<button class="btn btn-primary border rounded-circle" type="button" style="background-color: #ff8000;color: rgb(0,0,0);">1</button>
<button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">2</button>
<button class="btn btn-primary border rounded-circle" type="button" style="background-color: rgba(0,123,255,0);color: rgb(0,0,0);">3</button>
<button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">4</button>
<button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">...</button>
<button class="btn btn-primary border rounded-circle" type="button" style="color: rgb(0,0,0);background-color: rgba(0,123,255,0);">7</button>
<i class="fa fa-arrow-right" style="color: rgb(0,0,0);"></i></div>
<script src="front/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>