<?php
// Весовой товар
class WeightProduct extends Products {
    private $weight;// вес
    private $finalPrice;// финальная стоимость
    private $discount;// скидка
    private $discountShow = '';// скидка которая будет отображаться

    public function __construct($idProduct, $title, $price, $weight) {
        parent::__construct($idProduct, $title, $price);

        $this->weight = $weight;
        $this->calculateTotalPrice();
    }

    public function render() {
        echo "<div class='goods__item'>
                <div class='goods__title'>$this->title (весовой товар)</div>
                <div class='goods__count'>Продано: $this->weight кг</div>
                <div class='goods__price'>Цена: $this->price руб/кг.</div>
                <div class='goods__final-price'>Финальная стоимость $this->discountShow: $this->finalPrice руб/кг.</div>
                <div class='goods__total-price'>Итого: $this->totalPrice руб.</div>
            </div>";
    }

    protected function calculateTotalPrice() {
        if ($this->weight > 5 and $this->weight <= 25) {
            $this->discount = 10;
        }

        if ($this->weight > 25 and $this->weight <= 50) {
            $this->discount = 20;
        }

        if ($this->weight > 50) {
            $this->discount = 25;
        }
        if ($this->weight <= 5) {
            $this->discountShow = '';
        }
        else {
            $this->discountShow = '(-' . $this->discount. '%)';
        }

        $this->finalPrice = $this->price*(100 - $this->discount)/100;
        $this->totalPrice = $this->finalPrice * $this->weight;
    }
}