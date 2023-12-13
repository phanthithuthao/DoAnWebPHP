<?php
if (!defined('HOST')) exit;
class testDrive extends db
{
    function getAll()
    {
        return $this->selectQuery('select * from test_drives');
    }
}
