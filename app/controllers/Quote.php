<?php

class Quote extends \BaseController {

	public function Check()
	{
		$username = Input::get('username');
		$password = Input::get('password');

		$response = Login::Exist($username,$password);
		
		if(!is_null($response))
			return Response::json('1');
	}


	public function GET($name)
	{
		if($name == 'yassine')
			return 'Access Autherized';
		else
			return 'Access Denied';
	}

}