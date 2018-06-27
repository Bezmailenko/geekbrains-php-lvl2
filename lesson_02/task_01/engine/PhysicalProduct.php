<?php
// Штучный товар
class PhysicalProduct extends Products {
    private $count;

    public function __construct($idProduct, $title, $price, $count) {
        parent::__construct($idProduct, $title, $price);

        $this->count = $count;
        $this->calculateTotalPrice();
    }

    public function render() {
        echo "<div class='goods__item'>
                <div class='goods__title'>$this->title (штучный товар)</div>
                <div class='goods__count'>Продано: $this->count шт</div>
                <div class='goods__price'>Цена: $this->price руб/шт</div>
                <div class='goods__total-price'>Итого: $this->totalPrice руб.</div>
            </div>";
    }

    protected function calculateTotalPrice() {
        $this->totalPrice = $this->count * $this->price;
    }
}