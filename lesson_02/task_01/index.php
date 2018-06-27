<?php
require_once "engine/ProductHandler.php";
require_once "engine/Products.php";
require_once "engine/PhysicalProduct.php";
require_once "engine/DigitalProduct.php";
require_once "engine/WeightProduct.php";

$getProduct = new ProductHandler;

$getProduct->addProduct(new PhysicalProduct(1, "Product 1", 100, 2));
$getProduct->addProduct(new DigitalProduct(2, "Product 1-digital", 50, 3));
$getProduct->addProduct(new WeightProduct(3, "Product 2", 150, 3.5));
$getProduct->addProduct(new WeightProduct(4, "Product 3", 100, 16));
$getProduct->addProduct(new WeightProduct(5, "Product 4", 100, 27));
?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Сводка продаж</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php $getProduct->showHistorySales();?>
</body>
</html>



