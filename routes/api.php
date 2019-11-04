<?php

use Illuminate\Http\Request;

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'AuthController@details');
    Route::post('/logout', 'AuthController@logout')->name('logout');
});

Route::post('/login', 'AuthController@login')->name('login');
Route::post('/register', 'AuthController@register')->name('register');


Route::get('/todos', 'TodoController@index');
Route::post('/todos', 'TodoController@store');
Route::patch('/todos/{todo}', 'TodoController@update');
Route::patch('/todoscheckall', 'TodoController@updateall');
Route::delete('/todos/{todo}', 'TodoController@destroy');
Route::delete('/todosdeletecompleted', 'TodoController@destroycompleted');