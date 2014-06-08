<?php

class Login extends \Eloquent {
	protected $table ='users';
	public $timestamps = false;


public static function Exist($USERNAME,$PASS)
{
	$data = self::where('username',$USERNAME)->where('password',$PASS)->first();
	
	return $data;
}

}