<?php
namespace app\frontend\controllers;

use app\frontend\models\Basket;
use system\components\Controller;


class BasketController extends Controller {

    public function actionBuy() {
        $id_session = $_SESSION['id'];
        $id_good = $_POST['id_good'];
        $count = 1;
        $price = $_POST['amount'];

        $id_user = NULL;
        $amount = $price;

        $id_order = NULL;
        $is_in_order = 1;

        $basketUser = Basket::findParam($id_session, $id_good);

        foreach ($basketUser as $item) {
            if ($item->id_good == $id_good) {
               $result = Basket::upd($price, $id_session, $id_good);
            } else {
                $newBasket = new Basket();

                $newBasket->id_good = $id_good;
                $newBasket->price = $price;
                $newBasket->is_in_order = $is_in_order;
                $newBasket->id_session = $id_session;
                $newBasket->col = $count;
                $newBasket->amount = $amount;

                $newBasket->save();
            }
        }

    }

    public function actionChange() {

    }

    public function actionDelete() {

    }

    public function actionGet() {
        $table = 'goods';
        $column = 'id_good';

        $basket = Basket::findJoin($table, $column);

        echo json_encode(["basket" => $basket]);
    }
}