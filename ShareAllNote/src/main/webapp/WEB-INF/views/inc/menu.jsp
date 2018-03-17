 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin.css">
<div id="menu">
   <div class="col-sm-12" style="text-align: center; margin-top: 25px;">
      <a href="${pageContext.request.contextPath}/Admin/manageEvent.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">이벤트 관리</span><br>
      </a>
   </div>
   <se:authorize access="hasRole('ROLE_ADMIN')">               
   <div class="col-sm-12" style="text-align: center; margin-top: 25px;">
      <a href="${pageContext.request.contextPath}/Admin/manageOrder.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">주문 관리</span><br>
      </a>
   </div>
   <div class="col-sm-12" style="text-align: center; margin-top: 20px;">
      <a href="${pageContext.request.contextPath}/Admin/manageSales.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">매출 관리</span><br>
      </a>
   </div>
   <div class="col-sm-12" style="text-align: center; margin-top: 20px;">
      <a href="${pageContext.request.contextPath}/Admin/manageMenu_rowadmin.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">메뉴 관리</span>
      </a>
   </div>
   
   <!-- 최상위 관리자 메뉴관리 메뉴 리스트는 모두한테 뿌리고... 그 안에 버튼으로 제어하자...-->
   <div class="col-sm-12" style="text-align: center; margin-top: 20px;">
      <a href="${pageContext.request.contextPath}/Admin/manageMenu.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">전체<br>메뉴 보기</span>
      </a>
   </div>
   </se:authorize>
   <se:authorize access="hasRole('ROLE_TOPADMIN')">      
   <div class="col-sm-12" style="text-align: center; margin-top: 25px;">
      <a href="${pageContext.request.contextPath}/Admin/manageAdmin.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">관리자 관리</span><br>
      </a>
   </div>
   </se:authorize>
    <se:authorize access="hasRole('ROLE_TOPADMIN')">      
   <!-- 최상위 관리자 메뉴관리 메뉴 리스트는 모두한테 뿌리고... 그 안에 버튼으로 제어하자...-->
   <div class="col-sm-12" style="text-align: center; margin-top: 20px;">
      <a href="${pageContext.request.contextPath}/Admin/manageMenu.htm">
         <span style="color:#fff; font-family: 'Hanna', serif; font-size: 25px;">메뉴 관리</span>
      </a>
   </div>
   </se:authorize>
   
</div>
 