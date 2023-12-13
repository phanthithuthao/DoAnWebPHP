<?php
if (!defined('HOST')) exit;

class db
{
    protected static $pdo;

    public function __construct()
    {
        try {
            self::$pdo = new PDO('mysql:host=' . HOST . ';dbname=' . DB, USER, PW);
            self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            self::$pdo->query('set names utf8');
        } catch (PDOException $e) {
            die('Connection failed: ' . $e->getMessage());
        }
    }

    protected function selectQuery($sql, $arr = [])
    {
        $stm = self::$pdo->prepare($sql);
        $stm->execute($arr);
        return $stm->fetchAll(PDO::FETCH_ASSOC);
    }

    protected function updateQuery($sql, $arr = [])
    {
        $stm = self::$pdo->prepare($sql);
        $stm->execute($arr);
        return $stm->rowCount();
    }
}
