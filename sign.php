<h1>Регистрация</h1>
<form action="handler.php" method="POST">
    <input name="login" type="text" placeholder="введите логин ил email"><br>
    <input name="p1" type="password" placeholder="введите пароль"><br>
    <input name="p2" type="password" placeholder="подтвердите пароль"><br>
    <input name="email" type="email" placeholder="введите email"><br>
    <input name="age" type="range"><br>
    <input type="file" multiple="[]"><br>
    <input hidden name="action" value="registration" type="text">
    <input type="submit" value="Sign in">
</form>

<h1>Авторизация</h1>
<form action="handler.php" method="POST">
    <input name="login" type="text" placeholder="введите логин ил email"><br>
    <input name="p1" type="password" placeholder="введите пароль"><br>
    <input name="email" type="email" placeholder="введите email"><br>
    <input hidden name="action" value="authorization" type="text">
    <input type="submit" value="Sign up">
</form>