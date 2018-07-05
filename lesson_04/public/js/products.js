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
    // let arr = [];
    // let $goodItemCount = 8;
    // for (let i = 1; i < 20; i++) {
    //     arr[i - 1] = i;
    // }
    //
    // let shuffle = function(array) {
    //     let random = array.map(Math.random);
    //     array.sort(function(a, b) {
    //         return random[a] - random[b];
    //     });
    // };
    //
    // shuffle(arr);
    //
    //  for (let j = 0; j < $goodItemCount; j++) {
    //      let $goodItemId = arr[j];
    //      new Good (String($goodItemId))
    //         .getGoods($goods);
    // }
});