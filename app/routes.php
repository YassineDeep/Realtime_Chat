<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

//Route that listen to ChatMessages

Route::post('/chat',array('uses'=>'IM@chat','as'=>'sendMgs'));

Route::get('/new/{from}', array('uses'=>'IM@Newmgs','as'=>'New'));
Route::post('/new', array('uses'=>'IM@Newmgs','as'=>'New'));

Route::get('/user1',function ()
{
	$view = View::make('user1');

	return $view;
});
Route::get('/user2',function ()
{
	$view = View::make('user2');

	return $view;
});
//must be route listen for new message 

//-------------------------------------------------------------------------------------

Route::get('/Request',function ()
{
	return View::make('Ajax');
});


























Route::get('/Single', function ()
{
	$data = DB::select('select * FROM quote ORDER BY RAND() limit 1');
	foreach ($data as $object) {
		echo "<strong>".$object->quotetext."</strong>";
		echo "<br>";
		echo "<strong>".$object->author."</strong>";
		echo "<br>";
	}
	
});

Route::get('/GET/{name}', array('as'=>'GET','uses'=>'Quote@GET'));

Route::post('/sign',array('as'=>'Login','uses'=>'Quote@Check'));