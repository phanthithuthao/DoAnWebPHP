<?php
$action = Utilities::get('action', 'index');
$TestDrive = new testDrive();

if ($action == 'index') {
    $dataTestDrive = $TestDrive->getAll();
    include './views-ad/testdrive/index.php';
}
