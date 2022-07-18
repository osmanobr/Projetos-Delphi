<?php
include_once('conexao.php');

//envio de arquivos
$uploaddir = 'uploads/';
if(isset($_FILES['arquivo']))
{
    $uploadfile = $uploaddir . basename($_FILES['arquivo']['name']);

    if (move_uploaded_file($_FILES['arquivo']['tmp_name'], $uploadfile)) 
        {
            echo "Arquivo enviado com sucesso.";
        } 
    else 
        {
            echo "Erro de upload de arquivo.";
        }
}

//Envio de textos
if (
    (isset($_POST['origem']))  && (trim($_POST['origem']) !='')&&
    (isset($_POST['destino'])) && (trim($_POST['destino'])!='')&&
    (isset($_POST['tipo']))    && (trim($_POST['tipo'])   !='')&&
    (isset($_POST['msg']))     && (trim($_POST['msg'])    !='')&&
   // (isset($_POST['status']))  && (trim($_POST['status']) !='')&&
    (isset($_POST['token']))   && (trim($_POST['token'])  !='')                               
    )
    {
           $origem   =   trim($_POST['origem']);
           $destino  =   trim($_POST['destino']);
           $tipo     =   trim($_POST['tipo']);
           $msg      =   trim($_POST['msg']);
           $status   =   trim($_POST['status']);
           $token    =   trim($_POST['token']);
 
function ultimos8($value)
{
    $var = $value;
    $ultimos8 = substr($var, -8);

    return $ultimos8;
}   
          $origem   =   ultimos8($origem);
          $destino  =   ultimos8($destino);   
    
          $id_empresa      =   0;
          $celular_empresa =   '';    
          $id_cliente      =   0;
          $celular_cliente =   '';
          $id_atendimento  =   0;
          $id_atendente    =   0;
              
          $sqlempresa = " SELECT e.id, c.celular  FROM tb_celular c inner join tb_empresa e on(e.id = c.id_empresa) where e.status = 1 and c.status = 1 and (c.celular like '%$origem%' or c.celular like '%$destino%') limit 1; "; 

          $sqlempresa = $pdo->query($sqlempresa);    
          $qrempresa = $sqlempresa->fetchAll(PDO::FETCH_ASSOC);
          if($qrempresa)
            {   //a empresa está ok  
                foreach($qrempresa as $rowempresa)
                {
                   $id_empresa = $rowempresa['id']; 
                   $celular_empresa = ultimos8($rowempresa['celular']);   
                }
            }
              
            //descobrir o celular do cliente
            if($celular_empresa == $origem) {
              $celular_cliente = $destino;  
            } 
              else
                if($celular_empresa == $destino) {
                  $celular_cliente = $origem;  
                }   
                 else 
                 {
                     $celular_cliente = '00000000';
                 }
              
            //insere o cliente se não existir
             $inserecliente = $pdo->query("INSERT INTO tb_cliente ( id_empresa, celular, nome ) SELECT
                                            '$id_empresa',
                                            '$celular_cliente',
                                            '$celular_cliente' 
                                            FROM
                                                tb_cliente 
                                            WHERE
                                                id_empresa = '$id_empresa' 
                                                AND celular = '$celular_cliente' 
                                            HAVING
                                                COUNT( id_empresa ) = 0");
            $id_cliente = $pdo->lastInsertId();//id > 0 somente se for novo
              
        	$sqlcliente = $pdo->query("select id from tb_cliente where celular like '%$celular_cliente%' limit 1;");
            $qrcliente  = $sqlcliente->fetchAll(PDO::FETCH_ASSOC);
            if($qrcliente)
            {
                foreach ($qrcliente as $rowcliente)
                    {
                         $id_cliente = $rowcliente['id']; //achei o id_cliente
                    }
            }  
  
              
            //ja tenho id_empresa, celular_empresa, id_cliente, celular_cliente 
            $insereatendimento = $pdo->query("
            INSERT INTO tb_atendimento ( id_empresa, id_cliente, status ) SELECT
            '$id_empresa',
            '$id_cliente',
            '0'
            FROM
                tb_atendimento 
            WHERE
                id_empresa = '$id_empresa' 
                AND id_cliente = '$id_cliente'
              and status < $id_cliente	
            HAVING
                COUNT( id_empresa ) = 0");

            $id_atendimento = $pdo->lastInsertId();//id_atendimento > 0 somente se for novo              
              
            $de   = 0;
            $para = 0;                                             
                //descobrir o de e o para
                if($celular_empresa == $origem) {
                    $de   = $id_empresa;
                    $para = $id_cliente;  
                } 
                  else
                    if($celular_empresa == $destino) {
                        $de   = $id_cliente; 
                        $para = $id_empresa; 
                    }   


                        $sqlatendimento = $pdo->query("select id, id_atendente from tb_atendimento where id_empresa = $id_empresa and id_cliente = id_cliente and status < 4 limit 1;");
                        $qratendimento  = $sqlatendimento->fetchAll(PDO::FETCH_ASSOC);
                        if($qratendimento)
                        {
                            foreach ($qratendimento as $rowatendimento)
                                {  $id_atendimento    = $rowatendimento['id'];
                                   (int)$id_atendente = (int)$rowatendimento['id_atendente'];
                                   $query  = "INSERT INTO tb_chat ( id_empresa, id_atendimento, de, para, tipo, msg)VALUES ( $id_empresa, $id_atendente, $de, $para, '$tipo', '$msg')";
                                   $inserechat2 = $pdo->query($query);   
                                 echo 'Enviado!';

                                }
                        }

    }
echo $_POST['origem'].' '.$_POST['destino'];
exit;
?>