<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGrafikAirsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('grafik_airs', function (Blueprint $table) {
            $table->id();
            $table->integer('pengukur_air_id');
            $table->integer('nilai');
            $table->integer('nilai_awal')->nullable();
            $table->string('batas_air')->nullable();
            $table->dateTime('waktu')->nullable();
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
        Schema::dropIfExists('grafik_airs');
    }
}
