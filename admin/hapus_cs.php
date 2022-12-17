<?php
include "../include/connect.php";//sambungkan ke mysqli

$kodecs = $_GET['kode'];

$hapus = mysqli_query("DELETE FROM cleaning_service WHERE kode_clean_serv = '$kodecs'");

if ($hapus){
//echo "Sukses Hapus";
?><script>document.location.href="lihat_cs.php"</script><?php
}else{
echo "Gagal : ".mysqli_error();
}
?>
