<?php

// Вывод продаж
class ProductHandler {
    private $goods = [];

    public function showHistorySales() {
        echo "<div class='container'><h3>Сводка продаж</h3>";

        foreach ($this->goods as $value) {
            $value->render();
        }

        echo "</div>";
    }

    public function addProduct(Products $value) {
        $this->goods[] = $value;
    }
}