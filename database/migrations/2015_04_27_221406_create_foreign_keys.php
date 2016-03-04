<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateForeignKeys extends Migration {

	public function up()
	{
		Schema::table('societies', function(Blueprint $table) {
			$table->foreign('city_id')->references('id')->on('cities')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('blocks', function(Blueprint $table) {
			$table->foreign('society_id')->references('id')->on('societies')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->foreign('city_id')->references('id')->on('cities')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->foreign('society_id')->references('id')->on('societies')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->foreign('block_id')->references('id')->on('blocks')
						->onDelete('cascade')
						->onUpdate('no action');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->foreign('user_id')->references('id')->on('users')
						->onDelete('cascade')
						->onUpdate('no action');
		});
	}

	public function down()
	{
		Schema::table('societies', function(Blueprint $table) {
			$table->dropForeign('societies_city_id_foreign');
		});
		Schema::table('blocks', function(Blueprint $table) {
			$table->dropForeign('blocks_society_id_foreign');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->dropForeign('properties_city_id_foreign');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->dropForeign('properties_society_id_foreign');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->dropForeign('properties_block_id_foreign');
		});
		Schema::table('properties', function(Blueprint $table) {
			$table->dropForeign('properties_user_id_foreign');
		});
	}
}