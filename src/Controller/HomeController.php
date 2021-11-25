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

class HomeController extends AbstractController
{
    /**
     * Display home page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index()
    {
        $musics = new MusicManager();
        $musicRand = $musics->twoRandomMusic();

        $sing1 = [
            'title' => $musicRand[0]->snippet->title,
            'video_id' => "https://www.youtube.com/embed/" . $musicRand[0]->snippet->resourceId->videoId
        ];

        $sing2 = [
            'title' => $musicRand[1]->snippet->title,
            'video_id' => "https://www.youtube.com/embed/" . $musicRand[1]->snippet->resourceId->videoId
        ];
        return $this->twig->render('Home/index.html.twig', ["musics" => [$sing1, $sing2]]);
    }
}
