<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->
      
    <link rel="icon" type="image/png" href="../../assets/icon/lava.png">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="../../assets/css/timeline.css" rel="stylesheet">
    <link href="../../assets/css/startmin.css" rel="stylesheet">
    <link href="../../assets/css/morris.css" rel="stylesheet">
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../../assets/css/estilos.css">

    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>

<?php 
    //seguridad de sessiones paginacion
    session_start();
    error_reporting(0);
    $varsesion= $_SESSION['email'];
    if($varsesion== null || $varsesion=''){
        header("location:../../index.php");
        die();
    }

?>



<?php 
//seguridad de sessiones paginacion

?>

</head>
<body id="body">