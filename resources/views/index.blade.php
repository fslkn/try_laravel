<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/bootstrap.css') }}">
</head>
<body>

    <style type="text/css">
		.pagination li{
			float: left;
			list-style-type: none;
			margin:5px;
		}
	</style>

<div class="container">
		<div class="card">
			<div class="card-body">
 
	<h2 class="text-center">Faisal Prakerin</h2>
	<h3>Data Pegawai</h3>

    <p>Cari Data Pegawai :</p>

    <div class="form-group">

	<form action="/pegawai/cari" method="GET" class="form-inline">
		<input class="form-control" type="text" name="cari" placeholder="Cari Pegawai .." value="{{ old('cari') }}">
		<input class="btn btn-primary ml-3" type="submit" value="CARI">
	</form>
		
	<br/>
 
	<table class="table table-bordered">
		<tr>
			<th>Nama</th>
			<th>Jabatan</th>
			<th>Umur</th>
			<th>Alamat</th>
		</tr>
		@foreach($pegawai as $p)
		<tr>
			<td>{{ $p->nama }}</td>
			<td>{{ $p->jabatan }}</td>
			<td>{{ $p->umur }}</td>
			<td>{{ $p->alamat }}</td>
            <td>
				<a class="btn btn-warning btn-sm" href="/pegawai/edit/{{ $p->IDpegawai }}">Edit</a>
				<a class="btn btn-danger btn-sm" href="/pegawai/hapus/{{ $p->IDpegawai }}">Hapus</a>
			</td>
		</tr>
		@endforeach
	</table>
 
	<br/>
	Halaman : {{ $pegawai->currentPage() }} <br/>
	Jumlah Data : {{ $pegawai->total() }} <br/>
	Data Per Halaman : {{ $pegawai->perPage() }} <br/>
 
 
	{{ $pegawai->links() }}
 
 
</body>
</html>