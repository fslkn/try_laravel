<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel - www.malasngoding.com</title>
</head>
<body>
 
	<h2><a href="https://instagram.com/fslkn_/">Faisal Adi Prayugo</a></h2>
	<h3>Edit Pegawai</h3>
 
	<a href="/pegawai"> Kembali</a>
	
	<br/>
	<br/>
 
	@foreach($pegawai as $p)
	<form action="/pegawai/update" method="post">
		{{ csrf_field() }}
		<input type="hidden" name="id" value="{{ $p->IDpegawai }}"> <br/>
		Nama <input type="text" required="required" name="nama" value="{{ $p->nama }}"> <br/>
		Jabatan <input type="text" required="required" name="jabatan" value="{{ $p->jabatan }}"> <br/>
		Umur <input type="number" required="required" name="umur" value="{{ $p->umur }}"> <br/>
		Alamat <textarea required="required" name="alamat">{{ $p->alamat }}</textarea> <br/>
		<input type="submit" value="Simpan Data">
	</form>
	@endforeach
		
 
</body>
</html>