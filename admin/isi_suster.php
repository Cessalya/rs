<?php
include "../include/connect.php";//sambungkan ke mysqli

//mengambil data dari form inputan
$kode_suster = $_POST['kode_suster'];
$nama_suster = $_POST['nama_suster'];
$alamat = $_POST['alamat'];
$no_tlp = $_POST['no_tlp'];
$dokter = $_POST['dokter'];

$query1 = mysqli_query("SELECT kode_dokter FROM dokter WHERE nama_dokter = '$dokter'");
$kode_dokter = mysqli_fetch_array($query1);

$query2 = mysqli_query("INSERT INTO suster (kode_suster, kode_dokter, nama_suster, alamat_suster, no_tlp) VALUES ('$kode_suster','$kode_dokter[kode_dokter]','$nama_suster','$alamat','$no_tlp')");

if ($query2){
//echo "Sukses Input data suster";
?><script>document.location.href="lihat_suster.php"</script><?php
}else{
echo "Gagal : ".mysqli_error();
}
?>
