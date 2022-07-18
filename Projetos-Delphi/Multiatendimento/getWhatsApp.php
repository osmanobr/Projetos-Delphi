<?php
include_once('conexao.php');
//get mensagem para empresa x
//?empresa=1&celular=63992893682&token=123456789
 //http://localhost:8888/teste/getWhatsApp.php?empresa=1&celular=6392893682&token=e807f1fcf82d132f9bb018ca6738a19f  
function ultimos8($value)
{
    $var = $value;
    $ultimos8 = substr($var, -10);

    return $ultimos8;
} 

if ((isset($_GET['empresa'])) && (trim($_GET['empresa'])!='') && (isset($_GET['celular'])) && (trim($_GET['celular'])!='')&&
    (isset($_GET['token'])) && (trim($_GET['token'])!='') )
        {
            (int)$empresa    = trim($_GET['empresa']);
             $empresacelular = trim($_GET['celular']);//ultimos8();
             $token          = trim($_GET['token']) ;

            $sql =  $pdo->query("
SELECT
	ch.id AS id,
CASE		
		WHEN ( de = '$empresa' ) THEN
		'$empresacelular' 
		WHEN ( de <> '$empresa' ) THEN
		( SELECT celular FROM tb_cliente WHERE id = cl.id ) 
	END AS de,
CASE
		WHEN ( para = '$empresa' ) THEN
		'$empresacelular' 
		WHEN ( para <> '$empresa' ) THEN
		( SELECT celular FROM tb_cliente WHERE id = cl.id ) 
	END AS para,
	ch.tipo,
	ch.msg,
	ch.data_hora,
	ch.status 
FROM
	tb_chat ch
	INNER JOIN tb_cliente cl ON ((cl.id = ch.de)or(cl.id = ch.para))
	LEFT JOIN tb_atendimento atd ON ( atd.id = ch.id_atendimento ) 
WHERE 
	(ch.status = 0 or ch.status is null)
	order by id asc
	limit 1            
            ;");


            $qrget = $sql->fetchAll(PDO::FETCH_ASSOC);
                if($qrget)
                    {
                        $json = json_encode($qrget);
                        // $json =  'EMPRESA: '.$json ;
                        print($json);

                       foreach($qrget as $rget)
                       {

                           $atualiza =  $pdo->query("update tb_chat set status = 1 where id = '".$rget['id']."';");
                       }
                    }
                else
                    {
                        echo 'ERROR 404 - "Registro nao encontrado"';
                    }
        } 
else 
        {
            echo 'ERROR 404 - "Dados desencontrados"';
        }

exit;
?>
<!-- 
SELECT ch.id as id, CASE WHEN (de = '1') THEN '92893682' WHEN (de <> '1') THEN (select celular from tb_cliente where id = cl.id) END AS de, CASE WHEN (para = '1') THEN '92893682' WHEN (para <> '1') THEN (select celular from tb_cliente where id = cl.id) END AS para, ch.tipo, ch.msg, ch.data_hora, ch.status FROM tb_chat ch INNER JOIN tb_cliente cl ON ( cl.id = ch.de ) inner join tb_atendimento atd on(atd.id = ch.id_atendimento) where atd.id_empresa = 1 and atd.status < 4 and (ch.status is null or ch.status < 1) limit 1;
-->