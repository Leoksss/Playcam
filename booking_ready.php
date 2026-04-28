<?php
session_start();
error_reporting(0);
include('includes/config.php');
include('includes/format_rupiah.php');
include('includes/library.php');

// Redirect to login if user is not logged in
if(strlen($_SESSION['ulogin']) == 0){ 
    header('location:index.php');
    exit();
}

// Function to generate booking code
function generateBookingCode($table, $prefix) {
    // Logic to generate booking code
    // This function needs to be implemented based on your existing logic
    return "TRX" . rand(1000, 9999); // Example implementation
}

if(isset($_POST['submit'])) {
    $fromdate = $_POST['fromdate'];
    $todate = $_POST['todate'];
    $durasi = $_POST['durasi'];
    $pickup = $_POST['pickup'];
    $vid = $_POST['vid'];
    $email = $_POST['email'];
    $biayadriver = $_POST['biayadriver'];
    $kode = generateBookingCode("booking", "TRX");
    $status = "Menunggu Pembayaran";
    $tgl = date('Y-m-d');
    
    $conn = $koneksidb;
    
    // Insert booking data
    $stmt = $conn->prepare("INSERT INTO booking (kode_booking, id_camera, tgl_mulai, tgl_selesai, durasi, driver, status, email, pickup, tgl_booking) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sissssssss", $kode, $vid, $fromdate, $todate, $durasi, $biayadriver, $status, $email, $pickup, $tgl);
    $success = $stmt->execute();
    
    if($success) {
        // Insert into cek_booking table for each day of the booking duration
        for($i = 0; $i < $durasi; $i++) {
            $tglmulai = strtotime($fromdate);
            $tglhasil = date("Y-m-d", $tglmulai + (86400 * $i));
            $stmt = $conn->prepare("INSERT INTO cek_booking (kode_booking, id_camera, tgl_booking, status) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("siss", $kode, $vid, $tglhasil, $status);
            $stmt->execute();
        }
        echo "<script>alert('Camera berhasil disewa.');</script>";
        echo "<script type='text/javascript'>document.location = 'booking_detail.php?kode=$kode';</script>";
    } else {
        echo "<script>alert('Ooops, terjadi kesalahan. Silahkan coba lagi.');</script>";
    }
}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Mutiara Motor Car Rental Portal</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <!-- Custom Style -->
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <!-- FontAwesome Font Style -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
    <!-- Google-Font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
</head>
<body>
<!-- Header -->
<?php include('includes/header.php'); ?>
<!-- /Header --> 

<div>
    <br/>
    <center><h3>Camera Tersedia Untuk Disewa.</h3></center>
    <hr>
</div>

<?php
$email = $_SESSION['ulogin']; 
$vid = $_GET['vid'];
$mulai = $_GET['mulai'];
$selesai = $_GET['selesai'];
$driver = $_GET['driver'];
$pickup = $_GET['pickup'];

$start = new DateTime($mulai);
$finish = new DateTime($selesai);
$int = $start->diff($finish);
$durasi = $int->days + 1;

// Menarik biaya driver dari database
$sqldriver = "SELECT * FROM tblpages WHERE id='0'";
$querydriver = mysqli_query($koneksidb, $sqldriver);
$resultdriver = mysqli_fetch_array($querydriver);
$drive = $resultdriver['detail'];

$drivercharges = ($driver == "1") ? $drive * $durasi : 0;

$sql1 = "SELECT camera.*, merek.* FROM camera, merek WHERE merek.id_merek = camera.id_merek AND camera.id_camera = '$vid'";
$query1 = mysqli_query($koneksidb, $sql1);
$result = mysqli_fetch_array($query1);
$harga = $result['harga'];
$totalcamera = $durasi * $harga;
$totalsewa = $totalcamera + $drivercharges;
?>

<section class="user_profile inner_pages">
    <div class="container">
        <div class="col-md-6 col-sm-8">
            <div class="product-listing-img">
                <img src="admin/img/vehicleimages/<?php echo htmlentities($result['image1']); ?>" class="img-responsive" alt="Image" />
            </div>
            <div class="product-listing-content">
                <h5><?php echo htmlentities($result['nama_merek']); ?> , <?php echo htmlentities($result['nama_camera']); ?></h5>
                <p class="list-price"><?php echo htmlentities(format_rupiah($result['harga'])); ?> / Hari</p>
                
            </div>
        </div>
        
        <div class="user_profile_info">    
            <div class="col-md-12 col-sm-10">
                <form method="post" name="sewa">
                    <input type="hidden" class="form-control" name="vid" value="<?php echo $vid; ?>" required>
                    <input type="hidden" class="form-control" name="email" value="<?php echo $email; ?>" required>
                    <div class="form-group">
                        <label>Tanggal Mulai</label>
                        <input type="date" class="form-control" name="fromdate" value="<?php echo $mulai; ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Tanggal Selesai</label>
                        <input type="date" class="form-control" name="todate" value="<?php echo $selesai; ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Durasi</label>
                        <input type="text" class="form-control" name="durasi" value="<?php echo $durasi; ?> Hari" readonly>
                    </div>
                    <div class="form-group">
                        <label>Metode Pickup</label>
                        <input type="text" class="form-control" name="pickup" value="<?php echo $pickup; ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Biaya Camera (<?php echo $durasi; ?> Hari)</label><br/>
                        <input type="text" class="form-control" name="biayacamera" value="<?php echo format_rupiah($totalcamera); ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Biaya Pengantaran</label><br/>
                        <input type="hidden" class="form-control" name="biayadriver" value="<?php echo $drivercharges; ?>" readonly>
                        <input type="text" class="form-control" name="driver" value="<?php echo format_rupiah($drivercharges); ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Total Biaya Sewa</label><br/>
                        <input type="text" class="form-control" name="total" value="<?php echo format_rupiah($totalsewa); ?>" readonly>
                    </div>
                    <br/>            
                    <div class="form-group">
                        <input type="submit" name="submit" value="Sewa" class="btn btn-block">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<?php include('includes/footer.php'); ?>
<!-- /Footer -->

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!-- Switcher -->
<script src="assets/switcher/js/switcher.js"></script>
<!-- Bootstrap-slider -->
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!-- Slider -->
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>
<?php

?>
