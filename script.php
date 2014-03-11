<?php

include_once("connect.php");
include_once("ping.php");

//$i = 1;
while(1){
  for ($i=1; $i <= 4 ; $i++) {   //$i = 表示行數
    $sql = "SELECT  *  FROM ping WHERE num =  '" . $i . "'";
    $Result = mysql_query($sql) or die ("sql 錯誤".mysql_error());
    $row = mysql_fetch_array($Result);
    $sql = "UPDATE ping SET status = '" . r_ping($row["ip"],5) . "' WHERE num = '" . $i . "'";
    $Result = mysql_query($sql) or die ("sql 錯誤".mysql_error());
  }
  Sleep(5);
}
?>