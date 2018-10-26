<?php
session_start();
extract($_POST);
extract($_SESSION);
include("database.php");
if($submit=='Finish')
{
	mysql_query("delete from mst_useranswer where sess_id='" . session_id() ."'") or die(mysql_error());
	unset($_SESSION[qn]);
	header("Location: index.php");
	exit;
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Prueba en línea - Examen de prueba </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
echo "<h1 class=head1>Revisar pregunta de prueba</h1>";

if(!isset($_SESSION[qn]))
{
		$_SESSION[qn]=0;
}
else if($submit=='Next Question' )
{
	$_SESSION[qn]=$_SESSION[qn]+1;

}

$rs=mysqli_query($con,"select * from mst_useranswer where sess_id='" . session_id() ."'",$cn) or die(mysql_error());
mysqli_data_seek($rs,$_SESSION[qn]);
//$row= mysqli_fetch_row($rs);
echo "<form name=myfm method=post action=review.php>";
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION[qn]+1;
$cont=1;
    while($renglon = mysqli_fetch_array($rs)) {
        echo "<tR><td><span class=style2>Que ".  $cont .": $renglon[2]</style>";
                echo "<tr>";
                echo "<tr><td class=".($renglon[7]==1?'tans':'style8').">$renglon[3]";
                echo "<tr><td class=".($renglon[7]==2?'tans':'style8').">$renglon[4]";
                echo "<tr><td class=".($renglon[7]==3?'tans':'style8').">$renglon[5]";
                echo "<tr><td class=".($renglon[7]==4?'tans':'style8').">$renglon[6]";
                
                echo "</tr>";
        $cont++;
                }
echo "</table></table>";
?>
