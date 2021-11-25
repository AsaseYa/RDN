<?php

namespace App\Model;

class MusicManager
{
    public const MUSICCHANNELID = 'UC-9-kyTW8ZkZNDHQJ6FgpwQ';
    public const API_KEY = 'AIzaSyCwride9Gnm2eFVmjwZebjcTxhShIMWEf8';

    public function pickTwoPlaylist(): array
    {
        $apiData = @file_get_contents('https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=UC-9-kyTW8ZkZNDHQJ6FgpwQ&maxResults=1000&key=' . self::API_KEY . '');
        $videoList = json_decode($apiData);
        return [$videoList->items[rand(0, 49)]->id->playlistId, $videoList->items[rand(0, 49)]->id->playlistId];
    }

    public function twoRandomMusic(): array
    {
        $musicQuery = $this->pickTwoPlaylist();
        $apiDataMusic1 = @file_get_contents('https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=' . $musicQuery[0] . '&key=' . self::API_KEY . '');
        $apiDataMusic2 = @file_get_contents('https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=' . $musicQuery[1] . '&key=' . self::API_KEY . '');


        $videoPlaylist1 = json_decode($apiDataMusic1);
        $videoPlaylist2 = json_decode($apiDataMusic2);
        return [$videoPlaylist1->items[rand(0, count($videoPlaylist1->items) - 1)], $videoPlaylist2->items[rand(0, count($videoPlaylist2->items) - 1)]];
    }

    public function twoRandomMusicByGenre($playlist): array
    {
        $apiDataMusic1 = @file_get_contents(
            'https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=1000&playlistId=' .
            $playlist . '&key=' . self::API_KEY . ''
        );
        $apiDataMusic2 = @file_get_contents(
            'https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=1000&playlistId=' .
            $playlist . '&key=' . self::API_KEY . ''
        );


        $videoPlaylist1 = json_decode($apiDataMusic1);
        $videoPlaylist2 = json_decode($apiDataMusic2);

        echo rand(0, 49) . PHP_EOL;
        echo rand(0, 49);
        var_dump($videoPlaylist1);
        var_dump($videoPlaylist2);

        die();


        return [$videoPlaylist1->items[rand(0, 49)],
            $videoPlaylist2->items[rand(0, 49)]
        ];
    }
}