
unit View.ERP.lote_comissao_pagamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lote_comissao_pagamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlotecomissaopagamento = class(TForm) 
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
    FController : TControllerERPlotecomissaopagamento; 
    Fid : Integer;
    Fid_lote_comissao_pagamento : Integer;
    Fid_venda_item : Integer;
    Fid_venda_servico : Integer;
    Fid_devolucao_item : Integer;
    Findice_utilizado : WideString;
    Fporcentagem_comissao : Double;
    Fvl_total : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_lote_comissao_pagamento(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setid_venda_servico(const Value : Integer);
    procedure Setid_devolucao_item(const Value : Integer);
    procedure Setindice_utilizado(const Value : WideString);
    procedure Setporcentagem_comissao(const Value : Double);
    procedure Setvl_total(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_lote_comissao_pagamento : Integer         read Fid_lote_comissao_pagamento    write Fid_lote_comissao_pagamento;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property id_venda_servico : Integer         read Fid_venda_servico    write Fid_venda_servico;
    property id_devolucao_item : Integer         read Fid_devolucao_item    write Fid_devolucao_item;
    property indice_utilizado : WideString         read Findice_utilizado    write Findice_utilizado;
    property porcentagem_comissao : Double         read Fporcentagem_comissao    write Fporcentagem_comissao;
    property vl_total : Double         read Fvl_total    write Fvl_total;

  end;

var
  Frm_ViewERPlotecomissaopagamento : TFrm_ViewERPlotecomissaopagamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote_comissao_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].indice_utilizado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porcentagem_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
    end; 
end; 

procedure TFrm_ViewERPlotecomissaopagamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_lote_comissao_pagamento := Edit_id_lote_comissao_pagamento.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.id_venda_servico := Edit_id_venda_servico.text;
      FController.Model.id_devolucao_item := Edit_id_devolucao_item.text;
      FController.Model.indice_utilizado := Edit_indice_utilizado.text;
      FController.Model.porcentagem_comissao := Edit_porcentagem_comissao.text;
      FController.Model.vl_total := Edit_vl_total.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlotecomissaopagamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlotecomissaopagamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlotecomissaopagamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlotecomissaopagamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlotecomissaopagamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlotecomissaopagamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlotecomissaopagamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_lote_comissao_pagamento;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := id_venda_servico;  
     Grid.Cells[inttostr(i),0] := id_devolucao_item;  
     Grid.Cells[inttostr(i),0] := indice_utilizado;  
     Grid.Cells[inttostr(i),0] := porcentagem_comissao;  
     Grid.Cells[inttostr(i),0] := vl_total;  
end;

procedure TFrm_ViewERPlotecomissaopagamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlotecomissaopagamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlotecomissaopagamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_lote_comissao_pagamento := Grid.Cells[1,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[2,Grid.row];
    FController.Model.id_venda_servico := Grid.Cells[3,Grid.row];
    FController.Model.id_devolucao_item := Grid.Cells[4,Grid.row];
    FController.Model.indice_utilizado := Grid.Cells[5,Grid.row];
    FController.Model.porcentagem_comissao := Grid.Cells[6,Grid.row];
    FController.Model.vl_total := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlotecomissaopagamento.LimparTela;  
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

procedure TFrm_ViewERPlotecomissaopagamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setid_lote_comissao_pagamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setid_venda_servico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setid_devolucao_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setindice_utilizado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setporcentagem_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecomissaopagamento.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
