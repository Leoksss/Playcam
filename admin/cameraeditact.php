<?php
include('includes/config.php');
error_reporting(0);
$vehicletitle=$_POST['vehicletitle'];
$brand=$_POST['brandname'];
$vehicleoverview=$_POST['vehicalorcview'];
$priceperday=$_POST['priceperday'];
$BateraiCadangan=$_POST['BateraiCadangan'];
$Tas=$_POST['Tas'];
$Charger=$_POST['Charger'];
$StrapCamera=$_POST['StrapCamera'];

$id=$_POST['id'];

$sql="UPDATE camera SET nama_camera='$vehicletitle',id_merek='$brand',deskripsi='$vehicleoverview',harga='$priceperday',BateraiCadangan='$BateraiCadangan',Tas='$Tas',Charger='$Charger',
	StrapCamera='$StrapCamera' where id_camera='$id'";
$query 	= mysqli_query($koneksidb,$sql);
if($query){
	echo "<script type='text/javascript'>
			alert('Berhasil edit data.'); 
			document.location = 'camera.php'; 
		</script>";
}else {
			echo "No Error : ".mysqli_errno($koneksidb);
			echo "<br/>";
			echo "Pesan Error : ".mysqli_error($koneksidb);

	echo "<script type='text/javascript'>
			alert('Terjadi kesalahan, silahkan coba lagi!.'); 
			document.location = 'cameraedit.php?id=$id'; 
		</script>";
}
?>