<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Knitting</title>
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'IBM Plex Sans KR', sans-serif;
            background-color: #f4f4f4; /* 배경색을 밝게 */
            margin: 0;
            padding: 0;
        }

        .content {
            display: flex;
            width: 80%;
            margin: 40px auto; /* 본문 상단과 하단에 여백 추가 */
            padding: 20px;
            background-color:white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .content .image-container {
            flex: 1;
            margin-right: 20px; /* 이미지와 텍스트 사이에 여백 추가 */
        }

        .content .image-container img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .content .text-container {
            flex: 2;
        }

        .content h1 {
            font-size: 24px;
            color: #121212;
            margin-bottom: 10px;
        }

        .info {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .info span {
            display: block; /* 각 항목을 한 줄로 표시 */
            margin-bottom: 10px; /* 항목 간 여백 추가 */
        }

        .content p {
            font-size: 16px;
            margin-top: 20px; /* 본문 내용 위에 여백 추가 */
        }

        .divider {
            border-top: 2px dashed #FFEFD5; /* 점선 스타일 추가 */
            margin: 20px 0; /* 위와 아래 여백 */
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffb3a5;
            color: #333;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
            width: 80%; /* 버튼을 콘텐츠의 너비와 맞추기 */
            max-width: 200px; /* 버튼 크기 제한 */
            margin: 15px auto;
            font-weight: bold;
        }

        .back-button:hover {
            background-color: #ff8878;
            opacity: 0.8; /* 호버 시 투명도 설정 */
        }
        
        .highlight-rate {
            color: #FFEB3B; /* 노란색으로 강조 */
            font-weight: bold; /* 강조를 위해 글씨를 두껍게 */
        }
        .button {	
        	margin: 50px;
        	 text-align: center;
        }
    </style>
</head>
<body>

    <jsp:include page="../layouts/header.jsp"/>


    <div class="content">
        <!-- 이미지 왼쪽에 위치 -->
        <div class="image-container">
            <img src="/upload/knitting/${knitting.knitUuid}_${knitting.knitFilename}" alt="Image">
        </div>

        <!-- 텍스트 내용 오른쪽에 위치 -->
        <div class="text-container">
            <h1>${knitting.knitTitle}</h1>

            <div class="info">
                <span><strong>난이도:</strong><a style="color: #f5a623;"> ${knitting.knitRate}</a></span>
                <span><strong>작성자:</strong> ${knitting.nickname}</span>
                <span><strong>작성일:</strong> ${knitting.knitDate}</span>
            </div>
            
            <!-- 작성일과 내용 사이에 점선 추가 -->
            <div class="divider"></div>

            <p>${knitting.knitContent}</p>
        </div>
    </div>
    
	<div class="button">
    	<a href="/knitting/list" class="back-button">목록</a>
    </div>
    
    <jsp:include page="../layouts/footer.jsp"/>

</body>
</html>
