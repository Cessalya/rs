<?php
include "../include/connect.php";

//mengambil data dari form
$kode_jaga = $_POST[kode_jaga];
$dokter = $_POST[dokter];
$suster = $_POST[suster];
$recept = $_POST[receptionist];
$waktujaga = ucwords($_POST[waktujaga]);

//mengambil kode dokter untuk dimasukkan ke dalam tabel jadwal_jaga
$kddokter = mysqli_query("SELECT kode_dokter FROM dokter WHERE nama_dokter = '$dokter'");
$kdsuster = mysqli_query("SELECT kode_suster FROM suster WHERE nama_suster = '$suster'");
$kdrecept = mysqli_query("SELECT kode_receptionist FROM receptionist WHERE nama_receptionist = '$recept'");

//memecah hasil kedalam array 
$kode_dokter = mysqli_fetch_array($kddokter);
$kode_suster = mysqli_fetch_array($kdsuster);
$kode_recept = mysqli_fetch_array($kdrecept);

//Query untuk memasukkan Data ke dalam tabel jadwal_jaga
$query = mysqli_query("INSERT INTO jadwal_jaga (kode_jaga,kode_dokter,kode_suster,kode_receptionist,waktu_jaga) VALUES ('$kode_jaga','$kode_dokter[kode_dokter]','$kode_suster[kode_suster]','$kode_recept[kode_receptionist]','$waktujaga')");

if ($query) {
//echo "sukses input jadwal";
?><script>document.location.href="lihat_jadwal.php"</script><?php
}else{
echo "Gagal : ".mysqli_error();
}
?>