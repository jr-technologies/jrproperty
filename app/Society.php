<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Society extends Model {

	protected $table = 'societies';
	public $timestamps = true;
	protected $fillable = array('city_id', 'name');

}