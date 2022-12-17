<?php
include "../include/connect.php";//sambung ke mysqli

$kode_jaga = $_GET['kode'];//mengambil nilai kode dari address bar

//query menghapus data dari tabel jadwal_jaga
$del = mysqli_query("DELETE FROM jadwal_jaga WHERE kode_jaga = '$kode_jaga'");

if ($del){ //jika query hapus berhasil maka tampilkan :
//echo "Sukses hapus jadwal";
?><script>document.location.href="lihat_jadwal.php"</script><?php
}else{
echo "Gagal : ".mysqli_error();
}
?>
