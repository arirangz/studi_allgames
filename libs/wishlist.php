<?php

function addToWishlist(PDO $pdo, int $gameId, int $userId):bool
{
    $sql = "INSERT INTO wishlist (game_id, user_id, created_at)
            VALUE (:gameId, :userId, NOW())";
    $query = $pdo->prepare($sql);
    $query->bindValue(':gameId', $gameId, PDO::PARAM_INT);
    $query->bindValue(':userId', $userId, PDO::PARAM_INT);

    return $query->execute();
}

function removeFromWishlist(PDO $pdo, int $gameId, int $userId):bool
{
    $sql = "DELETE FROM `wishlist` WHERE game_id = :gameId AND user_id = :userId";
    $query = $pdo->prepare($sql);
    $query->bindValue(':gameId', $gameId, PDO::PARAM_INT);
    $query->bindValue(':userId', $userId, PDO::PARAM_INT);

    return $query->execute();
}

function getWishlistItemByGameIdAndUserId(PDO $pdo, int $gameId, int $userId):array|bool
{
    $sql = "SELECT user_id, game_id
    FROM wishlist
    WHERE game_id = :gameId AND user_id = :userId";
    $query = $pdo->prepare($sql);
    $query->bindValue(":gameId", $gameId, PDO::PARAM_INT);
    $query->bindValue(":userId", $userId, PDO::PARAM_INT);
    $query->execute();
    
    return $query->fetch(PDO::FETCH_ASSOC);
}

function getWishlistItemsByUserId(PDO $pdo, int $userId):array
{
    $sql = "SELECT g.id, g.name, g.description, g.release_date
    FROM wishlist w
    LEFT JOIN game g ON g.id = w.game_id
    WHERE w.user_id = :userId";

    $query = $pdo->prepare($sql);
    $query->bindValue(":userId", $userId, PDO::PARAM_INT);
    $query->execute();
    
    return $query->fetchAll(PDO::FETCH_ASSOC);
}