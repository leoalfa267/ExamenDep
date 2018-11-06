<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style>
<table border="0" width="80%" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="90%" valign="top">
<div align="center"><img border="0" src="../image/header.png"  width="100%" align="center"></div></td>
  </tr>
	<tr>
	<td width="80%" aling=right>
	<?php
	if(isset($_SESSION['alogin']))
	{
	 echo "<div align=\"right\"><strong><a href=\"login.php\">Inicio</a>|<a href=\"signout.php\">Salir</a></strong></div>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
	</td>
  </tr>
</table>
