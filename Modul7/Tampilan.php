<h1>DATA MAHASISWA</h1>
<?php
    $conn=mysqli_connect("localhost","root","");
    mysqli_select_db($conn,"data_mhs");
    $hasil = mysqli_query($conn,"select * FROM mahasiswa inner join jurusan on mahasiswa.id_jurusan=jurusan.id_jurusan");
    $jumlah = mysqli_num_rows($hasil);
    $a=1;
    //echo "Data Mahasiswa";
    echo "Jumlah mahasiswa : $jumlah";
    while($baris = mysqli_fetch_array($hasil)){
        echo"<br>";
        echo "No : ";
        echo $a;
        echo "<br>"; echo "NRP : ";echo $baris[0];
        echo "<br>"; echo "NAMA : ";echo $baris[1];
        echo "<br>"; echo "ALAMAT : ";echo $baris[2];
        echo "<br>"; echo "JURUSAN : ";echo $baris[5];echo"<br>";
        $a++;
    }
?>
<p style="font-size:24px">
<a href='search.html' >Cari</a>
<a href='hapus_html.html' >Hapus</a>
<a href='tambah_html.html' >Tambah</a>
</p>
