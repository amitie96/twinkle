<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Knitting Write</title>
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">

  <style>
    .container {
        padding: 60px 20px;
        max-width: 850px; /* 기존보다 약간 넓게 설정 */
        margin: 30px auto;
        
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    body{
    font-family: 'IBM Plex Sans KR', sans-serif;
    }

    h1 {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
        margin-top: -30px;
        margin-bottom: 30px;
    }

    .input-container {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 8px;
        font-size: 16px;
    }

    .input-block {
        width: calc(100% + 20px); /* 모든 입력 필드의 너비를 동일하게 설정 */
        max-width: 100%; /* 부모 요소를 넘지 않도록 제한 */
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
    }

    .input-block:focus {
        border-color: #ffb3a5;
        outline: none;
        box-shadow: 0 0 5px rgba(255, 179, 165, 0.5);
    }

    select.input-block {
        background-color: #fff;
    }

    .writing-block textarea {
        resize: none;
    }

    .submit-button {
        text-align: center;
        margin-top: 20px;
    }

    .submit-button button {
        padding: 10px 20px;
        background-color: #ffb3a5;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .submit-button button:hover {
        background-color: #ff8878;
    }
</style>

        
    
</head>
<body>

    <jsp:include page="../layouts/header.jsp"/>

    <div class="container">
        <form:form method="post" modelAttribute="write" enctype="multipart/form-data">
        <h1>대바늘 도안 공유하기</h1>
            <div class="input-container">
                <label for="knitTitle">제목</label>
                <input type="text" id="knitTitle" name="knitTitle" class="input-block" placeholder="제목을 입력하세요" autofocus required>
            </div>

            <div class="input-container">
                <label for="knitRate">난이도</label>
                <select id="knitRate" name="knitRate" class="input-block">
                    <option value="★">★</option>
                    <option value="★★">★★</option>
                    <option value="★★★">★★★</option>
                </select>
            </div>

            <div class="input-container">
                <label for="uploadFile">첨부파일</label>
                <input type="file" id="uploadFile" name="uploadFile" class="input-block">
            </div>

            <div class="writing-block">
                <label for="knitContent">내용</label>
                <textarea id="knitContent" name="knitContent" class="input-block" placeholder="내용을 입력하세요" rows="10"></textarea>
            </div>

            <div class="submit-button">
                <button type="submit">글쓰기</button>
            </div>
        </form:form>
        
    </div>

    <jsp:include page="../layouts/footer.jsp"/>
</body>
</html>
