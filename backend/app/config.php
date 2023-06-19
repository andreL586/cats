<?php

$host = "mysql";
$dbname = "shop";
$charset = "utf8mb4";
$port = "3306";

$pdo = new PDO(
    dsn: "mysql:host=$host;dbname=$dbname;charset=$charset;port=$port",
    username: "root",
    password: "password-password",
    );