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
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        .container {
            padding: 30px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .search-bar {
            margin: 20px 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-bar input[type="text"] {
            padding: 20px;
            width: 500px;
            border-radius: 60px;
            border: 1px solid #ddd;
            padding-right: 300px;
        }

        .search-bar button {
            margin-left: -40px;
            background: none;
            border: none;
            font-size: 18px;
            color: #888;
            cursor: pointer;
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 18px;
            margin: 20px 0;
            padding: 0 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .share-option-box {
            background-color: #FFEFD5; /* 박스 배경색 */
            padding: 15px 30px; /* 내부 여백 */
            border-radius: 8px; /* 둥근 모서리 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 */
            display: flex;
            align-items: center;
            font-weight: bold;
            text-decoration: none;
            color: #333;
        }

        .share-option-box img {
            margin-right: 10px;
        }

        .sort-options {
            display: flex;
            gap: 15px;
        }

        .sort-options a {
            color: #666;
            text-decoration: none;
            font-weight: bold;
        }

        .sort-options a:hover {
            color: #ffb3a5;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            max-width: 1100px; 
            margin: 0 auto;
            padding: 20px;
        }

        .gallery-item {
            background-color: #fff; 
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            cursor: pointer;
        }

        .gallery-item:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
        }

        .gallery-item a {
            display: block; 
            text-decoration: none; 
            color: inherit; 
        }

        .gallery-item img {
            width: 250px;
            height: 250px;
            object-fit: cover;
            border-radius: 10px; 
        }

        .gallery-item h3 {
            font-size: 18px;
            margin: 15px 0 10px;
            font-weight: bold;
        }

        .gallery-item .info, .gallery-item .icons {
            font-size: 14px;
            color: #666;
            margin-bottom: 10px;
        }

        .gallery-item .icons {
            color: #f5a623; /* 난이도 */
        }

        .gallery-item .info {
            color: #888; /* 작성자 */
        }
    </style>
</head>
<body>

    <jsp:include page="../layouts/header.jsp"/>

    <div class="container">
        <img src="../resources/images/knitting.png" alt="대바늘" width="250" height="100">
    </div>

    <div class="search-bar">
        <input type="text" placeholder="검색어를 입력하세요">
        <button>&#128269;</button>
    </div>

    <div class="options">
        <a href="write" class="share-option-box">
            <img src="../resources/images/pencil.png" width="20"> 나의 도안 공유하기
        </a>
        
        <!-- <div class="sort-options">
            <a href="?sort=latest">최신순</a>
            <a href="?sort=popular">인기순</a>
        </div> -->
    </div>

    <div class="gallery">
        <c:forEach var="knitting" items="${knittingList}">
            <div class="gallery-item">
                <a href="/knitting/detail/${knitting.knitId}">
                    <img src="/upload/knitting/${knitting.knitUuid}_${knitting.knitFilename}">
                    <h3>${knitting.knitTitle}</h3>
                    <div class="info">작성자 ${knitting.nickname}</div>
                    <div class="icons">난이도 ${knitting.knitRate}</div>
                </a>
            </div>
        </c:forEach>
    </div>

    <jsp:include page="../layouts/footer.jsp"/>

</body>
</html>
