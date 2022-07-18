<?php 
//error_reporting(E_ALL);
//ini_set('display_errors', 1);
try	{
 
$host = ('localhost');//    
$user = ('adm');  
$pass = ('adm');  
$bancodb = ('bd_whatsapp'); 
 
$pdo = new PDO("mysql:host=$host;dbname=$bancodb", $user, $pass,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
   // echo 'conectou';
	}

catch(PDOException $e)
	
	{   
    		echo 'Falha ao conectar no banco de dados: '.$e->getMessage(); 

		die;
	}
?>