<!DOCTYPE html>
<html> 
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script language="javascript">
	function search_func(value) {
		$.ajax({
			type : "GET",
			url : "wish",
			data : {
				'name' : value
			},
			dataType : "text",
			success : function(msg) {
				//Receiving the result of search here
				$("#responseDiv").html(msg);
			}
		});
	}
</script>
<body>

	   <input type="text" name="sample_search" id="sample_search" onkeyup="search_func(this.value);">

<div id="responseDiv"></div>
	 

	<p>Change the name inside the input field, and the model data will
		change automatically, and therefore also the header will change its
		value.</p>

</body>
</html>
