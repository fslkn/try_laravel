<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Pegawai;

class PegawaisController extends Controller
{
    
    public function index(){

        $pegawai = Pegawai::paginate(15);

        return view('pegawai', ['pegawai' => $pegawai]);

    }

}
