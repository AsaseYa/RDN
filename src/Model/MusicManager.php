<?php

namespace App\Model;

class MusicManager extends AbstractManager
{
    public function selectAllLimit2()
        {
            $query = "SELECT *
            FROM music
            ORDER BY rand()
            LIMIT 2";;
    
            return $this->pdo->query($query)->fetchAll();
        }
    }
