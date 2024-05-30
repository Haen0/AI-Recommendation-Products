<?php

use App\Http\Controllers\PembeliController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', [PembeliController::class, 'dashboard'])->name('pembeli.dashboard');
Route::get('/cari', [PembeliController::class, 'search'])->name('pembeli.search');