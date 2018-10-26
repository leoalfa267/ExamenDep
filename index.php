<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<title>EXAMENES DEPARTAMENTALES</title>
    <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">



    <link href="http://localhost/exam/exam/css/style.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap -->
   <link href="http://localhost/exam/exam/css/bootstrap.min.css" rel="stylesheet" type="text/css" /><!-- INCLUYE AL BOSSTRAP ALA WEB -->
   <script src="http://localhost/exam/exam/datespicker/css/datepicker.css"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui-1.7.2.custom.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
<script type="text/javascript"></script>
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);

if(isset($submit))
{

 /*  $sql = "SELECT id FROM login WHERE usname = '$myusername' and pass = '$mypassword'";
      $result = mysqli_query($con,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];

      $count = mysqli_num_rows($result);
*/
      $sql = "SELECT * FROM mst_user WHERE login='$loginid' and pass='$pass'";
	$rs=mysqli_query($con,$sql);
  $row = mysqli_fetch_array($rs,MYSQLI_ASSOC);
    $count = mysqli_num_rows($rs);
	if($count<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}
if (isset($_SESSION[login]))
{
echo "<h1 class='style8' align=center>Bienvenido</h1>";
		echo '<table width="28%"  border="0" align="center">
  <tr>
    <td  width="7%" height="65" valign="bottom"><img src="image/subject.png" width="50" height="50" align="middle"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="sublist.php" class="alert alert-danger">Ver materias</a></td>
  </tr>
  <tr>
    <td height="58" valign="bottom"><img src="image/grade.png" width="43" height="43" align="absmiddle"></td>
    <td valign="bottom"> <a href="result.php" class="alert alert-danger">Calificaciones </a></td>
  </tr>
</table>';

		exit;


}


?>
<table width="100%" border="0">
  <tr>
    <td width="70%" height="25">&nbsp;</td>

    <td width="29%" bgcolor="#1d91d0"><div align="center" class="style1">Iniciar sesión</div></td>
  </tr>
  <tr>
    <td height="296" valign="top"><div align="center">
        <h1 class="style8">Examenes Departamentales</h1>
        <span class="style5"><img src="image/itm.png" height="100">
        <span class="style7"><img src="image/dsc.png" height="100"></span></span>

<p align="left" class="style5">&nbsp;</p>
      <blockquote>
          <p align="left" class="style5"><span class="style7">Bienvenido. Esta plataforma fue creada con el fin de realizar los examenes departamentales. Debes iniciar sesion.</span></p>
      </blockquote>
    </div></td>

    <td valign="top"><form name="form1" method="post" action="">
      <table width="200" border="0">
        <tr>
          <td><span class="style2">Matricula </span></td>
          <td><input name="loginid" type="text" id="loginid2"></td>
        </tr>
        <tr>
          <td><span class="style2">Contraseña</span></td>
          <td><input name="pass" type="password" id="pass2"></td>
        </tr>
        <tr>
          <td colspan="2"><span class="errors">
            <?php
		  if(isset($found))
		  {
		  	echo "Usuario o contraseña invalido";
		  }
		  ?>
          </span></td>
          </tr>
        <tr>
          <td colspan=2 align=center class="errors">
		  <input name="submit" type="submit" id="submit" value="Ingresar">		  </td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#1d91d0"><div align="center"><span class="style4">¿No estas registrado? <a href="signup.php">Registrate</a></span></div></td>
          </tr>
      </table>

    </form></td>
  </tr>
</table>

</body>
</html>
