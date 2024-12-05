<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>

<title>CrochetWrite</title>
	<link rel="stylesheet" href="/resources/css/styles.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style>
 .input-block {
        width: 100%; /* 모든 입력란의 가로 길이를 100%로 설정 */
        padding: 15px;
        font-size: 16px;
        font-weight: normal;
        box-sizing: border-box;
    }

    .input-container {
        margin-bottom: 20px;
        width: 100%;
        text-align: left;
    }

    .input-container label {
        display: block;
        margin-bottom: 5px;
        font-weight: normal;
        text-align: left;
    }

    .input-container input,
    .input-container select,
    .input-container textarea {
        width: 100%;
        padding: 15px;
        font-size: 16px;
        font-weight: normal;
        box-sizing: border-box;
    }

    /* 글쓰기 버튼 아래 여백 추가 */
    .input-container button {
        margin-top: 20px;
        padding: 15px;
        font-size: 16px;
        font-weight: normal;
        background-color: #FFB3A5;
        border: none;
        border-radius: 50px;
        color: white;
    }

    /* 제목 입력란 크기 */
    .input-container.title input {
        width: 100%; /* 100%로 늘려서 다른 입력란 크기와 맞춤 */
    }

    .writing-block {
        margin-bottom: 20px;
    }

    .writing-block label {
        display: block;
        margin-bottom: 5px;
        font-weight: normal;
        text-align: left;
    }

    .writing-block textarea {
        width: 100%;
        height: 200px;
        padding: 15px;
        font-size: 16px;
        font-weight: normal;
        box-sizing: border-box;
        resize: none;
    }
    </style>
</head>
<body>


<jsp:include page="../layouts/header.jsp"/>

   <h1>글쓰기</h1>
   
    <form:form method="post" modelAttribute="write" enctype="multipart/form-data">
    <div class="input-container title">
        <label for="title">제목</label>
        <input type="text" id="cro_title" name="croTitle" class="input-block" placeholder="제목을 입력하세요" autofocus required >
    </div>

    <div class="input-container difficulty">
        <label for="difficulty">난이도</label>
        <select id="cro_rate" name="croRate" class="input-block">
            <option value="★">★</option>
            <option value="★★">★★</option>
            <option value="★★★">★★★</option>
        </select>
    </div>
    
    <div class="input-container attachments">
       
		<div>
			<input type="file" name="uploadFile">
		</div>
			
		
    </div>
    

    <div class="writing-block">
        <label for="content">내용</label>
        <textarea id="cro_content" name="croContent" class="input-block" placeholder="내용을 입력하세요" rows="10"></textarea>
    </div>

    <div class="submit-button">
        <button type="submit">글쓰기</button>
    </div>
    </form:form>




<jsp:include page="../layouts/footer.jsp"/>
</body>
</html>