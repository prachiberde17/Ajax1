
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajax Demo</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script type="text/javascript"> -->
// $(document).ready(function(event) { // $('#name').keyup(function(e) {
// var enterdName = $("#name").val(); // $.ajax({ // url :
window.location + "/wish", // data : "name" + enterdName, // type :
"GET", // success : function(result) { // alert("hi") //
$("#responseDiv").html(result); // }, // } // }; // };

<!-- </script> -->
<script>
	$(document).ready(function(event) {
		$("#name").keyup(function(e){
			var ename = $("#name").val();
			$.ajax({
				url:window.location+"/wish",
				data:"name"+ename,
				type:"GET",
				success:function(result){
					alert(result)
					
					$("#responseDiv").html(result);
				}
				
			})
		})
	});
</script>
<html>
<body>
	<h3>Spring MVC application with Ajax</h3>
	<form>
		Enter Username : <input type="text" name="name" id="name" />

	</form>
	<br />
	<br />

	<u>Response From Server :</u>
	<br />
	<br />

	<div id="responseDiv"></div>
</body>
</html>
