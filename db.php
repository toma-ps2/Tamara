<?php
try {

	$option = [
		// по умолчанию данные возвращать в виде ассоциативного массива
		PDO::ATTR_DEFAULT_FETCH_MODE =>PDO::FETCH_ASSOC,
		// кодировка для работы с БД
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
	];

	$dbh = new PDO('mysql:dbname=nordic2023;host=localhost', 'root', '',$option);

} catch (PDOException $e) {
	die($e->getMessage());
}

