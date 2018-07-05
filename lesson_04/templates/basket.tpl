<div class="my_basket">
    <h1>Ваша корзина</h1>
    <table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<td>№</td><td>Наименование</td><td>Количество</td><td>Цена</td><td></td>
			</tr>
				{{BASKET_CONTENT}}
			<tr>
				<td colspan="5">Итого товаров на сумму: {{AMOUNT}} рублей.</td>
			</tr>
			
		</table>
		<br>
		<form id="order" action="/order/" method="POST">
			<p>Укажите дополнительную информацию для оформленя заказа</p>
			Ваше имя<br>
			<input type="text" name="name"><br><br>
			Телефон<br>
			<input required type="text" name="phone"><br><br>
			Адрес доставки<br>
			<input type="text" name="adres"><br><br>
			<input type="submit" class='add-to-basket' value="Оформить заказ">
		</form>
		
</div>