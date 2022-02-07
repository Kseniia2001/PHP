<?php
include "db.php";
// define("ROOT",$_SERVER['DOCUMENT_ROOT']);
// define("IMG_SMALL",ROOT."/php/lesson_6/shop/img/img_small/");
// // define("IMG_BIG",ROOT."/php/lesson_5/img/img_big/");
// var_dump(ROOT,IMG_SMALL);
$dbc=mysqli_connect('localhost','root','','products');
$message=[
    'ok'=>'Сообщение отправлено',
    'delete'=>'Сообщение удалено',
    'error'=>'Error'
 ];
 if($_GET['action']=='add'){
    $nameUser=strip_tags(htmlspecialchars(mysqli_real_escape_string($dbc,$_POST['nameUser'])));
    $commentUser=strip_tags(htmlspecialchars(mysqli_real_escape_string($dbc,$_POST['comment'])));
    $sql="INSERT INTO comments(name,comment) VALUES ('{$nameUser}','{$commentUser}')";
    mysqli_query($dbc,$sql);
    header('Location: index.php?message=ok');
    die();
}

$comments=mysqli_query($dbc,"SELECT * FROM comments ORDER BY id DESC ");
$result=mysqli_query($db,"SELECT * FROM `products`");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="heading">Shop</header>
    <div class="wrap">
<?php while($row=mysqli_fetch_assoc($result)):?>
        <div class="product">
       <h1><?= $row['title']?></h1>
       <a href="product.php?id=<?= $row['id'] ?>"><img src="/img/img_small/<?= $row['filename'] ?>" alt="" width="100px"></a>
       <br>
       <button class="btn">Купить</button>
       <img src="eye.png" alt="" width="20px"><?=$row['view']?>
       </div>
      
      <?php endwhile;?> 
      </div>
         <form action="?action=add" method="post">
           <input type="text" placeholder="name" name="nameUser">
           <input type="text" placeholder="review" name="comment">
           <input type="submit" value="submit">
       </form>
      
     <h2>Отзывы</h2>
     
       <?php foreach($comments as $comment):?>
        <p><?=$comment['name']?></p>
        <p><?=$comment['comment']?></p>
      <?php endforeach;?>
</body>
</html>