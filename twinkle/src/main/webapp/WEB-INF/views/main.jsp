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
    <style>
    
        body {
            font-family: 'IBM Plex Sans KR', sans-serif;
            background-color:#FFFCF7; 
        }
        
		.image-container {
		   display: flex;
		    flex-direction: column;
		    align-items: center; /* 자식 요소를 수평 가운데 정렬 */
		    justify-content: center; /* 필요 시 수직 정렬도 가운데 */
		}
		
		.image-container img {
	    width: 100%; /* 이미지 가로 길이를 100%로 설정 */
	    height: 40%; /* 세로 길이는 자동으로 비율을 맞추도록 설정 */
	    max-width: 120%; /* 최대 가로 길이를 120%로 설정하여 더 길게 만들기 */
	    border-radius: 0;
	    border: 2px solid #ddd;
	    margin-bottom: 50px;
		}
		
		.overlay-text {
		    position: absolute;
		    top: 75%; /* 기존의 50%에서 10% 정도 내려서 위치 조정 */
		    left: 50%;
		    transform: translate(-50%, -50%);
		    color: white;
		    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
		    text-align: center;
		}
		
		.overlay-text h2 {
		    font-size: 32px;
		    margin-bottom: 10px;
		}
		
		.overlay-text p {
		    font-size: 24px;
		}

        .main-banner {
            text-align: center;
            margin-top: 20px;
        }

        .main-banner img {
            width: 80%; /* 사진 크기 조정 */
            border-radius: 10px; /* 사진 모서리 둥글게 */
        }

        .main-text {
            text-align: center;
            margin: 20px auto;
            font-size: 20px;
        }

        .category-container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

       .category-box {
		    display: flex;
		    flex-direction: column;
		    align-items: center; /* 자식 요소를 수평 가운데 정렬 */
		    justify-content: center; /* 필요 시 수직 정렬도 가운데 */
		    margin: 50px;
		    width: 500px; /* 정사각형 너비 설정 */
   			height: 500px; /* 정사각형 높이 설정 */
		    background-color: #fff; 
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            cursor: pointer;
            background-color:#FFEFD5;
		}
		
		.category-box img {
		  	width: 400px; /* 이미지 크기를 80%로 설정 */
		    height: 400px; /* 세로 길이는 비율에 맞게 자동으로 설정 */
		    border-radius: 10px; /* 이미지 모서리를 둥글게 */
		    margin-bottom: 10px; /* 이미지와 텍스트 간격 */
            object-fit: cover;
            
		}

        .category-box h3 {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }

        .category-box p {
            font-size: 14px;
            color: #666;
        }

        .category-box a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 15px;
            background-color: #FFEB81;
            color: #333;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .category-box a:hover {
            background-color: #FFC107;
        }
        
        .logostyle {
            margin: 10px 0; /* 각 요소 간격 */
            text-align: center; /* 중앙 정렬 */
        }
        
        . logostyle img{
        margin-bottom: 20px;
        }
        
    </style>
</head>
<body>
    <jsp:include page="layouts/header.jsp"/>

	<div class="logostyle">
	<img src="/resources/images/logo.png" alt="Logo">
	</div>

    <div class="image-container">
    <img src="/resources/images/mainphoto2.png">
    <div class="overlay-text">
        <h2>반짝뜨개와 함께</h2>
        <p>뜨개 도안을 공유하고 즐거운 뜨개 생활을 만들어보세요!</p>
    </div>
</div>


<div class="category-container">
    <!-- 코바늘 -->
    <div class="category-box">
        <img src="/resources/images/crochetphoto.jpg" alt="Crochet">
        <h3>코바늘이란?</h3>
        <p>실에 실을 잡아서<br>섬세한 뜨개질을 만드는 방법</p>
        <a href="crochet/list">코바늘 도안 보기</a>
    </div>

    <!-- 대바늘 -->
    <div class="category-box">
        <img src="/resources/images/knittingphoto.jpg" alt="Knitting">
        <h3>대바늘이란?</h3>
        <p>실로 만든 고리와 고리를 이어서<br>다양한 작품을 만드는 방식</p>
        <a href="knitting/list">대바늘 도안 보기</a>
    </div>
</div>


    <jsp:include page="layouts/footer.jsp"/>
</body>
</html>
