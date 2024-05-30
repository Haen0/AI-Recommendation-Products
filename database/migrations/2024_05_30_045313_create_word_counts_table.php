<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWordCountsTable extends Migration
{
    public function up()
    {
        Schema::create('word_counts', function (Blueprint $table) {
            $table->id();
            $table->string('word');
            $table->unsignedInteger('count')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('word_counts');
    }
}

