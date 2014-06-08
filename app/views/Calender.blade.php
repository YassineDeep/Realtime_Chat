<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>$title</title>
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 <!-- Latest compiled and minified CSS -->

 {{HTML::style('css/datepicker.css')}}
 {{HTML::style('css/datepicker3.css')}}
 {{HTML::script('js/bootstrap-datepicker.js')}}
  <head>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen"
  </head>
</head>
<body>


<div class="input-append date">
    <input type="text" value="12-02-2012">
    <span class="add-on"><i class="icon-th"></i></span>
</div>




<button id='D' type='submit'>GetTimeDate</button>
<script type="text/javascript">
	



	$("#D").click(function  () {
	var d = $('#datetimepicker').datetimepicker('getDates');
	alert(d.toString());
	});
</script>
</body>
</html>