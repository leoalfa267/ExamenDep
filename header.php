<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
    <td width="100%" valign="top" height=68 bgcolor=#1d91d0>
		</td>
		<td bgcolor=#1d91d0>
		</td>
	</tr>
  <tr>
  	<td>
		  <?php @$_SESSION['login'];
		  error_reporting(1);
		  ?>
	  </td>
	  <td>
			<?php
				if(isset($_SESSION['login'])){
					echo "<div align=\"right\"><strong><a href=\"index.php\"> Inicio </a>|<a href=\"signout.php\">Salir</a></strong></div>";
				}
				else{
			 		echo "&nbsp;";
				}
			?>
		</td>
	</tr>
</table>
