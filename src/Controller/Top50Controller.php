<?php

/**
 * Created by PhpStorm.
 * User: aurelwcs
 * Date: 08/04/19
 * Time: 18:40
 */

namespace App\Controller;

use App\Model\MusicManager;
use App\Model\NewMusicModel;
use Google_Client;
use Google_Service_YouTube;

class Top50Controller extends AbstractController
{
    public function index() {
        $itemManager = new MusicManager();
        $musics = $itemManager->selectAll50Limit2();

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $_SESSION['validateMusique'][] = [
                'title' => $_POST['title'],
                'url' => $_POST['url']
            ];
            $id = $_POST["id"];
            $new = new MusicManager();
            $new->insertVote($id);
        }

        return $this->twig->render('Home/top50.html.twig', ["musics" => $musics]);
    }
}