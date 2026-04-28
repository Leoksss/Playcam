<?php
include('includes/config.php');
error_reporting(0); include
$vehicletitle=$_POST['vehicletitle'];
$brand=$_POST['brandname'];
$vehicleoverview=$_POST['vehicalorcview'];
$priceperday=$_POST['priceperday'];
$BateraiCadangan=$_POST['BateraiCadangan'];
$Tas=$_POST['Tas'];
$Charger=$_POST['Charger'];
$StrapCamera=$_POST['StrapCamera'];
$vimage1=$_FILES["img1"]["name"];
$vimage2=$_FILES["img2"]["name"];
$vimage3=$_FILES["img3"]["name"];
$vimage4=$_FILES["img4"]["name"];
$vimage5=$_FILES["img5"]["name"];
move_uploaded_file($_FILES["img1"]["tmp_name"],"img/cameraimages/".$_FILES["img1"]["name"]);
move_uploaded_file($_FILES["img2"]["tmp_name"],"img/cameraimages/".$_FILES["img2"]["name"]);
move_uploaded_file($_FILES["img3"]["tmp_name"],"img/cameraimages/".$_FILES["img3"]["name"]);
move_uploaded_file($_FILES["img4"]["tmp_name"],"img/cameraimages/".$_FILES["img4"]["name"]);
move_uploaded_file($_FILES["img5"]["tmp_name"],"img/cameraimages/".$_FILES["img5"]["name"]);
$sql 	= "INSERT INTO camera (nama_camera,id_merek,deskripsi,harga,image1,image2,image3,image4,image5,
			BateraiCadangan,Tas,Charger,StrapCamera)
			VALUES ('$vehicletitle','$brand','$vehicleoverview','$priceperday','$vimage1','$vimage2','$vimage3','$vimage4','$vimage5','$BateraiCadangan','$Tas','$Charger',
			'$StrapCamera')";
$query 	= mysqli_query($koneksidb,$sql);
if($query){
	echo "<script type='text/javascript'>
			alert('Berhasil tambah data.'); 
			document.location = 'camera.php'; 
		</script>";
}else {
			echo "No Error : ".mysqli_errno($koneksidb);
			echo "<br/>";
			echo "Pesan Error : ".mysqli_error($koneksidb);

	echo "<script type='text/javascript'>
			alert('Terjadi kesalahan, silahkan coba lagi!.'); 
			document.location = 'tambahcamera.php'; 
		</script>";
}

?>