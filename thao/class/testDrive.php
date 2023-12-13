<?php
if (!defined('HOST')) exit;

class testDrive extends db
{
    private $db;

    public function registerTestDrive($name, $email, $phone, $carType, $time, $location, $dob, $gender)
    {
        $sql = "INSERT INTO test_drives (name, email, phone, car_type, time, location, dob, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        $arr = [$name, $email, $phone, $carType, $time, $location, $dob, $gender];
        return $this->updateQuery($sql, $arr);
    }

    function getByPhone($phone)
    {
        $arr = [$phone];
        return $this->selectQuery("SELECT * FROM test_drives WHERE phone=?", $arr);
    }
}
