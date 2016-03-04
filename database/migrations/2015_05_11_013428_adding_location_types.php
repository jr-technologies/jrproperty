<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddingLocationTypes extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
    {
        Schema::table('properties', function(Blueprint $table)
        {
            #$table->dropColumn('location');
            #$table->enum('location', array('corner', 'non-corner','facing-park','main-boulevard','average-plot'))->after('size_unit');
            DB::statement("ALTER TABLE properties MODIFY COLUMN location enum('corner', 'non-corner','facing-park','main-boulevard','average-plot')");
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
            #$table->dropColumn('location');
            #$table->enum('location', array('corner', 'non-corner'))->after('size_unit');
            DB::statement("ALTER TABLE properties MODIFY COLUMN location enum('corner', 'non-corner')");
        });
    }

}
