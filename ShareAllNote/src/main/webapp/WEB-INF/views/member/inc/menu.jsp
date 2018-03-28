 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin.css">
<div id="menu">
   
   <div class="sidebar" data-color="purple"
			data-image="${pageContext.request.contextPath}/resources/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text">
					Creative Tim </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav navbar-nav navbar-right">
					<li class="active">
						<a href="file.sanote"> 
							<i class="material-icons">dashboard</i>
							<p>Dashboard</p>
						</a>
					</li>
					
					<se:authorize access="hasRole('ROLE_USER')">
					<li>
						<a href="logout.sanote">
							<i class="material-icons">content_paste</i>
							<p>로그아웃<p>
						</a>
						<a href="mypage.sanote">
							<p>마이페이지</p>
						</a>
					<li>
					</se:authorize>
					
					<se:authorize access="!hasRole('ROLE_USER')">
						<a href="login.sanote">
							<i class="material-icons">location_on</i>
							<p>로그인<p>
						</a>
						<a href="register.sanote">
						<i class="material-icons">notifications</i>
							<p>회원가입<p>
						</a>	
					
					</se:authorize>
					
					<li><a href="./typography.html"> <i class="material-icons">library_books</i>
							<p>Typography</p>
					</a></li>
					<li><a href="./icons.html"> <i class="material-icons">bubble_chart</i>
							<p>Icons</p>
					</a></li>
					
					<li class="active-pro"><a href="upgrade.html"> <i
							class="material-icons">unarchive</i>
							<p>Upgrade to PRO</p>
					</a></li>
				</ul>
			</div>
		</div>
   
</div>
 