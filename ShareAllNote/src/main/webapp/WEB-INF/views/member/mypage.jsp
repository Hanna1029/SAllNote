<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
            $('#img_profile').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
}
function changePwd(){
	/* var pwd = $('#pwd').val();
	var _data = JSON.stringify(pwd); */
        $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/pwdUpdate.sanote",
			data : "password="+$('#pwd').val(),
			/* contentType : "application/json; charset=UTF-8", */
			/* dataType : "json", */
			success : function(data) { //callback  
				$('#hidden_pwdform').css('display','none');
				alert('비밀번호가 변경되었습니다~~~');
			}
		});
	
}
$(function () {
    $("#file_img").on('change', function(){
    	
    	
        /* var data = $('#file_img').files[0];
        console.log(data); 
        var _data = JSON.stringify(data);  */
        
        $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/profileChange.sanote",
			data :  "file="+this.files[0],
			/* contentType : "application/json; charset=UTF-8", */
			/* dataType : "json", */
			success : function(data) { //callback  
				readURL(this);
				alert('프로필사진이 변경되었습니다~~~');
			}
		});
    });
    
    $('#pwdButton').click(function () {
    	if($('#hidden_pwdform').css('display') == 'none'){
    		$('#hidden_pwdform').css('display','block');
    	}else{
    		$('#hidden_pwdform').css('display','none');
    	}
		
	});
});
</script>
<style type="text/css">
.file-register{
	border-radius: 50%;
	width: 150px;
	height: 150px;
	overflow: hidden;
}
</style>
</head>
<body>

	<center>	
		<h2>My Page</h2>
		<img alt="프로필사진" id="img_profile"
			src="${pageContext.request.contextPath}${member.profile_img}"
			class="file-register"><br>
		<br>
		<input id="file_img" name="file" type="file" value="수정">
		<p>${member.id}</p>
		<p>${member.name}</p>
		<button id="pwdButton">비밀번호 수정</button><br><br>
		<div id="hidden_pwdform" style="display: none;">
			<input type="password" name="password" id="pwd">
			<button onclick="changePwd()">수정완료</button>
		</div>
		
	</center>
	
</body>
</html>