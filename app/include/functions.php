<?php

function get_messages($sortType, $page)
{
    global $link;
    mysqli_real_escape_string($link, trim(strip_tags($page *=25)));
    mysqli_real_escape_string($link, trim(strip_tags($sortType)));
    switch ($sortType) {
        case 'NameUp':
            $sql = "SELECT * FROM `messages` ORDER BY `Name` LIMIT $page, 25";
            break;
        case 'NameDown':
            $sql = "SELECT * FROM `messages` ORDER BY `Name` DESC LIMIT $page, 25";
            break;
        case 'EmailUp':
            $sql = "SELECT * FROM `messages` ORDER BY `E-mail` LIMIT $page, 25";
            break;
        case 'EmailDown':
            $sql = "SELECT * FROM `messages` ORDER BY `E-mail` DESC LIMIT $page, 25";
            break;
        case 'TimeUp':
            $sql = "SELECT * FROM `messages` ORDER BY `Time` LIMIT $page, 25";
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
function get_ip_list()
{
	
}

function getIp()
{
    $list = array();
	if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
		$ip = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
		$list = array_merge($list, $ip);
	} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		$ip = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
		$list = array_merge($list, $ip);
	} elseif (!empty($_SERVER['REMOTE_ADDR'])) {
		$list[] = $_SERVER['REMOTE_ADDR'];
	}
	
	$list = array_unique($list);
	return implode(',', $list);
}

function get_user_agent()
{
    return $_SERVER['HTTP_USER_AGENT'];
}
