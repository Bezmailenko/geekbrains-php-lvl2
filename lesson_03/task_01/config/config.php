<?php

/* DB config */ // данные для подключения к базе данных
define('HOST', 'localhost'); //где находится база данных
define('USER', 'root'); // имя пользователя
define('PASS', ''); // пароль
define('DB', 'geek_brains'); // название базы данных

define('TWIG_DIR', 'Twig'); // путь к twig
define('LIB_DIR', 'engine'); // путь к папке engine (папка с логикой сайта)
define('TRAITS_DIR', LIB_DIR . '/traits'); // путь к папке traits

require_once(LIB_DIR . '/lib_autoload.php'); // подключение к файлу ../engine/lib_autoload.php



