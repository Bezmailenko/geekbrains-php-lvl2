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

    public function query($sql, $params = []) {
        $stmt = $this->db->prepare($sql);
        if (empty($params)) {
            foreach ($params as $key => $val) {
                $this->db->bindValue(':' . $key , $val );
            }
        }
        $stmt->execute();

        return $stmt;
    }

    public function row($sql, $params = []){
        $result = $this->query($sql, $params = []);
        return $result->fetchAll();
    }

    public function column($sql, $params = []){
        $result = $this->query($sql, $params = []);
        return $result->fetchColumn();
    }
}