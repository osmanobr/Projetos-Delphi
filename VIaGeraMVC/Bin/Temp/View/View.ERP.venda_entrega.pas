
unit View.ERP.venda_duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaduplicata = class(TForm) 
    Panel1: TPanel; 
    bbIncluir: TSpeedButton; 
    bbAlterar: TSpeedButton; 
    bbExcluir: TSpeedButton; 
    BBCancelar: TSpeedButton;
    BBConfirmar: TSpeedButton;

        procedure bbIncluirClick(Sender: TObject);    
        procedure bbAlterarClick(Sender: TObject);    
        procedure bbExcluirClick(Sender: TObject);    
        procedure BBCancelarClick(Sender: TObject);   
        procedure BBConfirmarClick(Sender: TObject);  

    procedure FormCreate(Sender: TObject);    
    procedure FormDestroy(Sender: TObject);    
    procedure FormShow(Sender: TObject);       

  private 
    FController : TControllerERPvendaduplicata; 
    Fid : Integer;
    Fid_pedido : Integer;
    Fdata : TDateTime;
    Fhora : indefinido;
    Fnota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_vendedor : Integer;
    Fmotorista : indefinido;
    Fqtd_itens : Integer;
    Fvl_produto : Double;
    Fvl_total : Double;
    Fvl_servico : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Fserie : indefinido;
    Fid_cfop : Integer;
    Fid_transportadora : Integer;
    Fvl_icms : Double;
    Fvl_desconto : Double;
    Fbase_icms : Double;
    Fbase_substituicao : Double;
    Fvl_frete : Double;
    Fvl_seguro : Double;
    Fvl_outras : Double;
    Fbase_ipi : Double;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvl_icmsst : Double;
    Fnfe_chave : indefinido;
    Fnfe : indefinido;
    Fplaca : indefinido;
    Fnfe_protocolo : indefinido;
    Ftipo_frete : Integer;
    Fespecie : indefinido;
    Fqtd_volume : Double;
    Fnro_volume : Double;
    Fpis : Double;
    Fcofins : Double;
    Fnfe_placa : indefinido;
    Fgerado : indefinido;
    Fnfe_protocolo_cancelada : indefinido;
    Ffechada : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Sethora(const Value : indefinido);
    procedure Setnota(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setmotorista(const Value : indefinido);
    procedure Setqtd_itens(const Value : Integer);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_servico(const Value : Double);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setserie(const Value : indefinido);
    procedure Setid_cfop(const Value : Integer);
    procedure Setid_transportadora(const Value : Integer);
    procedure Setvl_icms(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setbase_substituicao(const Value : Double);
    procedure Setvl_frete(const Value : Double);
    procedure Setvl_seguro(const Value : Double);
    procedure Setvl_outras(const Value : Double);
    procedure Setbase_ipi(const Value : Double);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setvl_icmsst(const Value : Double);
    procedure Setnfe_chave(const Value : indefinido);
    procedure Setnfe(const Value : indefinido);
    procedure Setplaca(const Value : indefinido);
    procedure Setnfe_protocolo(const Value : indefinido);
    procedure Settipo_frete(const Value : Integer);
    procedure Setespecie(const Value : indefinido);
    procedure Setqtd_volume(const Value : Double);
    procedure Setnro_volume(const Value : Double);
    procedure Setpis(const Value : Double);
    procedure Setcofins(const Value : Double);
    procedure Setnfe_placa(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setnfe_protocolo_cancelada(const Value : indefinido);
    procedure Setfechada(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property data : TDateTime         read Fdata    write Fdata;
    property hora : indefinido         read Fhora    write Fhora;
    property nota : Integer         read Fnota    write Fnota;
    property cupom : Integer         read Fcupom    write Fcupom;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property motorista : indefinido         read Fmotorista    write Fmotorista;
    property qtd_itens : Integer         read Fqtd_itens    write Fqtd_itens;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property serie : indefinido         read Fserie    write Fserie;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property id_transportadora : Integer         read Fid_transportadora    write Fid_transportadora;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property base_substituicao : Double         read Fbase_substituicao    write Fbase_substituicao;
    property vl_frete : Double         read Fvl_frete    write Fvl_frete;
    property vl_seguro : Double         read Fvl_seguro    write Fvl_seguro;
    property vl_outras : Double         read Fvl_outras    write Fvl_outras;
    property base_ipi : Double         read Fbase_ipi    write Fbase_ipi;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property vl_icmsst : Double         read Fvl_icmsst    write Fvl_icmsst;
    property nfe_chave : indefinido         read Fnfe_chave    write Fnfe_chave;
    property nfe : indefinido         read Fnfe    write Fnfe;
    property placa : indefinido         read Fplaca    write Fplaca;
    property nfe_protocolo : indefinido         read Fnfe_protocolo    write Fnfe_protocolo;
    property tipo_frete : Integer         read Ftipo_frete    write Ftipo_frete;
    property especie : indefinido         read Fespecie    write Fespecie;
    property qtd_volume : Double         read Fqtd_volume    write Fqtd_volume;
    property nro_volume : Double         read Fnro_volume    write Fnro_volume;
    property pis : Double         read Fpis    write Fpis;
    property cofins : Double         read Fcofins    write Fcofins;
    property nfe_placa : indefinido         read Fnfe_placa    write Fnfe_placa;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property nfe_protocolo_cancelada : indefinido         read Fnfe_protocolo_cancelada    write Fnfe_protocolo_cancelada;
    property fechada : Boolean         read Ffechada    write Ffechada;

  end;

var
  Frm_ViewERPvendaduplicata : TFrm_ViewERPvendaduplicata; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 44; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transportadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_substituicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_seguro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_outras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icmsst); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_volume); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_volume); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_protocolo_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechada); 
    end; 
end; 

procedure TFrm_ViewERPvendaduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.data := Edit_data.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.qtd_itens := Edit_qtd_itens.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.id_transportadora := Edit_id_transportadora.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.base_substituicao := Edit_base_substituicao.text;
      FController.Model.vl_frete := Edit_vl_frete.text;
      FController.Model.vl_seguro := Edit_vl_seguro.text;
      FController.Model.vl_outras := Edit_vl_outras.text;
      FController.Model.base_ipi := Edit_base_ipi.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.vl_icmsst := Edit_vl_icmsst.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.nfe_protocolo := Edit_nfe_protocolo.text;
      FController.Model.tipo_frete := Edit_tipo_frete.text;
      FController.Model.especie := Edit_especie.text;
      FController.Model.qtd_volume := Edit_qtd_volume.text;
      FController.Model.nro_volume := Edit_nro_volume.text;
      FController.Model.pis := Edit_pis.text;
      FController.Model.cofins := Edit_cofins.text;
      FController.Model.nfe_placa := Edit_nfe_placa.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.nfe_protocolo_cancelada := Edit_nfe_protocolo_cancelada.text;
      FController.Model.fechada := Edit_fechada.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaduplicata.BBCancelarClick(Sender: TObject); 
begin                         
  LimparTela;                 
end;                          

Function  SoNumeros(Texto: String):Boolean;   
var Resultado:Boolean;                        
    nContador:Integer;                        
begin                                         
  Resultado := false;                         
  For nContador:=1 to Length(Texto) do        
    begin                                     
      {Verifica sé é uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPvendaduplicata.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a gravação dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
  begin                                              
    ScreenToModel;                                   
    if Self.FController.Status = vsInsert then       
    begin                                            
      Self.FController.Post;                         
    end                                              
    else                                             
      begin                                          
        Self.FController.Update;                     
      end;                                           
    MessageInfo('Dados gravados com sucesso.');    
    Self.FController.Model.id := 0;                  
    Self.FController.Get;                            
    ModelToScreen;                                   
  end;                                               
end;                                                 

procedure TFrm_ViewERPvendaduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 44;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := qtd_itens;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := id_transportadora;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := base_substituicao;  
     Grid.Cells[inttostr(i),0] := vl_frete;  
     Grid.Cells[inttostr(i),0] := vl_seguro;  
     Grid.Cells[inttostr(i),0] := vl_outras;  
     Grid.Cells[inttostr(i),0] := base_ipi;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := vl_icmsst;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo;  
     Grid.Cells[inttostr(i),0] := tipo_frete;  
     Grid.Cells[inttostr(i),0] := especie;  
     Grid.Cells[inttostr(i),0] := qtd_volume;  
     Grid.Cells[inttostr(i),0] := nro_volume;  
     Grid.Cells[inttostr(i),0] := pis;  
     Grid.Cells[inttostr(i),0] := cofins;  
     Grid.Cells[inttostr(i),0] := nfe_placa;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := nfe_protocolo_cancelada;  
     Grid.Cells[inttostr(i),0] := fechada;  
end;

procedure TFrm_ViewERPvendaduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_pedido := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.hora := Grid.Cells[3,Grid.row];
    FController.Model.nota := Grid.Cells[4,Grid.row];
    FController.Model.cupom := Grid.Cells[5,Grid.row];
    FController.Model.id_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[8,Grid.row];
    FController.Model.motorista := Grid.Cells[9,Grid.row];
    FController.Model.qtd_itens := Grid.Cells[10,Grid.row];
    FController.Model.vl_produto := Grid.Cells[11,Grid.row];
    FController.Model.vl_total := Grid.Cells[12,Grid.row];
    FController.Model.vl_servico := Grid.Cells[13,Grid.row];
    FController.Model.obs := Grid.Cells[14,Grid.row];
    FController.Model.click := Grid.Cells[15,Grid.row];
    FController.Model.serie := Grid.Cells[16,Grid.row];
    FController.Model.id_cfop := Grid.Cells[17,Grid.row];
    FController.Model.id_transportadora := Grid.Cells[18,Grid.row];
    FController.Model.vl_icms := Grid.Cells[19,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[20,Grid.row];
    FController.Model.base_icms := Grid.Cells[21,Grid.row];
    FController.Model.base_substituicao := Grid.Cells[22,Grid.row];
    FController.Model.vl_frete := Grid.Cells[23,Grid.row];
    FController.Model.vl_seguro := Grid.Cells[24,Grid.row];
    FController.Model.vl_outras := Grid.Cells[25,Grid.row];
    FController.Model.base_ipi := Grid.Cells[26,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[27,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[28,Grid.row];
    FController.Model.vl_icmsst := Grid.Cells[29,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[30,Grid.row];
    FController.Model.nfe := Grid.Cells[31,Grid.row];
    FController.Model.placa := Grid.Cells[32,Grid.row];
    FController.Model.nfe_protocolo := Grid.Cells[33,Grid.row];
    FController.Model.tipo_frete := Grid.Cells[34,Grid.row];
    FController.Model.especie := Grid.Cells[35,Grid.row];
    FController.Model.qtd_volume := Grid.Cells[36,Grid.row];
    FController.Model.nro_volume := Grid.Cells[37,Grid.row];
    FController.Model.pis := Grid.Cells[38,Grid.row];
    FController.Model.cofins := Grid.Cells[39,Grid.row];
    FController.Model.nfe_placa := Grid.Cells[40,Grid.row];
    FController.Model.gerado := Grid.Cells[41,Grid.row];
    FController.Model.nfe_protocolo_cancelada := Grid.Cells[42,Grid.row];
    FController.Model.fechada := Grid.Cells[43,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaduplicata.LimparTela;  
var   
  I: Integer;  
begin       
  for i := 0 to ComponentCount -1 do   
    BEGIN                              
      if Components[i] is TEdit then   
      begin                            
        TEdit(Components[i]).Text := ''; 
      end; 
    END;   
end;       

procedure TFrm_ViewERPvendaduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Sethora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setmotorista(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setqtd_itens(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setserie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setid_transportadora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setbase_substituicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_frete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_seguro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_outras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setbase_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setvl_icmsst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnfe_chave(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnfe(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setplaca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnfe_protocolo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Settipo_frete(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setespecie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setqtd_volume(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnro_volume(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setpis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setcofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnfe_placa(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setnfe_protocolo_cancelada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaduplicata.Setfechada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
