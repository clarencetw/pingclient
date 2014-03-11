<?php
//r_ping(host,timeout)
function r_ping($host,$timeout){
	$_exec = "ping -w $timeout -c 1 $host";
	$view = exec($_exec);
	//echo $view;
	if($view){
		$temp = explode(" ", $view);
		$trip = explode("/", $temp[3]);
		return "Good round trip:$trip[0]";
	}else{
		return "Bed";
	}
}
?>