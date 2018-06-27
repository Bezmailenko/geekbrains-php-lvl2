<?php

abstract class Products
{
    protected $idProduct;
    protected $title;
    protected $price;
    protected $totalPrice;

    public function __construct($idProduct, $title, $price)
    {
        $this->idProduct = $idProduct;
        $this->title = $title;
        $this->price = $price;
    }

    abstract protected function calculateTotalPrice();
    abstract public function render();




}