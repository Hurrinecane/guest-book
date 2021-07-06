<?php
require_once 'include/configs.php';
require_once 'include/functions.php';

$header = 'Location: /?message=';

if (isset($_POST['g-recaptcha-response'])) $captcha_response = $_POST['g-recaptcha-response'];
else die('На форме нет капчи! Обратитесь к администратору!');

$url = 'https://www.google.com/recaptcha/api/siteverify';
global $secret;
$params = [
    'secret' => $secret,
    'response' => $captcha_response,
    'remoteip' => $_SERVER['REMOTE_ADDR']
];
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

$response = curl_exec($ch);
if (!empty($response)) $decoded_response = json_decode($response);

$success = false;

if ($decoded_response && $decoded_response->success) {
    $success = $decoded_response->success;
}

if ($success) {

    global $link;
    if (isset($_POST["Name"]))
        $name =  mysqli_real_escape_string($link, trim(strip_tags($_POST["Name"])));
    if (isset($_POST["E-mail"]))
        $email = mysqli_real_escape_string($link, trim(strip_tags($_POST["E-mail"])));
    if (isset($_POST["Site"]))
        $site = mysqli_real_escape_string($link, trim(strip_tags($_POST["Site"])));
    if (isset($_POST["Text"]))
        $text = mysqli_real_escape_string($link, trim(strip_tags($_POST["Text"])));

    $ip = getIp();

    $user_agent = get_user_agent();


    $sql = "INSERT INTO `messages` (`Name`, `E-mail`, `Site`, `Text`, `IP`, `USER_AGENT`) 
            VALUES ('$name', '$email', '$site', '$text', '$ip', '$user_agent')";
    $result = mysqli_query($link, $sql);

    if ($result)
        $header .= 'added';
    else
        $header .= 'error';
    header($header);
} else   header($header .= 'error');
