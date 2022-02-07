<?php
include "calculator.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="" method="get">
    <input type="text" name="val_1" value="<?=$val1?>">
    <input type="submit" name="operation" value="+">
    <input type="submit"  name="operation" value="-">
    <input type="submit" name="operation" value="/">
    <input type="submit" name="operation" value="*">
    <input type="text" name="val_2" value="<?=$val2?>">
    <span>=</span>
    <input type="text" name="result" value="<?=$result?>">
    </form>
</body>
</html>