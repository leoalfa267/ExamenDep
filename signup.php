<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>New user signup </title>
<script language="javascript">
function check()
{

 if(document.form1.lid.value=="")
  {
    alert("Ingrese Id de inicio de sesión");
	document.form1.lid.focus();
	return false;
  }
 
 if(document.form1.pass.value=="")
  {
    alert("Por favor, introduzca su contraseña");
	document.form1.pass.focus();
	return false;
  } 
  if(document.form1.cpass.value=="")
  {
    alert("Por favor ingrese Confirmar contraseña");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.pass.value!=document.form1.cpass.value)
  {
    alert("Confirmar contraseña no coincide");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.name.value=="")
  {
    alert("Por favor, escriba su nombre");
	document.form1.name.focus();
	return false;
  }
  if(document.form1.address.value=="")
  {
    alert("Por favor ingrese la dirección");
	document.form1.address.focus();
	return false;
  }
  if(document.form1.city.value=="")
  {
    alert("Por favor introduzca el nombre de la ciudad");
	document.form1.city.focus();
	return false;
  }
  if(document.form1.phone.value=="")
  {
    alert("Por favor, introduzca el contacto No");
	document.form1.phone.focus();
	return false;
  }
  if(document.form1.email.value=="")
  {
    alert("Por favor, introduzca su dirección de correo electrónico");
	document.form1.email.focus();
	return false;
  }
  e=document.form1.email.value;
		f1=e.indexOf('@');
		f2=e.indexOf('@',f1+1);
		e1=e.indexOf('.');
		e2=e.indexOf('.',e1+1);
		n=e.length;

		if(!(f1>0 && f2==-1 && e1>0 && e2==-1 && f1!=e1+1 && e1!=f1+1 && f1!=n-1 && e1!=n-1))
		{
			alert("Por favor introduzca un correo electrónico válido");
			document.form1.email.focus();
			return false;
		}
  return true;
  }
  
</script>
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
?>
 <table width="100%" border="0">
   <tr>
     <td width="132" rowspan="2" valign="top"><span class="style8"><img src="images/connected_multiple_big.jpg" width="131" height="155"></span></td>
     <td width="468" height="57"><h1 align="center"><span class="style8">Nuevo registro de usuario</span></h1></td>
   </tr>
   <tr>
     <td><form name="form1" method="post" action="signupuser.php" onSubmit="return check();">
       <table width="301" border="0" align="left">
         <tr>
           <td><div align="left" class="style7">Login Id </div></td>
           <td><input type="text" name="lid"></td>
         </tr>
         <tr>
           <td class="style7">Contraseña</td>
           <td><input type="password" name="pass"></td>
         </tr>
         <tr>
           <td class="style7">Confirmar contraseña </td>
           <td><input name="cpass" type="password" id="cpass"></td>
         </tr>
         <tr>
           <td class="style7">Nombre</td>
           <td><input name="name" type="text" id="name"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Dirección</td>
           <td><textarea name="address" id="address"></textarea></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Ciudad</td>
           <td><input name="city" type="text" id="city"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Teléfono</td>
           <td><input name="phone" type="text" id="phone"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Email</td>
           <td><input name="email" type="text" id="email"></td>
         </tr>
         <tr>
           <td>&nbsp;</td>
           <td><input type="submit" name="Submit" value="Signup">
           </td>
         </tr>
       </table>
     </form></td>
   </tr>
 </table>
 <p>&nbsp; </p>
</body>
</html>
