<?php

//Константы ошибок
define('ERROR_NOT_FOUND', 1);
define('ERROR_TEMPLATE_EMPTY', 2);

/**
 * Подготовка переменных для разных страниц
 * @param $page_name
 * @return array
 */
function prepareVariables($page_name, $action = ''){
    $vars["title"] = SITE_TITLE;
	
    switch ($page_name){

        case "goods":
            if ($action=="get") {
                getMyGoods();
                exit();
            }

            if ($action=="add") {
                addGoods();
                exit();
            }
            break;
		
        case "basket":
			if ($action=="delete") {
				$id_good=(int)$_POST["id_good"];
				DeleteFromBasket($id_good);
			}

            if ($action=="get") {
//                $id_good=(int)$_POST["id_good"];
                getMyBasket();
                 exit();
            }

			if ($action=="buy") {
				$id_good=(int)$_POST["id_good"];
				$amount=(int)$_POST["amount"];
				AddToBasket($id_good, $amount);
			}

            if ($action=="change") {
                $id_good=(int)$_POST["id_good"];
                $amount=(int)$_POST["amount"];
                $sign = $_POST["sign"];
                changeBasket($id_good, $sign, $amount);
            }
        break;

        case "reviews":
            if ($action=="add") {
                $name = strip_tags($_POST['name']);
                $text = strip_tags($_POST['text']);
                $date = $_POST['date'];

                AddReviews($name, $text, $date);
                header("Location: /single_page/");
            }
            break;

        case "product_page":
			$vars["goods"]=prepareCataloguePage($page_name);
            break;

        case "single_page":
            $content = getProductContent($_GET['idx']);
            $vars["name"] = $content["name"];
            $vars_tabs["price"] = $content["price"];
            $vars_tabs["description"] = $content["description"];
            $vars_tabs["reviews"] = getMyReviews();
            $vars_tabs["reviews_form"] = getMyReviewsForm();
            $vars["tabs_content"] = renderPage("single_page_tabs_block", $vars_tabs);
            $vars["goods"]=prepareCataloguePage($page_name);
            break;
    }

    $vars["header"] = renderPage("header_block");
	$vars["footer"] = renderPage("footer_block");


    return $vars;
}