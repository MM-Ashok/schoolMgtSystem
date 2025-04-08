<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBiodataToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('phone');
            $table->string('bio');
            $table->string('experience');
            $table->string('address');
            $table->string('general_video');
            $table->string('courses_details');
            $table->string('skills');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('phone');
            $table->dropColumn('bio');
            $table->dropColumn('experience');
            $table->dropColumn('address');
            $table->dropColumn('general_video');
            $table->dropColumn('courses_details');
            $table->dropColumn('skills');
        });
    }
}
