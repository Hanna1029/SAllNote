<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

var ws;

function connect() {
	ws = new WebSocket("ws://192.168.219.100:8070/ShareAllNote/webchat.sanote");
	
	ws.onopen = onOpen;
	ws.onmessage = onMessage;
	ws.onclose = onClose;
}

function disconnect() {
	ws.close();
}

function onOpen(evt){
	appendMessage("연결되었습니다.")
}

function onMessage(evt) {
	var data = evt.data;
	if(data.substring(0,4)=="msg."){
		appendMessage(data.substring(4));
	}
}

function onClose(evt){
	appendMessage("연결을 끊었습니다.")
}

function send(){
	var nickname = $('#nickname').val();
	var msg = $('#message').val();
	console.log("ssssend : " + msg);
	ws.send("msg."+nickname+":"+msg);
	$('#message').val("");
}

function appendMessage(msg) {
	$('#chatMessageArea').append(msg+"<br>");
	var chatAreaHeight = $('#chatArea').height();
	var maxScroll = $('#chatMessageArea').height()-chatAreaHeight;
	$('#chatArea').scrollTop(maxScroll);
	
}

$(document).ready(function () {
	$('#message').keypress(function (event) {
		var keycode = (event.keyCode ? event.keyCode : event.which);
		if(ketcode=='13'){
			send();
		}
		
		event.stopPropagation();
	});
	
	$('#sendBtn').click(function () {
		send();
	});
	$('#enterBtn').click(function () {
		connect();
	});
	$('#exitBtn').click(function () {
		disconnect();
	});
	
	
});
</script>
<body>
이름 : <input type="text" id="nickname">
<input type="button" id="enterBtn" value="입장">
<input type="button" id="exitBtn" value="나가기">
<h1>대화 영역</h1>
<div id="chatArea"> 
	<div id="chatMessageArea">
	</div>
</div>
<br>
<input type="text" id="message">
<input type="button" id="sendBtn" value="전송">
</body>
</html>