<?php
include"../include/connect.php";
$kode_pasien = $_POST['kode_pasien'];
$nama_dokter = $_POST['nama_dokter'];
$hasil = mysqli_query("SELECT kode_dokter FROM dokter WHERE nama_dokter = '$nama_dokter'");
$dokter = mysqli_fetch_array($hasil);
$kode_dokter = $dokter['kode_dokter'];
$hasil2 = mysqli_query("UPDATE tgl_masuk SET kode_dokter = '$kode_dokter' WHERE kode_pasien = $kode_pasien");

if ($hasil2){
//echo "Sukses";
?><script>document.location.href="lihat_pasien.php"</script><?php
}else{
echo "gagal : ".mysqli_error();
}
?>
