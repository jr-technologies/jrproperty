<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */
error_reporting(0);


Route::post('property/store', [
    'middleware' => ['auth'],
    'uses' => 'Staff\PropertyController@store',
    'as' => 'property/store'
]);
Route::get('property/edit/{id}', [
    'middleware' => ['auth'],
    'uses' => 'Staff\PropertyController@edit',
    'as' => 'property/edit'
]);
Route::post('property/update', [
    'middleware' => ['auth'],
    'uses' => 'Staff\PropertyController@update',
    'as' => 'property/update'
]);
Route::get('all-properties', [
    'middleware'=>['auth'],
    'uses' => 'Staff\PropertyController@index',
    'as' => 'all-properties'
]);
Route::get('my-properties', [
    'middleware'=>['auth'],
    'uses' => 'Staff\PropertyController@myProperties',
    'as' => 'my-properties'
]);
Route::get('search-properties', [
    'middleware'=>['auth'],
    'uses' => 'Staff\PropertyController@search',
    'as' => 'search-properties'
]);



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function() {

    Route::resource('city', 'Admin\CityController');
    Route::resource('societies', 'Admin\SocietyController');
    Route::resource('blocks', 'Admin\BlockController');
    Route::resource('categories', 'Admin\CategoryController');
    Route::resource('properties', 'Admin\PropertyController');
    Route::resource('staff', 'Admin\UserController');
    Route::get('home', ['uses' => 'Admin\HomeController@index', 'as' => 'admin.home.index']);
});



//Route::resource('home','HomeController');
Route::get('detail/{id}', ['uses' => 'HomeController@detail', 'as' => 'home.detail']);
Route::get('properties', ['uses' => 'HomeController@properties', 'as' => 'home.properties']);
Route::get('propertieslist', ['uses' => 'HomeController@propertieslist', 'as' => 'home.propertieslist']);
Route::post('store', ['uses' => 'HomeController@store', 'as' => 'store']);
Route::get('/', function(){
    return redirect('all-properties');
});



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function() {

    Route::resource('city', 'Admin\CityController');
    Route::resource('societies', 'Admin\SocietyController');
    Route::resource('blocks', 'Admin\BlockController');
    Route::resource('categories', 'Admin\CategoryController');
    Route::resource('properties', 'Admin\PropertyController');
    Route::resource('staff', 'Admin\UserController');
    Route::get('home', ['uses' => 'Admin\HomeController@index', 'as' => 'admin.home.index']);
});


Route::group(['prefix' => 'staff', 'middleware' => 'auth'], function() {


    Route::resource('properties', 'Staff\PropertyController');
    Route::resource('staff', 'Staff\UserController');
});


Route::controllers([
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);
