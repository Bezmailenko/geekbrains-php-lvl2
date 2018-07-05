<?php
define('SITE_ROOT', "../"); //путь к корню сайта
define('WWW_ROOT', SITE_ROOT . '/public'); //путь к папке паблик

/* DB config */ // данные для подключения к базе данных
function config_db() {
    return [
        'host' => 'localhost',
        'db_name' => 'brand',
        'user' => 'root',
        'pass' => '',
        'charset' => 'utf-8'
    ];
}

define('DATA_DIR', SITE_ROOT . 'data'); // путь к папке data
define('LIB_DIR', SITE_ROOT . 'engine'); // путь к папке engine (папка с логикой сайта)
define('TPL_DIR', SITE_ROOT . 'templates'); // путь к папке template (папка с шаблонами для страниц сайта)
define('TRAITS_DIR', LIB_DIR . '/traits');

define('SALT2', 'awOIHO@EN@Oine q2enq2kbkb'); // соль - строка для добавления к хэшу пароля, для большей безопастности

define('SITE_TITLE', 'BRAND'); // заголовок сайта

require_once(LIB_DIR . '/lib_autoload.php'); // подключение к файлу ../engine/lib_autoload.php

