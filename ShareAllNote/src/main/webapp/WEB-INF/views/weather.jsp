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
$(function() {

    var weatherData = new Array();
    var weatherURL = "http://www.weather.go.kr/wid/queryDFSRSS.jsp?zone=1114052000";

    $.ajax({
       url : weatherURL,
       type : "GET",
       datatype : "json",
       success : function(data) { //xml 형식으로 들어옴

    	  console.log(data);
          var temp = $(data).find("channel").find("item").find("description")
          			.find("body").find("data").first().text();
          console.log(temp);
          
          $("body").append("<p>"+temp+"</p>");

       }
    });
});
</script>
<body>

</body>
</html>