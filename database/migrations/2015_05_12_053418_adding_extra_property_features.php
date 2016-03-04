<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddingExtraPropertyFeatures extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
        Schema::table('properties', function(Blueprint $table)
        {
            $table->enum('house_type', ['new','old'])->nullable()->after('detail');
            $table->integer('bedrooms')->unsigned()->nullable()->after('house_type');
            $table->string('features', 255)->nullable()->after('bedrooms');
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
            $table->dropColumn(['house_type','bedrooms','features']);
        });
	}

}
