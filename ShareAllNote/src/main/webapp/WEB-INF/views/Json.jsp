<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
   
</script>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
   href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
   rel="Stylesheet" type="text/css" />
<link rel="stylesheet" href="css/font.css">


<!-- js -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"
   type="text/javascript"></script>
<script
   src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
   type="text/javascript"></script>


<script type="text/javascript">
   $(function() {

      var JsonData = new Array();
      var jsonURL = "http://openapi.seoul.go.kr:8088/56766c61576d79683535666662654a/json/octastatapi10043/1/5/";

      $.ajax({
         url : jsonURL,
         type : "GET",
         datatype : "JSON",
         success : function(data) { //json 형식으로 들어옴
            console.log("jsonData" + JsonData);
            console.log("data");
            console.log(data);
            console.log("첫번째");
            console.log(data.octastatapi10043.row[0]);

            var temp = data.octastatapi10043.row;
            console.log(temp.length);

            $.each(temp, function(index, item) {
               JsonData.push(item);
            });

            console.log("json");
            console.log(JsonData);
            //JsonData = JSON.stringify(JsonData);
            //function을 활용해서 두개 ajax가 동시에 돌아가지 않고 순차적으로 돌아갈 수 잇게끔
            //getData(JsonData);
            getData(JsonData);
         }
      });

      function getData(JsonData) {
         console.log("function");
         console.log(JsonData);
         jsonData = JSON.stringify(JsonData);
         console.log("json function");
         console.log(jsonData);
         $.ajax({
            url : "gogogoDB.sanote",
            type : "POST",
            data : jsonData,
            datatype : "JSON",
            contentType : "application/json; charset=utf-8",
            success : function(data) {
               console.log(data);
            }
         });

      }

   });
</script>
</head>
<body>

   <p>하하하하하하하하하</p>

</body>
</html>