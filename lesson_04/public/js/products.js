$(document).ready(function () {
    // Рендеринг товаров
    let $goods = $('.products-list');
    let $url = "/goods/get/";
    let $url1 = "/goods/add/";

    let $products = new Good($url);
    $products.getGoods($goods);
    let $productAdd = new Good($url1);

    $(document).on('click', '.products-btn', function () {
        let $limit = parseInt($(this).attr('data-limit'));

        $productAdd.addGoods($goods, $limit);

        $(this).attr('data-limit', ($limit+4));
    })
});