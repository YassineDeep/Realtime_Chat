<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ajax First Lesson Using jQuery Library</title>
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Crafty+Girls' rel='stylesheet' type='text/css'>
{{HTML::style('style.css')}}
<body>
	<div id="container">
	<div id="header">
		<h1 class="title font">Famous Quotes</h1>
		<ul class="nav">
			<li><a href="#" class="" id="btnGetNewerQuotes">Get Newer Quotes</a></li>
			<li><a href="#" class="" id="btnSubmitQuote">Submit Quote</a></li>
			<li><a href="#" class="" id="btnLogin" >Login</a></li>
			<li><a href="#" class="" id="btnRandomQuote" >Random Quote</a></li>
			<li><a href="#" class="" id="btnGET" >Get Button</a></li>
			<li class="last"><input type="text" id="searchPhrase" /><a href="#" id="btnSearch">Search</a></li>
		</ul>
		<br class="clear">
	</div>
	
	<div id="single" class="highlight">
	</div>
	
	<div id="content">
		<div id="login" class="hide">
		

{{Form::open(array('route'=>'Login','method'=>'post'))}}
		<ul class="thirds">
			<li>
				<label>Status: <label id='status'> </label></label>
			</li>
			<li>

				<label for="username">Login Name</label>
				{{Form::text('username', null, array('id'=>'username','placeholder'=>'username'))}}
			</li>
			<li>
				<label for="password">Password</label>
				{{Form::password('password', null, array('id'=>'password','placeholder'=>'password'))}}
			</li>
			<li>
				{{Form::submit('Login', array('class'=>'submit','id'=>'submitLogin','name'=>'submitLogin'))}}
			</li>
		</ul>
		<br class="clear">
{{Form::close()}}		


		</div>
		<div id="addQuote" class="hide">
		

		<form method="post" action="SubmitQuote.php">
		<ul>
			<li class="full">
				<label for="quotetext">Famous Quote</label>
				<textarea name="quotetext" id="quotetext" cols="45" rows="5"></textarea>
			</li>
			<li>
				<label for="author">Quote From</label>
				<input type="text" name="author" id="author">
			</li>
			<li>
				<label for="tags">Tags</label>
				<input type="text" name="tags" id="tags">
			</li>
			<li>
				<input type="submit" name="submitQuote" id="submitQuote" value="Add" class="submit">
			</li>
		</ul>
		<br class="clear">
		</form>
		



		</div>
		<div id="quotes"></div>
	</div>
	<div id="footer"></div>
</div>
</body>

<script>
//Show Login
$('#btnLogin').on('click',function  () {
	$('#login').slideDown('slow');
});
//Show Submit 
$('#btnSubmitQuote').on('click',function  () {
	$('#addQuote').slideDown('slow');
});


//GET Single Qoute From Database
$("#btnRandomQuote").on('click',function  () {
	$("#single").slideDown('slow').load('/Single');
});

//GET in Interval
function Interval () {
	$("#single").slideDown('slow').load('/Single');
}
setInterval(Interval,2000);

</script>
<script>
//Using ajax to POST username and password to Server
$('#submitLogin').on('click',function() {
$.post('sign',{
	'username' : $("#username").val(),
	'password' : $("#password").val()
},function (response) {
	alert(response);
	// if(response != "0")
	// {
	// 	alert('Success Login');
	// 	$("#login").slideUp('slow');
	// }
	// else
	// 	alert('Failed to Login');
});	
return false;
});

//ajax call 

function AjaxCall(id) {
	return $.get('GET/' + id);
}

function ExecuteAjax (id) {
	AjaxCall(id).done(function (res) {
		alert('Success'+res);
	}).fail(function  () {
			alert('Fail');
	})
}

$('#btnSearch').on('click',function () {
	var id = $('#searchPhrase').val();
	ExecuteAjax(id);
})



// $('#btnSearch').on('click',function() {
// var URL = 'GET/'
// var getVar = $('#searchPhrase').val();
// var test  = URL+getVar;
// $.get(test,{
// 	'name':'yassine'
// },function(response) {
// 		alert(response);
// 	});
// return false;
// });


</script>

</html>