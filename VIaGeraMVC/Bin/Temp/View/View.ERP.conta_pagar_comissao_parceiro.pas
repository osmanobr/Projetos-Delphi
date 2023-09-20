
unit View.ERP.conta_pagar;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_pagar, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontapagar = class(TForm) 
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
    FController : TControllerERPcontapagar; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_rec_fixa_comissao : Integer;
    Fdata_baixa_receber : TDateTime;
    Fvalor_recebido : Double;
    Fvalor_comissao : Double;
    Fsituacao : indefinido;
    Fdata_pagamento : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_rec_fixa_comissao(const Value : Integer);
    procedure Setdata_baixa_receber(const Value : TDateTime);
    procedure Setvalor_recebido(const Value : Double);
    procedure Setvalor_comissao(const Value : Double);
    procedure Setsituacao(const Value : indefinido);
    procedure Setdata_pagamento(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_rec_fixa_comissao : Integer         read Fid_rec_fixa_comissao    write Fid_rec_fixa_comissao;
    property data_baixa_receber : TDateTime         read Fdata_baixa_receber    write Fdata_baixa_receber;
    property valor_recebido : Double         read Fvalor_recebido    write Fvalor_recebido;
    property valor_comissao : Double         read Fvalor_comissao    write Fvalor_comissao;
    property situacao : indefinido         read Fsituacao    write Fsituacao;
    property data_pagamento : TDateTime         read Fdata_pagamento    write Fdata_pagamento;

  end;

var
  Frm_ViewERPcontapagar : TFrm_ViewERPcontapagar; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_rec_fixa_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_baixa_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_recebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pagamento); 
    end; 
end; 

procedure TFrm_ViewERPcontapagar.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_rec_fixa_comissao := Edit_id_rec_fixa_comissao.text;
      FController.Model.data_baixa_receber := Edit_data_baixa_receber.text;
      FController.Model.valor_recebido := Edit_valor_recebido.text;
      FController.Model.valor_comissao := Edit_valor_comissao.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.data_pagamento := Edit_data_pagamento.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontapagar.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontapagar.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontapagar.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontapagar.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontapagar.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontapagar.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontapagar.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_rec_fixa_comissao;  
     Grid.Cells[inttostr(i),0] := data_baixa_receber;  
     Grid.Cells[inttostr(i),0] := valor_recebido;  
     Grid.Cells[inttostr(i),0] := valor_comissao;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := data_pagamento;  
end;

procedure TFrm_ViewERPcontapagar.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontapagar.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontapagar.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_rec_fixa_comissao := Grid.Cells[2,Grid.row];
    FController.Model.data_baixa_receber := Grid.Cells[3,Grid.row];
    FController.Model.valor_recebido := Grid.Cells[4,Grid.row];
    FController.Model.valor_comissao := Grid.Cells[5,Grid.row];
    FController.Model.situacao := Grid.Cells[6,Grid.row];
    FController.Model.data_pagamento := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontapagar.LimparTela;  
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

procedure TFrm_ViewERPcontapagar.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setid_rec_fixa_comissao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setdata_baixa_receber(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setvalor_recebido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setvalor_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setsituacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontapagar.Setdata_pagamento(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
