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
Route::get('/users',[\App\Http\Controllers\UserController::class,'show']);
Route::get('/users/login',[\App\Http\Controllers\UserController::class,'login']);
Route::get('/users/register',[\App\Http\Controllers\UserController::class,'register']);
Route::get('/categories',[\App\Http\Controllers\CategoryController::class,'show']);
Route::get('/cities',[\App\Http\Controllers\CityController::class,'show']);
Route::get('/states',[\App\Http\Controllers\StateController::class,'show']);
Route::get('/products',[\App\Http\Controllers\ProductController::class,'show']);
Route::get('/subcategories',[\App\Http\Controllers\SubcategoryController::class,'show']);
Route::get('/property_products',[\App\Http\Controllers\Property_ProductController::class,'show']);
Route::get('/properties',[\App\Http\Controllers\PropertyController::class,'show']);
Route::get('/favorites',[\App\Http\Controllers\favoriteController::class,'show']);
Route::get('/addresses',[\App\Http\Controllers\AddressController::class,'show']);
