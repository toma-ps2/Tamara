<?php
    // echo __DIR__;
    // получили время изменения файла в timestamp формате
    $version = filemtime(__DIR__.'\search.js');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script defer src="search.js?v=<?=$version?>"></script>
</head>
<body>
    <header></header>