<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<se:authorize access="hasRole('ROLE_USER')">
	<a href="${pageContext.request.contextPath}/logout.sanote" style="color:#fff; font-family: 'Hanna', serif; font-size: 15px; text-decoration: underline;">로그아웃</a>
</se:authorize>
<se:authorize access="!hasRole('ROLE_USER')">
	<a href="${pageContext.request.contextPath}/login.sanote">로그인</a>
	<a href="${pageContext.request.contextPath}/register.sanote">회원가입</a>
	
</se:authorize>

</body>
</html>
