<?php

class IM extends \BaseController {

	public function chat()
	{
		if(Request::ajax())
		{
		$mgs = Input::get('mgs');
		$from = Input::get('from');
		$to = Input::get('to');
		//return $ToID." and ".$FromID;
		//find toID
		//Save it to database
		$now  = date('Y/m/d H:i:s');
		$Save = Chat::create(array('ToID'=>$to,'FromID'=>$from,'mgs'=>$mgs,'Time'=>$now));

		$json =array('msg'=>$mgs,'FromID'=>$from,'ToID'=>$to);

		return json_encode($json);
		}

	}


	public function Newmgs($from)
	{
		$back = Chat::LastgetMsg($from);
		if($back)
			return json_encode($back->mgs);
		else
			return 0;
	}
}