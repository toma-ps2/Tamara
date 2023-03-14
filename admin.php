<?php

?>
<link rel="stylesheet" href="css/panel.css">
<script defer src="js/panel.js"></script>
<form id="product" action="handler.php" method="POST" urldecode="x-www-form-urlencoded">
    <input type="text" name="name" placeholder="имя товара">
    <input type="text" name="article" placeholder="артикул">
    <input type="text" name="description" placeholder="описание">
    <input type="number" name="price" placeholder="цена">
    <input type="number" name="count" placeholder="количество">
    <input type="file" name="files[]" multiple="multiple">
    <input class="d-none" type="text" name="action" value="add-product">
    <input type="submit" value="Добавить товар">
</form>