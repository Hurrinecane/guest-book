<?php

function get_messages($sortType, $page)
{
    global $link;
    $page *=25;
    switch ($sortType) {
        case 'NameUp':
            $sql = "SELECT * FROM `messages` ORDER BY `Name`";
            break;
        case 'NameDown':
            $sql = "SELECT * FROM `messages` ORDER BY `Name` DESC";
            break;
        case 'EmailUp':
            $sql = "SELECT * FROM `messages` ORDER BY `E-mail`";
            break;
        case 'EmailDown':
            $sql = "SELECT * FROM `messages` ORDER BY `E-mail` DESC";
            break;
        case 'TimeUp':
            $sql = "SELECT * FROM `messages` ORDER BY `Time`";
            break;
        case 'TimeDown':
        default:
            $sql = "SELECT * FROM `messages` ORDER BY `Time` DESC LIMIT $page, 25";
            break;
    }
    $result = mysqli_query($link, $sql);

    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $data;
}

function getIp()
{
    $keys = [
        'HTTP_CLIENT_IP',
        'HTTP_X_FORWARDED_FOR',
        'REMOTE_ADDR'
    ];
    foreach ($keys as $key) {
        if (!empty($_SERVER[$key])) {
            $ip = trim(end(explode(',', $_SERVER[$key])));
            if (filter_var($ip, FILTER_VALIDATE_IP)) {
                return $ip;
            }
        }
    }
}

function get_user_agent()
{
    return $_SERVER['HTTP_USER_AGENT'];
}
