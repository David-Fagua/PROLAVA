<?php
    $username=$_POST['username'];
    $clave=$_POST['clave'];
    session_start();
    $_SESSION['username']=$username;

    $conexion=mysqli_connect("localhost","root","","datapro");

    $consulta="SELECT*FROM usuarios where username='$username' and clave='$clave'";
    $resultado=mysqli_query($conexion,$consulta);

    $filas=mysqli_fetch_array($resultado);

    if($filas['rol_id']==1){ //administrador
        header("location:../vista/admin.php");
    
    }else
    if($filas['rol_id']==2){ //cliente
    header("location:../vista/cliente.php");
    }else
        //echo "No existe el usuario";
        
    if($errorLogin = "Nombre de usuario y/o password incorrecto");{
        include_once '../login.php';
    }



?>