<?php
// comment
// подключаем файл с бд
require_once('db.php');
// comment
require_once('header.php');
require_once('search.php');
// comment
require_once('footer.php');



// формируем запрос
$sql = 'SELECT name,code FROM country';
// query() - отправляет запрос в бд
//$result = $dbh->query($sql);

// var_dump() - распечатать содерджимое обьекта,массива,строки и.т.д
// fetchAll() - Выбирает оставшиеся строки из набора результатов
// https://www.php.net/manual/ru/pdostatement.fetchall.php

//echo '<pre>';
//var_dump( $result->fetchAll(PDO::FETCH_ASSOC) );

