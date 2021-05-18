<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('title');
            $table->longText('description');
            $table->string('address');
            $table->string('experience');
            $table->string('country');
            $table->string('company_name');
            $table->longText('about_company', 255);
            $table->string('company_logo')->nullable()->default('/images/default-profile.jpg');
            $table->string('salary')->nullable()->default('Unkown');
            $table->string('education')->nullable();
            $table->string('job_type');
            $table->integer('availability')->default('1');
            $table->integer('approve')->default('0');;
            $table->unsignedInteger('user_id')->index();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jobs');
    }
}