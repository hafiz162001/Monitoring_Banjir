<?php

use Illuminate\Support\Facades\Route;
use App\Traits\RouteTrait;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();
RouteTrait::getRouteFile(__DIR__.'/web/');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])
        ->name('home')
        ->middleware('auth');
Route::get('/get_data',[App\Http\Controllers\HomeController::class, 'get_data']);
Route::get('/create-alat-pengukur',[App\Http\Controllers\HomeController::class, 'create']);
Route::post('/create-alat-pengukur',[App\Http\Controllers\HomeController::class, 'save']);
Route::get('/power-alaram/{id}',[App\Http\Controllers\HomeController::class, 'alaram_on_off']);
Route::get('/nilai-air',[App\Http\Controllers\HomeController::class, 'nilai_air']);
Route::get('/Report', [App\Http\Controllers\HomeController::class, 'Report']);
Route::post('/nilai-air',[App\Http\Controllers\HomeController::class, 'nilai_air']);
