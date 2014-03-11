<?php
$server = "localhost";
$dbname = "";
$user   = "";
$passwd = "";
mysql_connect($server, $user, $passwd) or die("資料庫連線 錯誤");
mysql_query("SET NAMES utf8");
mysql_select_db($dbname) or die("資料庫連線 錯誤");
?>