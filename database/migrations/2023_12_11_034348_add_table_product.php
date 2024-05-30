<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('image1');
            $table->string('image2');
            $table->string('image3');
            $table->text('description');
            $table->string('category');
            $table->integer('price');
            $table->integer('stock');
            $table->decimal('rating', 2, 1)->default(0.0); // Rating column with 2 digits and 1 decimal place
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Schema::dropIfExists('products');
        //
    }
};
