<?php
if(!isset($_SESSION)) {
     session_start();
}
if(!isset($_SESSION['username'])){
?>
<script>document.location.href="../login/"</script>
<?php 
}

$host="localhost"; //deklarasi variabel
$user="root"; 
$password=""; 
$database="hospital"; 

//sambungkan ke database
$koneksi=mysqli_connect($host,$user,$password); 

//memilih database yang akan dipakai
mysqli_select_db($database,$koneksi); 

if($koneksi){  //cek koneksi 
//echo "berhasil koneksi"; 
}else{ 
 echo "koneksi ke database mysqli gagal"; 
} 

?>
