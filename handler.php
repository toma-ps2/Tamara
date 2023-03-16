<?php
session_start();
//echo '<pre>';
// $_POST - массив - содержит в себе информацию о POST запросе

if (isset($_GET['logout']))
{
    // перезаписываем сессию
    $_SESSION = [];
    // очищаем куку для сесси
    setcookie(session_name(),'',time()-999999);
    // уничтожаем сессию
    session_destroy();
    // перенаправляем пользователя на главную странчку
    header('Location: /shop2023/sign.php',true,301);
    exit;
}


if (isset($_POST['action']))
{
    require('db.php');
    // $action = search
    $action = $_POST['action'] ?? '';
    $text = $_POST['text'] ?? ''; 

    switch($action)
    {
        case 'add-product':
                // посмотреть список входящих файлов!
                echo '<pre>';
                // массив с файлами
                $files = [];
                foreach($_FILES['files']['name'] as $key => $value )
                {
                    foreach($_FILES['files'] as $name => $arr)
                    {
                        $files[$key][$name]= $arr[$key];  
                    }
                }

                //var_dump($files);

        break;

        case 'search':
            // запускаем функция поиска
            search($text);
        break;

        case 'registration':
            reg();
        break;

        case 'authorization':
            auth();
        break;

        default:
            die('Неизвестный параметр');
        break;
    }
}

function search($text)
{
    // переменная содержит подключение к бд
    $dbh = $GLOBALS['dbh'];
    // формируем запрос
    $sql = "SELECT id,name FROM `city` WHERE Name like '$text%' ORDER BY Name ASC LIMIT 0,5 ";
    // отправляем запрос в базу
    $result = $dbh->query($sql)->fetchAll();

    // конвертируем массив в json
    // и выводим содержимое в виде строки
    //echo json_encode($result);

    foreach($result as $key=>$arr)
    {
        // echo "<li><a href='product.php?id=".$arr['id']."'>".$arr['name']."</a></li>";
        printf("<li><a href='product.php?id=%s'>%s</a></li>",$arr['id'],$arr['name']);
    }
}

function reg()
{
    extract($_POST);

    if ($p1 !== $p2) die('пароли не совпадают!');

    // переменная содержит подключение к бд
    $dbh = $GLOBALS['dbh'];
    // формируем select запрос
    $sql = "INSERT INTO users (login,password,email,age) VALUES ('$login','$p1','$email',$age) "; 
    // отправляем запрос в базу и получаем ответ
    $result = $dbh->query($sql);

    $response = ( $dbh->lastInsertId() ) ? 'Успешно зарегистрировались!' : 'Ошибка!' ;
    echo $response;
}

function auth()
{
    extract($_POST);
    //echo validationStr($login);
  
    // переменная содержит подключение к бд
    $dbh = $GLOBALS['dbh'];
    $sql = "SELECT * FROM users WHERE (login='$login' or email='$email') AND password = '$p1' ";
    // query() - отправляем запрос
    // fetchAll() - получаем ответ 
    $result = $dbh->query($sql)->fetchAll();
    // если пользователь был найден
    if ($result)
    {
        // положили данные по ключу USER в сессию
        $_SESSION['USER'] = current($result);
        // перенаправляет пользователя на страницу
        header('Location: /shop2023',true,301);
        exit;
    } 
    else
    {
        die('Неверный логин или пароль!');
    }

}



function validationStr($str)
{
    // эканирование символов \
    return str_replace(['#','\'','"','-','*'],'',$str); 
}