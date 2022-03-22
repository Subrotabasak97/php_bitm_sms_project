<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WebController;
use App\Http\Controllers\AuthController;

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

Route::get('/', [ WebController::class, 'index' ])->name('home');


Route::get('/course-detail', [ WebController::class, 'detail' ])->name('course-detail');
Route::get('/user-login', [ AuthController::class, 'login' ])->name('user-login');
Route::get('/user-register', [ AuthController::class, 'register' ])->name('user-register');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
