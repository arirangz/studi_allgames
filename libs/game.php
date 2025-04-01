<?php


function getAllGames():array
{
    $games= [
        ["name" => "Spider-Man 2", "description" => "Incarnez le célèbre super-héros dans une nouvelle aventure pleine d'action. Balancez-vous à travers la ville..."],
        ["name" => "Like a Dragon: Infinite Wealth", "description" => "Explorez un monde ouvert rempli de possibilités et de défis. Incarnez un héros et affrontez..."],
        ["name" => "Starfield", "description" => "Partez à la découverte des étoiles dans ce jeu de rôle et d'action futuriste. Explorez des planètes inconnues, interagissez avec des factions spatiales..."],
    ];
    return $games;
}

function getGame(int $id):array
{
    $games = getAllGames();

    return $games[$id];
}