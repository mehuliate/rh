<?php

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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/staff', 'StaffController@index')->name('staff');
Route::get('/dokumen-rh-form', 'StaffController@formDokumenRh')->name('daftar-rh');
Route::post('/dokumen-rh-store', 'StaffController@storeDokumenRh')->name('store-rh');



Route::get('/upload_daftar_dokumen', 'StaffController@uploadDaftarDokumen')->name('UploadDaftarDokumen');
