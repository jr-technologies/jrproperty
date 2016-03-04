<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePropertiesTable extends Migration {

	public function up()
	{
		Schema::create('properties', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('city_id')->unsigned();
			$table->integer('society_id')->unsigned();
			$table->integer('block_id')->unsigned();
			$table->integer('user_id')->unsigned();
			$table->string('title', 255)->nullable();
			$table->enum('type', array('direct', 'indirect'));
			$table->string('estate_name', 128)->nullable();
			$table->string('contact_person', 128);
			$table->string('mobile', 20);
			$table->string('phone', 20);
			$table->string('address', 255)->nullable();
			$table->string('property_no', 20);
			$table->enum('purpose', array('sale', 'rent', 'wanted'));
			$table->integer('size')->unsigned();
			$table->enum('size_unit', array('marla', 'kanal'));
			$table->enum('location', array('corner', 'non-corner'));
			$table->integer('price')->unsigned();
			$table->enum('price_unit', array('lakh', 'thousand', 'crore'));
			$table->integer('price_converted')->unsigned();
			$table->text('detail')->nullable();
			$table->enum('sold', array('Y', 'N'));
			$table->timestamps();
		});
	}

	public function down()
	{
		Schema::drop('properties');
	}
}