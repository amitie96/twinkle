<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
    <div class="logo">
        <a href="/">
           <img src="/resources/images/main.png">
        </a>
    </div>

    <div class="link">
        <c:choose>
        <c:when test="${not empty userInfo.userId}">
        <ul>
        <li>
           <!-- 로그아웃 링크 -->
           <a href="/logout">로그아웃</a>
       
        </li>
       
        <li>
            <a href="/mypage/list">마이페이지</a>
        </li>

        </ul>
        </c:when>
        
         <c:otherwise>
         <ul>
        <li>
            <a href="/login">로그인</a>
        </li>
        <li>
            <a href="/user/join">회원가입</a>
        </li>
       
        </ul>
         </c:otherwise>
         </c:choose>
    </div>
</header>
