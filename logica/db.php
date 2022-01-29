<?php

    class DB{

        private $host;
        private $db;
        private $username;
        private $clave;

        public function __construct(){
            $this->host = 'localhost';
            $this->db = 'datapro';
            $this->username = 'root';
            $this->clave = '';

        }

        function connect(){
            try{
                $conexion = "mysql:host=" . $this->host . ";dbname=" . $this->db;
                $options = [
                    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_EMULATE_PREPARES   => false,
                ];
                
                $pdo = new PDO($conexion, $this->username, $this->clave, $options);
        
                return $pdo;
            }catch(PDOException $e){
                print_r('Error conexion: ' . $e->getMessage());
            
        }

    }

?>