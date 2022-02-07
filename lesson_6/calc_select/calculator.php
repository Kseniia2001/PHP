<?php
function plus($a, $b)
{
    return $a + $b;
}
function minus($a, $b)
{
    return $a - $b;
}
function multy($a, $b)
{
    return $a * $b;
}
function division($a, $b)
{
    if ($b != 0) {
        return $a / $b;
    } else echo "error";
}
function mathOperation($a, $b, $operation)
{
    switch ($operation) {
        case '+':
            return plus($a, $b);
            break;
        case '-':
            return minus($a, $b);
            break;
        case '*':
            return multy($a, $b);
            break;
        case '/':
            return division($a, $b);
            break;
    }
}
$val1 = 0;
$val2 = 0;
$result = 0;
if (!empty($_GET)) {
    $operation = $_GET['operation'];
    $val1 = $_GET['val_1'];
    $val2 = $_GET['val_2'];
    $result = mathOperation($val1, $val2, $operation);
}
