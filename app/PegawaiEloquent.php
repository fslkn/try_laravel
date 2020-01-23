<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PegawaiEloquent extends Model
{
    //
    protected $table = "pegawai_eloquent";

    protected $fillable = ['nama', 'alamat'];
}
