<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/museum/index',[\App\Http\Controllers\StatueController::class,'index']);
Route::get('/museum/get-statue',[\App\Http\Controllers\StatueController::class,'getStatue']);
Route::post('/museum/create-statue',[\App\Http\Controllers\StatueController::class,'createStatue']);
Route::post('/museum/delete-student',[\App\Http\Controllers\StatueController::class,'deleteStatue']);
Route::post('/museum/update-student',[\App\Http\Controllers\StatueController::class,'updateStatue']);

