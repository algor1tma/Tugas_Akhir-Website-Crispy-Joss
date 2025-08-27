<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('raw_material_logs', function (Blueprint $table) {
            $table->decimal('price', 18, 2)->nullable()->change();
            $table->decimal('subtotal', 20, 2)->default(0)->change();
        });
    }

    public function down()
    {
        Schema::table('raw_material_logs', function (Blueprint $table) {
            $table->decimal('price', 10, 2)->nullable()->change();
            $table->decimal('subtotal', 10, 2)->default(0)->change();
        });
    }
};
