<?php

    namespace App\Http\Controllers;

    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\DB;

    class PegawaiController extends Controller {

        public function index(){

            // mengambil data dari table pegawai
    	$pegawai = DB::table('pegawai')->paginate(10);
 
    	// mengirim data pegawai ke view index
    	return view('index',['pegawai' => $pegawai]);
        }

        public function tambah(){

            return view('tambah');
        }

        public function store(Request $request){

            DB::table('pegawai')->insert([
                'nama' => $request->nama,
                'jabatan' => $request->jabatan,
                'umur' => $request->umur,
                'alamat' => $request->alamat
            ]);

            return redirect('/pegawai');
        }

        public function edit($id){

            $pegawai = DB::table('pegawai')->where('IDpegawai', $id)->get();

            return view('edit', ['pegawai' => $pegawai]);
        }

        public function update(Request $request){

            // update data pegawai
            DB::table('pegawai')->where('IDpegawai',$request->id)->update([
                'nama' => $request->nama,
                'jabatan' => $request->jabatan,
                'umur' => $request->umur,
                'alamat' => $request->alamat
            ]);
            // alihkan halaman ke halaman pegawai
            return redirect('/pegawai');
        }

        public function hapus($id){

            DB::table('pegawai')->where('IDpegawai', $id)->delete();

            return redirect('/pegawai');
        }

        public function cari(Request $request){

            $cari = $request->cari;

            $pegawai = DB::table('pegawai')
                ->where('nama', 'like', "%".$cari."%")
                ->paginate();

                return view('index', ['pegawai' =>$pegawai]);
        }
    }