<?php
/*
 * подключение к файлу config.php и через него подключение всех файлов из папки engine
 * */
require_once('../config/config.php');

session_start(); // начало сессии

// формирование адреса который будет показываться в адресной строке
//получаем URL запроса к сайту и разбиваем его в массив url_array
$url_array = explode("/", $_SERVER['REQUEST_URI']);

$page_name = "index";
if($url_array[1] != "")
	$page_name = $url_array[1];

$action = "";
if($url_array[2] != "")
    $action = $url_array[2];

//подготовка переменных с помощью функции prepareVariables описана в файле с функциями - function.lib.php
//в нее передаем имя страницы, переменные для которой нужно подготовить
$variables = prepareVariables($page_name, $action);

//рендер страницы с помощью функции rengerPage она описана в файле формирования страницы - page.lib.php
//входные данные имя страницы и ассоциотивный массив переменных, который мы создали в предыдущем шаге
echo renderPage($page_name, $variables);
