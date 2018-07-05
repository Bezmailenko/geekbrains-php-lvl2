<?php
function AddToOrder($name,$phone,$adres) {
	$id_session=session_id();
	$name=strip_tags(mysqli_real_escape_string(getConnection(),$name));
	$phone=strip_tags(mysqli_real_escape_string(getConnection(),$phone));
	$adres=strip_tags(mysqli_real_escape_string(getConnection(),$adres));
	executeQuery("INSERT INTO `orders` (`session`, `status`, `name`, `phone`, `adres`)
 VALUES ('{$id_session}', '1', '{$name}', '{$phone}', '{$adres}');");
}

function getCountGoodsInBasket() {
	$id_session=session_id();
	$result=getRowResult("SELECT sum(col) as sum FROM `basket` WHERE `session`='{$id_session}'");
return $result["sum"];
}

function getMyBasket() {
	$id_session=session_id();

    $connect = @mysqli_connect("localhost", "root", "", "shop1");
    $result = mysqli_query($connect, "SELECT @i:=@i+1 as number, `goods`.*,`basket`.* FROM `goods`,`basket`,(SELECT @i:=0) as X 
WHERE `goods`.`idx`=`basket`.`id_good` AND `basket`.`session`='{$id_session}'");

    $arr = [];

    while($row = mysqli_fetch_assoc($result)) {
        $arr[] = $row;
    }
     echo json_encode(["basket" => $arr]);
    return;

}

function getBasketButton() {
    $file = file_get_contents(TPL_DIR."/mini_basket_button.tpl");
    return $file;
}
function getSummGoodsInBasket() {
	$id_session=session_id();
	$result=getRowResult("SELECT sum(price*col) as sum FROM `goods`,`basket` 
WHERE `goods`.`idx`=`basket`.`id_good` AND `session`='{$id_session}'");
return $result["sum"];
}

function DeleteFromBasket($id_good) {
    $id_session=session_id();
	executeQuery("DELETE FROM `basket` WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
}

function changeBasket($id_good, $sign, $amount) {
    $id_session=session_id();
    $result=getRowResult("SELECT col FROM `basket` 
	WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
    $col=$result["col"];
    if ($col > 1 and $sign == "minus") {
        executeQuery("UPDATE `basket` SET `col`=`col`- 1 WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
        executeQuery("UPDATE `basket` SET `amount`=`amount`- {$amount} WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
    }

    if ($sign == "plus") {
        executeQuery("UPDATE `basket` SET `col`=`col`+ 1 WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
        executeQuery("UPDATE `basket` SET `amount`=`amount`+ {$amount} WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
    }

}
function AddToBasket($id_good, $amount) {
	$id_session=session_id();

	//Проверим есть ли уже такой товар в корзине
	$result=getRowResult("SELECT col FROM `basket` 
	WHERE `session`='{$id_session}' AND `id_good`={$id_good}");
	$col=$result["col"];

	//если есть увеличим счетчик товара
	if ($col!=null)

		executeQuery("UPDATE `basket` SET `col`=`col`+1, `amount`=`amount`+{$amount} 
		WHERE `session`='{$id_session}' AND `id_good`={$id_good};");
	else	
		//если нет то просто добавим товар в корзину с количеством 1
		executeQuery("INSERT INTO `basket` (`id`, `session`, `id_good`, `col`, `amount`) 
		VALUES (NULL, '{$id_session}', '{$id_good}', 1, '{$amount}')");

}
 
 
 
