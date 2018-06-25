<?php

class Goods {
    public $id;
    public $name;
    public $price;
    public $image;

// Метод для вывода товара
    function view() {
        echo "<div class='product-card'>
                <a href='#' class='product-card__link'>
                    <img class='product-card__img' src='$this->image' alt='Layer'>
                    <h3>$this->name</h3>
                    <p>$$this->price</p>
                </a>
                <div class='product-card__hover product-card__hover-multi'>
                    <button class='buy'>Add to Cart</button>
                    <a href='#' class='product-hover-btn-left'></a>
                    <a href='#' class='product-hover-btn-right'></a>
                </div>
              </div>";
    }
}
?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Карточка товара</title>

<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/style1.css" type="text/css" />
</head>
<body>
<?php
$a = new Goods();
$a->id = 1;
$a->name = 'Adidas sneakers for men';
$a->price = 300;
$a->image = 'img/adidas_1.png';
$a->view();
?>
</body>
</html>


