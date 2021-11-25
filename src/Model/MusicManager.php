<?php

namespace App\Model;

class MusicManager
{
    public const MUSICCHANNELID = 'UC-9-kyTW8ZkZNDHQJ6FgpwQ';
    public const API_KEY = 'AIzaSyCwride9Gnm2eFVmjwZebjcTxhShIMWEf8';
    public array $musicQuery;

    public function __construct()
    {
        $apiData = file_get_contents('https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=' .
            self::MUSICCHANNELID . '&maxResults=1000&key=' . self::API_KEY . '');

        if ($apiData) {
            $videoList = json_decode($apiData);
        } else {
            echo 'Invalid API key or channel ID.';
        }
        $this->musicQuery = [$videoList->items[rand(0, 49)]->id->playlistId, $videoList->items[rand(0, 49)]->id->playlistId];
    }

    public function twoRandomMusic()
    {
        $apiDataMusic1 = file_get_contents(  'https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=' . $this->musicQuery[0] . '&key=' . self::API_KEY . '');
        $apiDataMusic2 = file_get_contents(  'https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=' . $this->musicQuery[1] . '&key=' . self::API_KEY . '');


        $videoPlaylist1 = json_decode($apiDataMusic1);
        $videoPlaylist2 = json_decode($apiDataMusic2);
        return [$videoPlaylist1->items[rand(0, count($videoPlaylist1->items)-1)], $videoPlaylist2->items[rand(0, count($videoPlaylist2->items)-1)]];
    }
}