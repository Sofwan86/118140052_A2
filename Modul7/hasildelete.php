<?php
    $cari=$_POST['cari'];
    $conn=mysqli_connect("localhost","root","");
    mysqli_select_db($conn,"data_mhs");
    mysqli_query($conn,"delete from mahasiswa where NRP='$cari'");
    echo "<script>alert('data terhapus');</script>";
    echo "<script>location='view.php';</script>";
?>