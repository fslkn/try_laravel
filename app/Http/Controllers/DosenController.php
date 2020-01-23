<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DosenController extends Controller
{
    
    public function index(){

        $nama = "Faisal Adi Prayugo";

        $pelajaran = ["Tutorial PHP", "Tutorial SQL"];

        return view('biodata', ['nama' => $nama , 'matkul' => $pelajaran]);

    }

}
