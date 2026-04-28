<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Include file config.php
include_once "../includes/config.php";

// Periksa koneksi database
if (!$koneksidb) {
    echo json_encode(["message" => "Failed to connect to the database."]);
    exit;
}

// Ambil metode request
$requestMethod = $_SERVER["REQUEST_METHOD"];

// Handle berdasarkan metode
switch ($requestMethod) {
    case 'GET':
        handleGet($koneksidb);
        break;
    case 'POST':
        handlePost($koneksidb);
        break;
    case 'PUT':
        handlePut($koneksidb);
        break;
    case 'DELETE':
        handleDelete($koneksidb);
        break;
    default:
        echo json_encode(["message" => "Method not allowed"]);
        break;
}

// Fungsi untuk menangani GET (READ)
function handleGet($koneksidb) {
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    if ($id > 0) {
        $query = "SELECT * FROM camera WHERE id_camera = $id";
    } else {
        $query = "SELECT * FROM camera";
    }

    $result = mysqli_query($koneksidb, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $data = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        echo json_encode($data);
    } else {
        echo json_encode(["message" => "No data found."]);
    }
}

// Fungsi untuk menangani POST (CREATE)
function handlePost($koneksidb) {
    $inputData = json_decode(file_get_contents("php://input"), true);

    if (!empty($inputData["nama_camera"]) && !empty($inputData["harga"])) {
        $nama_camera = $inputData["nama_camera"];
        $harga = $inputData["harga"];
        $query = "INSERT INTO camera (nama_camera, harga) VALUES ('$nama_camera', '$harga')";

        if (mysqli_query($koneksidb, $query)) {
            echo json_encode(["message" => "Data created successfully."]);
        } else {
            echo json_encode(["message" => "Failed to create data."]);
        }
    } else {
        echo json_encode(["message" => "Invalid input."]);
    }
}

// Fungsi untuk menangani PUT (UPDATE)
function handlePut($koneksidb) {
    $inputData = json_decode(file_get_contents("php://input"), true);
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    if ($id > 0 && !empty($inputData["nama_camera"]) && !empty($inputData["harga"])) {
        $nama_camera = $inputData["nama_camera"];
        $harga = $inputData["harga"];
        $query = "UPDATE camera SET nama_camera = '$nama_camera', harga = '$harga' WHERE id_camera = $id";

        if (mysqli_query($koneksidb, $query)) {
            echo json_encode(["message" => "Data updated successfully."]);
        } else {
            echo json_encode(["message" => "Failed to update data."]);
        }
    } else {
        echo json_encode(["message" => "Invalid input or ID not provided."]);
    }
}

// Fungsi untuk menangani DELETE
function handleDelete($koneksidb) {
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    if ($id > 0) {
        $query = "DELETE FROM camera WHERE id_camera = $id";

        if (mysqli_query($koneksidb, $query)) {
            echo json_encode(["message" => "Data deleted successfully."]);
        } else {
            echo json_encode(["message" => "Failed to delete data."]);
        }
    } else {
        echo json_encode(["message" => "ID not provided."]);
    }
}
?>
