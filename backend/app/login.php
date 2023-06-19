<?php

include './config.php';

if(isset($_GET['user']) && isset($_GET['password'])) {
    $stmt = $pdo->prepare("SELECT name, password FROM fe_users WHERE name=:name AND password=:password");
    $stmt->execute(['name' => $_GET['user'], 'password' => $_GET['password']]);
    $user = $stmt->fetch();

    if($user) {
        $data = [
            'login' => 'success'
        ];
    } else {
        $data = [
            'login' => 'fail',
            'reason' => 'User not found or password does not match'
        ];
    }
} else {
    $data = [
        'login' => 'fail',
        'reason' => 'Please fill out both fields'
    ];
}

header("access-control-allow-origin: *");
header("Content-Type: application/json");
echo json_encode($data);
exit();