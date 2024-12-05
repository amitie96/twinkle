<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<style>
    .joinstyle {
           margin: 10px 0; /* 각 요소 간격 */
           text-align: center; /* 중앙 정렬 */
           
       }
       .box{
           padding: 60px 20px;
        max-width: 850px; /* 기존보다 약간 넓게 설정 */
        margin: 30px auto;
        
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }   
       
    .joinstyle h3 {
	    margin-bottom: 40px;
	    font-size: 24px; /* 글씨 크기 증가 */
	    font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
	}
	
	.joinstyle a {
	    text-decoration: none; /* 밑줄 제거 */
	    font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
	    color: black; /* 링크 색상 지정 */
	}
	
	.joinstyle a:hover {
	    color: gray; /* 마우스 오버 시 색상 변경 */
	}

    .joinstyle img {
           margin-bottom: 20px; /* 로고 아래 간격 */
       }

    .joinstyle p {
           margin: 5px 0; /* 라벨 간격 */
           font-family: 'IBM Plex Sans KR', sans-serif; /* 글씨체 적용 */
       }

    .joinstyle input {
           width: 200px; /* 입력 칸 크기 */
           padding: 5px; /* 입력 칸 내부 여백 */
           font-size: 14px;
       }
       
    .joinstyle button {
    margin-top:20px;
       padding: 10px 20px;
       background-color: #ffb3a5;
       color: #fff;
       border: none;
       border-radius: 5px;
       font-size: 16px;
       cursor: pointer;
       transition: background-color 0.3s;
   	}

   	.joinstyle button:hover {
   	    background-color: #ff8878;
   	}
        
    </style>
    <title>회원 가입</title>
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
</head>

<body>
<jsp:include page="../layouts/header2.jsp"/>
<div style="margin: 30px;">

<div class="joinstyle">
    <img src="/resources/images/logo.png" alt="Logo">
    <form:form method="post">
    <div class="box">
    	<h3>회원가입</h3>
        <div class="joinstyle">
            <p>아이디</p>
            <input name="userId" style="margin-left:13px">
        </div>
        <div class="joinstyle">
            <p>비밀번호</p>
            <input name="password" type="password">
        </div>
        <div class="joinstyle">
            <p>이름</p>
            <input name="username">
        </div>
        <div class="joinstyle">
            <p>닉네임</p>
            <input name="nickname">
        </div>
        <div class="joinstyle">
            <p>이메일</p>
            <input name="email" type="email">
        </div>
        <div class="joinstyle">
            <button type="submit">회원가입</button>
        </div>
        </div>
    </form:form>
        </div>
        </div>

<jsp:include page="../layouts/footer.jsp"/>
</body>
</html>
