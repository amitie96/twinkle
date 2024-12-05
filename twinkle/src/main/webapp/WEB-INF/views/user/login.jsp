<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<style>
	.login-style{
		padding: 60px 20px;
        max-width: 600px; /* 기존보다 약간 넓게 설정 */
        margin: 30px auto;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}
	
	body{
    font-family: 'IBM Plex Sans KR', sans-serif;
    }
	
    .buttonclass {
    border: none; /* 테두리 제거 */
    padding: 0; /* 기본 패딩 제거 */
    background: none; /* 배경 제거 */
    cursor: pointer; /* 마우스 오버 시 포인터 커서 */
    }

    .buttonclass img {
    	margin-top: 30px;
    	margin-bottom:-30px;
    	height: 80%;
    	width: 80%;
        display: block; /* 이미지 주변 간격 제거 */
        transition: transform 0.2s ease, filter 0.2s ease; /* 마우스 오버 시 애니메이션 */
    }

    /* 마우스 오버 시 스타일 */
    .buttonclass:hover img {
        transform: scale(1.01); 
        filter: brightness(1.2); 
    }

    input {
        width: 100%; /* 입력 필드의 너비를 부모의 너비에 맞춤 */
        max-width: 300px; /* 최대 너비 설정 */
        padding: 10px;
        margin-top: 8px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
    }
</style>
<title>BanJjak</title>
	<link rel="stylesheet" href="/resources/css/styles.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>
<jsp:include page="../layouts/header2.jsp"/>

<div class="ctbox">
    <div class="container">
       <img src="/resources/images/logo.png">
    </div>
<div class="login-style">
    <form method="post">
        <div class="container">
            <p>아이디</p>
            <input name="userId">
        </div>
        <div class="container">
             <p>비밀번호</p>
            <input name="password" type="password">
        </div>
        
        <div class="container">
            <button type="submit" class="buttonclass" >
                <img src="resources/images/login.png">
            </button>
        </div>
        <br><br>
    </form>
</div>   
</div>            

<jsp:include page="../layouts/footer.jsp"/>
</body>
</html>
