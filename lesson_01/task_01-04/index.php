<?php

class Goods {
    public $id;
    public $name;
    public $price;
    public $image;

    function __construct($id, $name, $price, $image){
        $this->id = $id;
        $this->name = $name;
        $this->price = $price;
        $this->image = $image;
    }
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
$product = new Goods(1, 'Adidas sneakers for men', 300, 'img/adidas_1.png');

$product->view();
?>
</body>
</html>


