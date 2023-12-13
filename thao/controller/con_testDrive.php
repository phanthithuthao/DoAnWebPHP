<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<?php
$action = Utilities::get('action', 'index');
$TestDrive = new testDrive();

if ($action == 'testDrive') {
    if (isset($_POST['btnTestDrive'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $carType = $_POST['car_type'];
        $time = $_POST['time'];
        $location = $_POST['location'];
        $dob = $_POST['dob'];
        $gender = $_POST['gender'];

        $rowCount = $TestDrive->registerTestDrive($name, $email, $phone, $carType, $time, $location, $dob, $gender);

        if ($rowCount > 0) {
            $message = 'Đăng ký lái thử thành công';
            echo '<script> swal ( "Nice Shot" ,  "Sign Up Success" ,  "success" ) </script>';
            echo '<script> setTimeout(function(){ window.location.href = "index.php?controller=testDriver&action=getPhone&phone=' . $phone . '"; }, 1000); </script>';
        } else {
            $message = 'Đăng ký lái thử thất bại';
        }
    } else {
        $message = "";
    }

    $data = [
        'message' => $message,
    ];

    return $data;
}

if ($action == 'getPhone') {
    $phone = Utilities::get('phone');
    $dataById = $TestDrive->getByPhone($phone);

    // var_dump($dataById);
    // print_r("a" . $dataById);
    // exit;
    include './views/cart/testDrive.php';
}
