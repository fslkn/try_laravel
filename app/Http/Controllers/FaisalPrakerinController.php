<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FaisalPrakerinController extends Controller
{
    
    public function input(){

        return view('input');
    }

    public function proses(Request $request){

        $messages = [
            'required' => ': Attribute wajib diisi !!!',
            'min' => ': Minimal 5 karakter !!!',
            'max' => ': Maksimal 20 karakter !!!'
        ];

        $this->validate($request, [
            'nama' => 'required|min:5|max:20',
            'pekerjaan' => 'required',
            'usia' => 'required|numeric'
        ], $messages);

        return view('proses', ['data' => $request]);
    }
}
