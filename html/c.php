<?php
$q=$_GET["q"];
$h=$_GET["h"];

$con = mysqli_connect('localhost', 'py', 'py','bar');
if (!$con) {
 die('Could not connect: ' . mysqli_error());
 }
if ($h=="1316"){
 //if ($h=="170"){require_once('p/kgyz.php');exit;}
//if ($h=="138"){$h="100";}
if ($q=='pnp'){
    echo "资产不准：A 按右上时间判断是否最新，B 客户机必须进入系统后才能数据(win10开机更新更快)";
} elseif ($q=='pc') {
    echo "资产不准：A 按右上时间判断是否最新，B 客户机必须进入系统后才能数据(win10开机更新更快)";
}
#mysqli_select_db($con,"bar" );
$sql="SELECT html FROM $q WHERE lan= $h  ";
    $res=mysqli_query($con,$sql);
    echo mysqli_fetch_array($res)[html];
    mysqli_free_result($res);
mysqli_close($con);
 //if ($h=="118"){require_once('p/kgwy.php');}
}else{
	echo "查资产找质检部！";
}