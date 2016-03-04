<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBlocksTable extends Migration {

	public function up()
	{
		Schema::create('blocks', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('society_id')->unsigned();
			$table->string('name', 128);
			$table->timestamps();
		});
	}

	public function down()
	{
		Schema::drop('blocks');
	}
}