<?php


function getAllGames(PDO $pdo, ?int $limit = null):array
{
    $sql = "SELECT g.id, g.name, g.description, g.release_date 
            FROM game g
            ORDER BY g.release_date DESC";
    if ($limit) {
        $sql .= " LIMIT :limit";
    }
    $query = $pdo->prepare($sql);
    if ($limit) {
        $query->bindValue(':limit', $limit, PDO::PARAM_INT);
    }
    $query->execute();
    
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function getGame(PDO $pdo, int $id):array|bool
{
    $sql = "SELECT g.id, g.name, g.description, g.release_date, e.name as editor_name
    FROM game g
    LEFT JOIN editor e ON e.id = g.editor_id
    WHERE g.id = :id";
    $query = $pdo->prepare($sql);
    $query->bindValue(":id", $id, PDO::PARAM_INT);
    $query->execute();
    
    return $query->fetch(PDO::FETCH_ASSOC);
}