<?php
session_start();

$role =$_SESSION['user']['role'];

if($role !=3)
{
    header('Location: /shop2023', true,301);
    exit;
}
    // phpinfo();
    // exit;

    // setcookie('login', 'Admin', 0 или time()+3600  установили на 1 час, '/');

    // $options = [
    //     'name'=>'server',
    //     'cookie_lifetime'=>60,
    //     'gc_maxlifetime'=>30,
    //     // 'gc_divisor'=>1
    // ];
    

    // $_SESSION['profile']=[
    //     'user'=>'Admin',
    //     'balance'=>10000
    // ];

    // var_dump($_SESSION);

?>
<link rel="stylesheet" href="css/panel.css">
<script defer src="js/panel.js"></script>
<h3>Добро пожалоать, <?=$_SESSION['user']['login']?>!</h3>
<a href="handler.php?logout=true">Выход</a>
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

