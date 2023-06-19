<?php

include './config.php';

$products = $pdo->query("SELECT * FROM shop_products");

header("access-control-allow-origin: *");
header("Content-Type: application/json");
echo json_encode($products->fetchAll(PDO::FETCH_ASSOC));
exit();