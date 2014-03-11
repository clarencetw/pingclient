<?php

include_once("connect.php");
include_once("ping.php");

$i = $_GET['num'];

$sql = "SELECT  *  FROM ping WHERE num =  '" . $i . "'";
$Result = mysql_query($sql) or die ("sql 錯誤".mysql_error());
$row = mysql_fetch_array($Result);
echo "            <tr>";
echo "<td>" . $row["ip"] . "</td>";
echo "<td>" . $row["status"] . "</td>";
echo "<td>" . $row["utime"] . "</td>";
echo "</tr>\n";

?>