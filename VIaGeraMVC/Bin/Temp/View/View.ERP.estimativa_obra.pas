
unit View.ERP.equipamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.equipamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPequipamento = class(TForm) 
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
    FController : TControllerERPequipamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_obra : Integer;
    Fid_usuario : Integer;
    Fid_usuario_change : Integer;
    Fnome_cliente : WideString;
    Fnome_obra : WideString;
    Fvalor_produtos : Double;
    Fvalor_servico : Double;
    Fvalor_total : Double;
    Fvalor_produtos_entregue : Double;
    Fvalor_servico_pago : Double;
    Fvalor_produtos_pagos : Double;
    Fquantidade_total : Double;
    Fquantidade_entregue : Double;
    Ffechada : Boolean;
    Fcancelada : Boolean;
    Fvalor_total_pago : Double;
    Fdata : indefinido;
    Fencerrada : Boolean;
    Fformas_pagamento : WideString;
    Fvalor_custo : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_obra(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_usuario_change(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setnome_obra(const Value : WideString);
    procedure Setvalor_produtos(const Value : Double);
    procedure Setvalor_servico(const Value : Double);
    procedure Setvalor_total(const Value : Double);
    procedure Setvalor_produtos_entregue(const Value : Double);
    procedure Setvalor_servico_pago(const Value : Double);
    procedure Setvalor_produtos_pagos(const Value : Double);
    procedure Setquantidade_total(const Value : Double);
    procedure Setquantidade_entregue(const Value : Double);
    procedure Setfechada(const Value : Boolean);
    procedure Setcancelada(const Value : Boolean);
    procedure Setvalor_total_pago(const Value : Double);
    procedure Setdata(const Value : indefinido);
    procedure Setencerrada(const Value : Boolean);
    procedure Setformas_pagamento(const Value : WideString);
    procedure Setvalor_custo(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_obra : Integer         read Fid_obra    write Fid_obra;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_usuario_change : Integer         read Fid_usuario_change    write Fid_usuario_change;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property nome_obra : WideString         read Fnome_obra    write Fnome_obra;
    property valor_produtos : Double         read Fvalor_produtos    write Fvalor_produtos;
    property valor_servico : Double         read Fvalor_servico    write Fvalor_servico;
    property valor_total : Double         read Fvalor_total    write Fvalor_total;
    property valor_produtos_entregue : Double         read Fvalor_produtos_entregue    write Fvalor_produtos_entregue;
    property valor_servico_pago : Double         read Fvalor_servico_pago    write Fvalor_servico_pago;
    property valor_produtos_pagos : Double         read Fvalor_produtos_pagos    write Fvalor_produtos_pagos;
    property quantidade_total : Double         read Fquantidade_total    write Fquantidade_total;
    property quantidade_entregue : Double         read Fquantidade_entregue    write Fquantidade_entregue;
    property fechada : Boolean         read Ffechada    write Ffechada;
    property cancelada : Boolean         read Fcancelada    write Fcancelada;
    property valor_total_pago : Double         read Fvalor_total_pago    write Fvalor_total_pago;
    property data : indefinido         read Fdata    write Fdata;
    property encerrada : Boolean         read Fencerrada    write Fencerrada;
    property formas_pagamento : WideString         read Fformas_pagamento    write Fformas_pagamento;
    property valor_custo : Double         read Fvalor_custo    write Fvalor_custo;

  end;

var
  Frm_ViewERPequipamento : TFrm_ViewERPequipamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 23; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_change); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_produtos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_produtos_entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_servico_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_produtos_pagos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_entregue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].encerrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].formas_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_custo); 
    end; 
end; 

procedure TFrm_ViewERPequipamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_obra := Edit_id_obra.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_usuario_change := Edit_id_usuario_change.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.nome_obra := Edit_nome_obra.text;
      FController.Model.valor_produtos := Edit_valor_produtos.text;
      FController.Model.valor_servico := Edit_valor_servico.text;
      FController.Model.valor_total := Edit_valor_total.text;
      FController.Model.valor_produtos_entregue := Edit_valor_produtos_entregue.text;
      FController.Model.valor_servico_pago := Edit_valor_servico_pago.text;
      FController.Model.valor_produtos_pagos := Edit_valor_produtos_pagos.text;
      FController.Model.quantidade_total := Edit_quantidade_total.text;
      FController.Model.quantidade_entregue := Edit_quantidade_entregue.text;
      FController.Model.fechada := Edit_fechada.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.valor_total_pago := Edit_valor_total_pago.text;
      FController.Model.data := Edit_data.text;
      FController.Model.encerrada := Edit_encerrada.text;
      FController.Model.formas_pagamento := Edit_formas_pagamento.text;
      FController.Model.valor_custo := Edit_valor_custo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPequipamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPequipamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPequipamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPequipamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPequipamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPequipamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPequipamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 23;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_obra;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_usuario_change;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := nome_obra;  
     Grid.Cells[inttostr(i),0] := valor_produtos;  
     Grid.Cells[inttostr(i),0] := valor_servico;  
     Grid.Cells[inttostr(i),0] := valor_total;  
     Grid.Cells[inttostr(i),0] := valor_produtos_entregue;  
     Grid.Cells[inttostr(i),0] := valor_servico_pago;  
     Grid.Cells[inttostr(i),0] := valor_produtos_pagos;  
     Grid.Cells[inttostr(i),0] := quantidade_total;  
     Grid.Cells[inttostr(i),0] := quantidade_entregue;  
     Grid.Cells[inttostr(i),0] := fechada;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := valor_total_pago;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := encerrada;  
     Grid.Cells[inttostr(i),0] := formas_pagamento;  
     Grid.Cells[inttostr(i),0] := valor_custo;  
end;

procedure TFrm_ViewERPequipamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPequipamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPequipamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_cliente := Grid.Cells[2,Grid.row];
    FController.Model.id_obra := Grid.Cells[3,Grid.row];
    FController.Model.id_usuario := Grid.Cells[4,Grid.row];
    FController.Model.id_usuario_change := Grid.Cells[5,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_obra := Grid.Cells[7,Grid.row];
    FController.Model.valor_produtos := Grid.Cells[8,Grid.row];
    FController.Model.valor_servico := Grid.Cells[9,Grid.row];
    FController.Model.valor_total := Grid.Cells[10,Grid.row];
    FController.Model.valor_produtos_entregue := Grid.Cells[11,Grid.row];
    FController.Model.valor_servico_pago := Grid.Cells[12,Grid.row];
    FController.Model.valor_produtos_pagos := Grid.Cells[13,Grid.row];
    FController.Model.quantidade_total := Grid.Cells[14,Grid.row];
    FController.Model.quantidade_entregue := Grid.Cells[15,Grid.row];
    FController.Model.fechada := Grid.Cells[16,Grid.row];
    FController.Model.cancelada := Grid.Cells[17,Grid.row];
    FController.Model.valor_total_pago := Grid.Cells[18,Grid.row];
    FController.Model.data := Grid.Cells[19,Grid.row];
    FController.Model.encerrada := Grid.Cells[20,Grid.row];
    FController.Model.formas_pagamento := Grid.Cells[21,Grid.row];
    FController.Model.valor_custo := Grid.Cells[22,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPequipamento.LimparTela;  
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

procedure TFrm_ViewERPequipamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setid_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setid_usuario_change(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setnome_obra(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_produtos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_produtos_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_servico_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_produtos_pagos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setquantidade_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setquantidade_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setfechada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setcancelada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_total_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setencerrada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setformas_pagamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPequipamento.Setvalor_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
