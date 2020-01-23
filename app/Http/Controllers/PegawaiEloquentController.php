<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\PegawaiEloquent;

class PegawaiEloquentController extends Controller
{
    //
    public function index(){

        $pegawaieloquent = PegawaiEloquent::all();

        return view('pegawaieloquent', ['pegawaieloquent' => $pegawaieloquent]);

    }

    public function tambah(){

        return view('tambahEloquent');
    }

    public function store(Request $request){

        $this->validate($request,[
    		'nama' => 'required',
    		'alamat' => 'required'
    	]);
 
        PegawaiEloquent::create([
    		'nama' => $request->nama,
    		'alamat' => $request->alamat
    	]);
 
        return redirect('/pegawaieloquent');
        
    }

    public function edit($id){

        $pegawaieloquent = PegawaiEloquent::find($id);
        return view('pegawaiEloquentEdit', ['pegawaieloquent' => $pegawaieloquent]);

    }

    public function update($id, Request $request){

        $this->validate($request,[
            'nama' => 'required',
            'alamat' => 'required'
         ]);
      
         $pegawaieloquent = PegawaiEloquent::find($id);
         $pegawaieloquent->nama = $request->nama;
         $pegawaieloquent->alamat = $request->alamat;
         $pegawaieloquent->save();
         return redirect('/pegawaieloquent');
    }

    public function hapus($id){

        $pegawaieloquent = PegawaiEloquent::find($id);
        $pegawaieloquent->delete();
        return redirect('/pegawaieloquent');
    }
}
