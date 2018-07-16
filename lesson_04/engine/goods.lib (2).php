<?php
require_once '../engine/DbClass.php';

function getMyGoods() {
    $db = Db::get_instance();
    $result = $db->row("SELECT * FROM `goods` WHERE 1 LIMIT 4;");

    echo json_encode(["goods" => $result]);
    return;
}

function addGoods() {
    $limit = (int)$_GET['limit'];
    $db = Db::get_instance();

    $result = $db->row("SELECT * FROM `goods` LIMIT $limit,4");

    echo json_encode(["goods" => $result]);
    return;
}