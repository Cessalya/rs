<?php
include "../include/connect.php";//sambung ke mysqli

$kode_dokter = $_GET['kodedokter'];//mengambil kodedokter dari address bar

//query untuk menghapus data
$query_hapus = mysqli_query("DELETE FROM dokter WHERE kode_dokter = '$kode_dokter'");

if ($query_hapus){//jika berhasil
//echo "Dokter Berhasil dihapus";
?><script>document.location.href="lihat_dokter.php"</script><?php
}else{//jika  gagal menghapus
echo "Gagal : ".mysqli_error();
}
?>
