<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "dbminimarket";

$conn = new mysqli($server, $username, $password, $database);
// mengecek koneksi
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
echo "Koneksi berhasil";
// mysqli_close($conn);
// mysql_connect($server,$username,$password) or die ("Gagal");
// mysql_select_db($database) or die ("Database tidak ditemukan");
?>



