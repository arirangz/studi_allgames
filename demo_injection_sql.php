<?php

// Exemple à ne pas suivre car faille de type injection SQL
$pdo = new PDO('mysql:dbname=studi_allgames;host=localhost;charset=utf8mb4', 'root', '');
$id = $_GET['id'];
$query = $pdo->query("SELECT * FROM user WHERE id = $id");
$user = $query->fetch(PDO::FETCH_ASSOC);

var_dump($user);
?>
