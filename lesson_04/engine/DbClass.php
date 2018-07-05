<?php
require_once '../config/config.php';
require_once (TRAITS_DIR . '/Singleton.php');

class Db {
    use Singleton;
    protected $db;

    public function __construct() {
//      $conf = require_once '../config/db_config.php';
      $conf = config_db();

      $this->db = new PDO('mysql:host=' . $conf['host'] . ';dbname=' . $conf['db_name'], $conf['user'], $conf['pass']);
    }

    public function query($sql) {
        $query = $this->db->query($sql);
        return $query;
    }

    public function row($sql){
        $result = $this->query($sql);
        return $result->fetchAll();
    }

    public function column($sql){
        $result = $this->query($sql);
        return $result->fetchColumn();
    }
}