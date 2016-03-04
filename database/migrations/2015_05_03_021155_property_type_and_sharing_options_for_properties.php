<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PropertyTypeAndSharingOptionsForProperties extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('properties', function(Blueprint $table)
		{
            $table->integer('category_id')->unsigned()->after('id');
            $table->enum('share_contact_info', ['Y','N'])->after('detail');
            $table->enum('share_property', ['Y','N'])->after('share_contact_info');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('properties', function(Blueprint $table)
		{
            $table->dropColumn(['category_id', 'share_contact_info', 'share_property']);
		});
	}

}
