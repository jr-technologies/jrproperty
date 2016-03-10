<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notifications extends Model {

	protected $table = 'notifications';
	public $timestamps = true;
	protected $fillable = array('notification');

}