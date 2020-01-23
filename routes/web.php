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

Route::get('faisal', function () {
	return "Halo, Selamat Datang FAISAL ADI PRAYUGO !!!";
});

// Route::get('blog', function () {
//     return view('blog');
// });

Route::get('dosen', 'DosenController@index');

// Route::get('/pegawai/{nama}', 'PegawaiController@index');

Route::get('/formulir', 'PegawaiController@formulir');
Route::post('/formulir/proses','PegawaiController@proses');

Route::get('/blog', 'BlogController@home');
Route::get('/blog/tentang', 'BlogController@tentang');
Route::get('/blog/kontak', 'BlogController@kontak');

Route::get('/pegawai', 'PegawaiController@index');
Route::get('/pegawai/tambah', 'PegawaiController@tambah');
Route::post('/pegawai/store', 'PegawaiController@store');
Route::get('/pegawai/edit/{id}', 'PegawaiController@edit');
Route::post('/pegawai/update', 'PegawaiController@update');
Route::get('/pegawai/hapus/{id}', 'PegawaiController@hapus');
Route::get('/pegawai/cari', 'PegawaiController@cari');

Route::get('/input', 'FaisalPrakerinController@input');
Route::post('/proses', 'FaisalPrakerinController@proses');

Route::get('/pegawai', 'PegawaisController@index');

Route::get('/pegawaieloquent', 'PegawaiEloquentController@index');
Route::get('/pegawaieloquent/tambah', 'PegawaiEloquentController@tambah');
Route::post('/pegawaieloquent/store', 'PegawaiEloquentController@store');
Route::get('/pegawaieloquent/edit/{id}', 'PegawaiEloquentController@edit');
Route::put('/pegawaieloquent/update/{id}', 'PegawaiEloquentController@update');
Route::get('/pegawaieloquent/hapus/{id}', 'PegawaiEloquentController@hapus');

Route::get('/guru', 'GuruController@index');
Route::get('/guru/hapus/{id}', 'GuruController@hapus');
Route::get('/guru/trash', 'GuruController@trash');
Route::get('/guru/kembalikan/{id}', 'GuruController@kembalikan');
Route::get('/guru/kembalikanSemua', 'GuruController@kembalikanSemua');
Route::get('/guru/hapusPermanen/{id}', 'GuruController@hapusPermanen');
Route::get('/guru/hapusSemuaPermanen', 'GuruController@hapusSemuaPermanen');

Route::get('/pengguna', 'PenggunaController@index');

Route::get('/article', 'WebController@index');

Route::get('/anggota', 'DikiController@index');