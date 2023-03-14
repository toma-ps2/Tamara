<?php

$arr = [
    'files'=>[
        'name'=>["0-03-13-23-15-51-54.zip","slider.zip"],
        'tmp_name'=>["C:\OpenServer\userdata\temp\upload\php8C75.tmp","C:\OpenServer\userdata\temp\upload\php8C76.tmp"]
    ],
    'year'=>2023,
    'data'=>[1,2,3,4,5]
];


$new_arr = [
    [
        'name'=>'0-03-13-23-15-51-54.zip',
        'tmp_name'=>'C:\OpenServer\userdata\temp\upload\php8C75.tmp'
    ],
    [
        'name'=>'slider.zip',
        'tmp_name'=>'C:\OpenServer\userdata\temp\upload\php8C76.tmp'
    ]
];

echo '<pre>';
//var_dump($arr);

echo '<pre>';
var_dump($arr['files']['name'][1]);