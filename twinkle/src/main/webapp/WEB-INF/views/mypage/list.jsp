<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>BanJjak</title>
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
<style>

	body{
		font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
		}
	
	.mypage-style {
            margin: 10px 0; /* 각 요소 간격 */
            text-align: center; /* 중앙 정렬 */
        }

        .mypage-style h3 {
            margin-bottom: 40px;
            font-size: 24px; /* 글씨 크기 증가 */
            font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
        }

        .mypage-style a {
            text-decoration: none; /* 밑줄 제거 */
            font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
            color: black; /* 링크 색상 지정 */
        }

        .mypage-style a:hover {
            color: gray; /* 마우스 오버 시 색상 변경 */
        }

        .mypage-style p {
            margin: 5px 0; /* 라벨 간격 */
            font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
        }

        .mypage-style input {
            width: 200px; /* 입력 칸 크기 */
            padding: 5px; /* 입력 칸 내부 여백 */
            font-size: 14px;
        }

        .mypage-style button {
            border: none;
            padding: 0;
            background: none;
            cursor: pointer;
        }

        .mypage-style button img {
            display: block;
            transition: transform 0.2s ease, filter 0.2s ease;
        }

        .mypage-style button:hover img {
            transform: scale(1.01);
            filter: brightness(1.2);
        }

        .mypage {
            text-align: center;
            margin-top: 20px;
        }

        .mypage ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .mypage li {
            margin-bottom: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .mypage a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
            font-size: 18px;
        }

        .mypage a:hover {
            text-decoration: underline;
        }

        .manage-section {
            text-align: center;
            margin: 20px 0;
        }

        .category {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin: 20px 0;
        }


        .box {
            width: 300px;
            height: 200px;
            border: 2px dashed #f7a486;
            background-color: #FFE7DC;
            padding: 20px;
            text-align: center;
            box-sizing: border-box;
            border-radius: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 5px;
        }


        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .pagination a {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }

        .pagination a:hover {
            background-color: #45a049;
        }

        .pagination .disabled {
            background-color: #ddd;
            color: #aaa;
        }
        .pagination button{
        	background-color: #ffb3a5;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        }
        .pagination button:hover{
        	background-color: #ff8878;
        }
            .mypage-button {
        text-align: center;
        margin-top: 20px;
    }

    .mypage-button button {
        padding: 10px 20px;
        background-color: #ffb3a5;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .mypage-button button:hover {
        background-color: #ff8878;
    }
    .mypagee{
    padding: 60px 20px;
        max-width: 850px; /* 기존보다 약간 넓게 설정 */
        margin: 50px auto;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .mypageee{
    padding: 50px 20px;
        max-width: 630px; /* 기존보다 약간 넓게 설정 */
        margin: 50px auto;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    </style>
    
    <style type="text/css">
    	.hide {
    		display: none;
    	}
    </style>
</head>
<body>

<jsp:include page="../layouts/header.jsp"/>

<div class="mypagee">
<!-- 내 글 관리 섹션 -->
<div class="manage-section">
    <h3>내 글 관리</h3>

    <div class="category">
        <!-- 대바늘 글 목록 -->
        <div>
            <label>대바늘</label>
            <ul class="box" id="knitting-list">
                <li class="empty">데이터 없음</li>
            </ul>
		     <div class="pagination">
		        <button id="prev-page" disabled>&lt;</button>
		        <button id="next-page">&gt;</button>
		  	</div>
        </div>

        <!-- 코바늘 글 목록 -->
        <div>
            <label>코바늘</label>
            <ul class="box" id="crochet-list">
            	<li class="empty">데이터 없음</li>
            </ul>
            <div class="pagination">
		        <button id="prev-page" disabled>&lt;</button>
		        <button id="next-page">&gt;</button>
		  	</div>
        </div>
    </div>

    <!-- 페이징 처리 -->
    <div class="pagination">
        <!-- 이전 페이지 -->
        <c:if test="${currentPage > 1}">
            <a href="?page=${currentPage - 1}">&lt; 이전</a>
        </c:if>

        <!-- 페이지 번호 -->
        <c:forEach var="pageNum" begin="1" end="${totalPages}">
            <a href="?page=${pageNum}" class="${pageNum == currentPage ? 'disabled' : ''}">${pageNum}</a>
        </c:forEach>

        <!-- 다음 페이지 -->
        <c:if test="${currentPage < totalPages}">
            <a href="?page=${currentPage + 1}">다음 &gt;</a>
        </c:if>
    </div>
</div>

<div class="mypageee">

<!-- 내 정보 수정 섹션 -->

<div class="mypage-style">
    <h3>내 정보 수정</h3>
    <form action="/mypage/list" method="POST">
	        <div class="mypage-style">
	            <p>아이디</p>
	            <input type="text" id="userId" name="userId" value="${userInfo.userId}" readonly required>
	        </div>
	        <div class="mypage-style">
	            <p>비밀번호</p>
	            <input type="password" id="password" name="password" placeholder="새 비밀번호를 입력해주세요" value="${userInfo.password}">
	        </div>
	        <div class="mypage-style">
	            <p>이름</p>
	            <input type="text" id="username" name="username" value="${userInfo.username}" maxlength="15" required>
	        </div>
	        <div class="mypage-style">
	            <p>닉네임</p>
	            <input type="text" id="nickname" name="nickname" value="${userInfo.nickname}" maxlength="15" required>
	        </div>
	        <div class="mypage-style">
	            <p>이메일</p>
	            <input type="email" id="user-mail" name="email" value="${userInfo.email}" maxlength="255" required>
	        </div>
	        <div class="mypage-button">
	            <button type="submit">수정하기</button>
	        </div>
    </form>
	</div>
</div>
</div>
    
    


<jsp:include page="../layouts/footer.jsp"/>

<script type="text/javascript" src="/resources/js/mypage/list.js"></script>

</body>
</html>
