<?php

function addUser(PDO $pdo, string $username, string $email, string $password):bool
{
    $query = $pdo->prepare("INSERT INTO `user` (`email`, `password`, `username`) VALUES (:email, :password, :username)");

    $password = password_hash($password, PASSWORD_DEFAULT);

    $query->bindValue(':email', $email);
    $query->bindValue(':username', $username);
    $query->bindValue(':password', $password);

    return $query->execute();
}

function verifyUser(array $user): array
{
    $errors = [];

    if (isset($user["username"])) {
        if ($user["username"] === "") {
            $errors["username"] = "Le champ pseudo ne doit pas être vide";
        }
    } else {
        $errors["username"] = "Il manque le champ username";
    }

    return $errors;
}