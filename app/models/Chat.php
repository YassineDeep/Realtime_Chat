<?php

class Chat extends \Eloquent {

	protected $table = 'IM';
	public $timestamps = false;

	protected $fillable = array('FromID','ToID','mgs','Time');

public static function LastgetMsg($from)
{
	$found = self::where('FromID','=',$from)->get();
	if($found->count() != 0)
	{
		foreach ($found as $last) {
			$final = $last;
		}
		return $final;
	}
	else
		return false;
}

}