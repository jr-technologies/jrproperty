<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSocietiesTable extends Migration {

	public function up()
	{
		Schema::create('societies', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('city_id')->unsigned();
			$table->string('name', 128);
			$table->timestamps();
		});
	}

	public function down()
	{
		Schema::drop('societies');
	}
}