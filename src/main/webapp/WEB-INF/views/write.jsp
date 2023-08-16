<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns:th="http://www.thymeleaf.org">
	<div th:replace="/nav"></div>
	<link rel="stylesheet" href="write.css">
	<script src="/js/trim.js"></script>
	<script language="javascript">
    function check(){
		var bd_subjectval = f.bd_subject.value;
        bd_subjectval = trim(bd_subjectval);
        if(bd_subjectval.length == 0){
            alert("제목을 입력해주세요");
            f.bd_subject.value = "";
            f.bd_subject.focus();
            return false;
        }else{
            pass = checkByteLen(bd_subjectval, 80);
            if(!pass){
                alert("제목이 너무 길어요");
                f.bd_subject.focus();
                return false;
            }
        }

		var bd_gr_seqval = f.bd_gr_seq.value;
		bd_gr_seqval = trim(bd_gr_seqval);
		if(bd_gr_seqval.length == 0){
			alert("카테고리를 선택해주세요");
			f.bd_gr_seq.focus();
			return false;
		}

		var bd_contentval = f.bd_content.value;
        bd_contentval = trim(bd_contentval);
        if(bd_contentval.length == 0){
            alert("내용을 입력해주세요");
            f.bd_content.value = "";
            f.bd_content.focus();
            return false;
        }else{
            pass = checkByteLen(bd_contentval, 1000);
            if(!pass){
                alert("내용이 너무 길어요");
                f.bd_content.focus();
                return false;
            }
        }
		f.submit();
	}

    function checkByteLen(str, size){
        var byteLen = getByteLen(str);
		if(byteLen <= size){
			return true;
		}else{
			return false;
		}
	}
	function getByteLen(str){
	   return str.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
    }

	function enterCheck(elm){
		if(event.keyCode == 13){
			if(elm == f.bd_subject){
				f.bd_gr_seq.focus();
			}else if(elm == f.bd_gr_seq){
                f.bd_content.focus();
            }
		}
	}
</script>
	<div class="write">
		<div class="row">
			<div class="row-in">
				<form action="write_ok.do" name="f" method="post" class="form-horizontal" id="board_write_form" novalidate="novalidate" enctype="multipart/form-data">
					<div class="form-group" id="boardDTO-notice">
						<!-- <label>공지사항</label>
						<div class="form-group-in">
							<p>아래 공지사항을 먼저 읽고 글을 작성해 주세요.</p> -->
							<!-- <ul id="boardDTO-notice-list">
								<li class="category-notice category-notice-3">
									<a href="/boardDTO/view/23037">질문 게시판	공지사항 (읽음)</a>
								</li>
								<li class="category-notice category-notice-6" style="display: none;">
									<a href="/boardDTO/view/23033">오타/오역/요청 게시판 공지사항 (읽지 않음)</a>
								</li>
								<li class="category-notice category-notice-6" style="display: none;">
									<a href="/boardDTO/view/47862">당분간 모든 오타 수정 요청을 올리지 말아주세요 (읽지 않음)</a>
								</li>
								<li class="category-notice category-notice-6" style="display: none;">
									<a href="/boardDTO/view/47875">오타/오역/요청 게시판 공지사항 2 (읽지 않음)</a>
								</li>
								<li class="category-notice category-notice-9" style="display: none;">
									<a href="/boardDTO/view/23038">홍보 게시판 공지사항 (읽지 않음)</a>
								</li>
							</ul>
						</div> -->
					</div>
					<div class="form-group"><label class="col-md-2 control-label">닉네임</label>
						<div class="form-group-half">
							<input type="text" class="form-control" placeholder="닉네임" name="bd_subject" onkeydown="enterCheck(this)">
						</div>
					</div>
					<div class="form-group"><label class="col-md-2 control-label">제목</label>
						<div class="form-group-half">
							<input type="hidden" class="form-control" name="bd_mb_seq" th:value="${mb_seq}">
							<input type="text" class="form-control" placeholder="제목을 입력하세요" readonly th:value="${mb_name}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">카테고리</label>
						<div class="form-group-quarter">
							<select id="board_category" name="bd_gr_seq" onchange="categoryChanged()" class="form-control" onkeydown="enterCheck(this)">
								<th:block th:each="goryDTOS: ${goryDTOS}">
									<th:block th:unless="${goryDTOS.gr_name.toString().equals('공지사항')}">
										<option th:value="${goryDTOS.gr_seq}" th:text="${goryDTOS.gr_name}"></option>
									</th:block>
								</th:block>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">파일첨부</label>
						<div class="form-group-in">
							<input type="file" multiple="multiple" name="files">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">내용</label>
						<div class="form-group-in">
							<textarea name="bd_content" rows="15"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="form-group-submit">
							<button type="button" class="btn btn-primary" onclick="check()">글쓰기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div th:replace="/footer"></div>
</html>