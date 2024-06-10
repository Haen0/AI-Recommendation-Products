<?php

use App\Http\Controllers\PembeliController;
use App\Http\Controllers\PProductController;
use App\Http\Controllers\TFIDFController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PembeliController::class, 'dashboard'])->name('pembeli.dashboard');
Route::get('/cari', [PembeliController::class, 'search'])->name('pembeli.search');
Route::get('/detailproduk/{id}', [PProductController::class, 'showDetail'])->name('showDetail');
Route::post('/simpannama/{id}', [PProductController::class, 'SimpanNama'])->name('simpanNama');
