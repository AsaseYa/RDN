<?php

namespace App\Model;

class MusicManager extends AbstractManager
{
    public const TABLE = 'music';

    public function selectAllLimit2()
    {
        $query = "SELECT *
            FROM music
            ORDER BY rand()
            LIMIT 2";;

        return $this->pdo->query($query)->fetchAll();
    }

    public function insertVote($id)
    {
        $music = new MusicManager();
        $points = $music->selectOneById($id);
        $point = $points['points'] + 1;
        if ($points) {
            $query = 'UPDATE ' . self::TABLE . " SET points = {$point} WHERE id={$id}";
            $statement = $this->pdo->exec($query);
        }
    }
}


