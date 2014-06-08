<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chat Area</title>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<style>
	#msgArea{
		width: 200px;
		height: 200px;
	}
</style>
<body>
	<div id="msgArea">

	</div>
	<textarea name="textarea" id="mgs" cols="30" rows="10">
	
	</textarea>
	<button id='btnSubmit'>Send mgs</button>
<script>
data = $('#mgs').val();

function getMessage () {
	$.getJSON('new/1').done(function  (response) {
		if(response != 0)
		{
			$('#msgArea').html('');
			$('#msgArea').append(response);
		}
	});
}
function SendMessage () {
	data = $('#mgs').val();
	return $.post('/chat',
		{
			'mgs':data,
			'from':'2',
			'to':'1'
		});
}

$('#btnSubmit').on('click',function  () {
	var a = SendMessage();
	a.done(function (response) {
		$('#msgArea').append(data);

	});
return false;
});

setInterval(getMessage,1000);




// $('#btnSubmit').on('click',function  () {
// 	$.post('chat',{
// 		from:$('#From').val(),
// 		msg:$('#msg').val()
// 	},function  (response) {
// 		alert('sent');
// 		
// 	});
// 	//return false;
// });



	// function AjaxMessage () {
	// 	$.post('chat',
	// 		{
	// 			'msg' : $('#msg')
	// 		});
	// }

	// $('#btnSubmit').on('click',function  (e) {
	// 	e.preventDefault();
	// 	var ajax = AjaxMessage();
	// 	ajax.done(function  () {
	// 			alert('Send');
	// 	}).fail(function  () {
	// 		alert('Failed');		
	// 	});
	// });


</script>
</body>
</html>