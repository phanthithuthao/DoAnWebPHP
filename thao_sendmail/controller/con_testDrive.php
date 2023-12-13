<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<?php
$action = Utilities::get('action', 'index');
$TestDrive = new testDrive();


if ($action == 'testDrive') {
    if (isset($_POST['btnTestDrive'])) {
        // Lấy thông tin từ form đăng ký lái thử
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $carType = $_POST['car_type'];
        $time = $_POST['time'];
        $location = $_POST['location'];
        $dob = $_POST['dob'];
        $gender = $_POST['gender'];

        // Kiểm tra tuổi
        $minimumAge = 18;
        $currentDate = date('Y-m-d');
        $age = date_diff(date_create($dob), date_create($currentDate))->y;

        // Kiểm tra thời gian lái thử
        $startTime = strtotime('7:00 AM');
        $endTime = strtotime('7:00 PM');
        $selectedTime = strtotime($time);

        if ($age >= $minimumAge) {
            if ($selectedTime >= $startTime && $selectedTime <= $endTime) {
                // Thời gian hợp lệ, tiếp tục xử lý đăng ký
                $rowCount = $TestDrive->registerTestDrive($name, $email, $phone, $carType, $time, $location, $dob, $gender);
                // ...
            } else {
                // Thời gian không hợp lệ, thông báo lỗi
                $error_message = 'Thời gian lái thử phải từ 7 AM đến 7 PM.';
            }
        } else {
            // Tuổi không đủ, thông báo lỗi
            $error_message = 'Bạn phải đủ 18 tuổi trở lên để đăng ký lái thử.';
        }
    } else {
        $error_message = "";
    }

    // Hiển thị thông báo lỗi và nút "Quay lại" trong một phần của trang web
    if (!empty($error_message)) {
        echo "<p>$error_message</p>";
        echo '<button onclick="history.back()">Quay lại</button>';
    }
}

if ($action == 'getPhone') {
    $phone = Utilities::get('phone');
    $dataById = $TestDrive->getByPhone($phone);

    // var_dump($dataById);
    // print_r("a" . $dataById);
    // exit;
    include './views/cart/testDrive.php';
}
