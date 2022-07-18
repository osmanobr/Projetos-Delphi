<?php
if((isset($_GET['celular'])&&($_GET['celular']!='')))
{
    
  $json = '{"celular": "'.$_GET['celular'].'", '.
      '"usuario": "admin", '. 
      '"cadastro": "2022-03-02 15:00:00", '.
      '"valido": "2022-04-02 15:00:00", '.
      '"ativo": "1"} ';
      
 
    $obj = json_decode(json_encode($json));
    echo $obj;
}

?>