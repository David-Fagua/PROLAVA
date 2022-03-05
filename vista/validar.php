<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<?php
    $email=$_POST['email'];
    $clave=$_POST['clave'];
    session_start();
    $_SESSION['email']=$email;

    $conexion=mysqli_connect("localhost","root","","datapro");

    $consulta="SELECT*FROM factura_usuarios where email='$email' and clave='$clave'";
    $resultado=mysqli_query($conexion,$consulta);

    $filas=mysqli_fetch_array($resultado);


    if($filas['rol_id']==1){ //administrador
        header("location:admin/home.php");
    
    }else
    if($filas['rol_id']==2){ //cliente
    header("location:usuario/home.php");
    }else
        //echo "No existe el usuario";
        
    if($errorLogin = "Nombre de usuario y/o password incorrecto");{
        include_once '../login.php';
    }

?>

