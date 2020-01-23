<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;

class GuruController extends Controller
{
    //
    public function index(){
        $guru = Guru::All();
        return view('guru', ['guru' => $guru]);
    }

    public function hapus($id){

        $guru = Guru::find($id);
        $guru->delete();

        return redirect('/guru');
    }

    public function trash(){

        $guru = Guru::onlyTrashed()->get();

        return view('guruTrash', ['guru' => $guru]);
    }

    public function kembalikan($id){

        $guru = Guru::onlyTrashed()->where('id', $id);
        $guru->restore();

        return redirect('/guru/trash');
    }

    public function kembalikanSemua(){

        $guru = Guru::onlyTrashed()->restore();
        return redirect('/guru/trash');
    }

    public function hapusPermanen($id){

        $guru = Guru::onlyTrashed()->where('id', $id);
        $guru->forceDelete();

        return redirect('/guru/trash');
    }

    public function hapusSemuaPermanen(){

        $guru = Guru::onlyTrashed()->forceDelete();

        return redirect('/guru/trash');
    }
}
