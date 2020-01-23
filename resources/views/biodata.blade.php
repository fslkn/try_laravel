<!DOCTYPE html>
    <html>
        <head>

            <title>#4 : Passing Data Controller Ke View Laravel</title>

        </head>
        
        <body>

            <h1>Tutorial Laravel</h1>
            <a href="https://www.instagram.com/fslkn_/">@fslkn_</a>

            <br>

            <p>Nama : {{ $nama }}</p>

            <p>Mata Pelajaran</p>
            <ul>
                @foreach($matkul as $m)

                <li>{{ $m }}</li>

                @endforeach
            </ul>

        </body>
        </html>