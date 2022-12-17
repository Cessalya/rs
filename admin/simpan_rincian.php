<?php
include"../include/connect.php";//sambungkan ke mysqli

//mengambil nilai dari FORM
$kode_pasien=$_POST['kode_pasien'];
$lama_rawat = $_POST['lama_rawat'];
$jmlh_pembayaran=$_POST['jmlh_pembayaran'];
$tgl_keluar=$_POST['tgl_keluar'];
$kode_ruangan = $_POST['kode_ruangan'];

//mengambil kode_pembayaran (jika ada) di tabel pembayaran
$query = mysqli_query("SELECT kode_pembayaran FROM pembayaran WHERE kode_inap IN (SELECT kode_inap FROM rawat_inap WHERE kode_pasien = '$kode_pasien')");
$pembayaran = mysqli_fetch_array($query);
$cek = $pembayaran['kode_pembayaran']; //disimpan di variabel cek untuk dicek ada atau tidaknya

//query untuk mengambil nilai tertinggi kode_pembayaran dari tabel pembayaran
$querymax = mysqli_query("SELECT MAX(kode_pembayaran) AS kode_pembayaran FROM pembayaran");
$kodebayar = mysqli_fetch_array($querymax);
$kode_pembayaran = $kodebayar['kode_pembayaran']+1;//tambahkan 1 agar menjadi kode_pembayaran baru

//query untuk mengambil kode_inap tertinggi untuk dimasukkan sebagai data baru ke tabel pembayaran
$queryinap = mysqli_query("SELECT MAX(kode_inap) AS kode_inap FROM rawat_inap");
$inap = mysqli_fetch_array($queryinap);
$kode_inap = $inap['kode_inap']+1; //kode inap ditambah 1 agar menjadi kode inap baru

if ($cek==''){ //jika tidak ada kode pembayaran dari yang sesuai dari tabel pembayaran
//maka masukkan data ke tabel pembayaran 
$query2 = mysqli_query("INSERT INTO pembayaran (kode_pembayaran, kode_receptionist, kode_inap, lama_rawat, jmlh_pembayaran) VALUES('$kode_pembayaran', '$_SESSION[username]', '$kode_inap','$lama_rawat','$jmlh_pembayaran')");
$querylagi = mysqli_query("INSERT INTO tgl_keluar (kode_pasien, kode_ruangan, kode_pembayaran, lama_pembayaran, tgl_keluar) VALUES ('$kode_pasien', '$kode_ruangan', '$kode_pembayaran', '$lama_rawat', '$tgl_keluar')");
}else{ //tetapi jika ada kode_pembayaran yang sesuai maka update data tersebut
$query3 = mysqli_query("UPDATE pembayaran SET kode_receptionist = '$_SESSION[username]',lama_rawat='$lama_rawat', jmlh_pembayaran = '$jmlh_pembayaran' WHERE kode_inap IN (SELECT kode_inap FROM rawat_inap WHERE kode_pasien = '$kode_pasien')");
$querylagi2 = ("UPDATE tgl_keluar SET lama_pembayaran='$lama_rawat', tgl_keluar='$tgl_keluar' WHERE kode_pasien='$kode_pasien'");
}?>
<script>alert('rincian berhasil disimpan');document.location.href="lihat_pasien.php"</script>
