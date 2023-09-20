
unit View.ERP.paf_r;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.paf_r, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpafr = class(TForm) 
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
    FController : TControllerERPpafr; 
    Fid : Integer;
    Fid_r01 : Integer;
    Fid_r04 : Integer;
    Fid_r06 : Integer;
    Ffabricacao_ecf : indefinido;
    Fmf_adicional : indefinido;
    Fmodelo_ecf : indefinido;
    Fnumero_usuario_ecf : indefinido;
    Fcoo : indefinido;
    Fccf : indefinido;
    Fgnf : indefinido;
    Fmeio_pagamento : indefinido;
    Fvalor_pagamento : Double;
    Findicador_estorno : indefinido;
    Fvalor_estorno : Double;
    Ffiscal_nao_fiscal : Integer;
    Findicador_cancelamento_cupom : indefinido;
    Fdata : indefinido;
    Fcode : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_r01(const Value : Integer);
    procedure Setid_r04(const Value : Integer);
    procedure Setid_r06(const Value : Integer);
    procedure Setfabricacao_ecf(const Value : indefinido);
    procedure Setmf_adicional(const Value : indefinido);
    procedure Setmodelo_ecf(const Value : indefinido);
    procedure Setnumero_usuario_ecf(const Value : indefinido);
    procedure Setcoo(const Value : indefinido);
    procedure Setccf(const Value : indefinido);
    procedure Setgnf(const Value : indefinido);
    procedure Setmeio_pagamento(const Value : indefinido);
    procedure Setvalor_pagamento(const Value : Double);
    procedure Setindicador_estorno(const Value : indefinido);
    procedure Setvalor_estorno(const Value : Double);
    procedure Setfiscal_nao_fiscal(const Value : Integer);
    procedure Setindicador_cancelamento_cupom(const Value : indefinido);
    procedure Setdata(const Value : indefinido);
    procedure Setcode(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_r01 : Integer         read Fid_r01    write Fid_r01;
    property id_r04 : Integer         read Fid_r04    write Fid_r04;
    property id_r06 : Integer         read Fid_r06    write Fid_r06;
    property fabricacao_ecf : indefinido         read Ffabricacao_ecf    write Ffabricacao_ecf;
    property mf_adicional : indefinido         read Fmf_adicional    write Fmf_adicional;
    property modelo_ecf : indefinido         read Fmodelo_ecf    write Fmodelo_ecf;
    property numero_usuario_ecf : indefinido         read Fnumero_usuario_ecf    write Fnumero_usuario_ecf;
    property coo : indefinido         read Fcoo    write Fcoo;
    property ccf : indefinido         read Fccf    write Fccf;
    property gnf : indefinido         read Fgnf    write Fgnf;
    property meio_pagamento : indefinido         read Fmeio_pagamento    write Fmeio_pagamento;
    property valor_pagamento : Double         read Fvalor_pagamento    write Fvalor_pagamento;
    property indicador_estorno : indefinido         read Findicador_estorno    write Findicador_estorno;
    property valor_estorno : Double         read Fvalor_estorno    write Fvalor_estorno;
    property fiscal_nao_fiscal : Integer         read Ffiscal_nao_fiscal    write Ffiscal_nao_fiscal;
    property indicador_cancelamento_cupom : indefinido         read Findicador_cancelamento_cupom    write Findicador_cancelamento_cupom;
    property data : indefinido         read Fdata    write Fdata;
    property code : indefinido         read Fcode    write Fcode;

  end;

var
  Frm_ViewERPpafr : TFrm_ViewERPpafr; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 19; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_r01); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_r04); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_r06); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricacao_ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mf_adicional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo_ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_usuario_ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ccf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gnf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].meio_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].indicador_estorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_estorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fiscal_nao_fiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].indicador_cancelamento_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].code); 
    end; 
end; 

procedure TFrm_ViewERPpafr.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_r01 := Edit_id_r01.text;
      FController.Model.id_r04 := Edit_id_r04.text;
      FController.Model.id_r06 := Edit_id_r06.text;
      FController.Model.fabricacao_ecf := Edit_fabricacao_ecf.text;
      FController.Model.mf_adicional := Edit_mf_adicional.text;
      FController.Model.modelo_ecf := Edit_modelo_ecf.text;
      FController.Model.numero_usuario_ecf := Edit_numero_usuario_ecf.text;
      FController.Model.coo := Edit_coo.text;
      FController.Model.ccf := Edit_ccf.text;
      FController.Model.gnf := Edit_gnf.text;
      FController.Model.meio_pagamento := Edit_meio_pagamento.text;
      FController.Model.valor_pagamento := Edit_valor_pagamento.text;
      FController.Model.indicador_estorno := Edit_indicador_estorno.text;
      FController.Model.valor_estorno := Edit_valor_estorno.text;
      FController.Model.fiscal_nao_fiscal := Edit_fiscal_nao_fiscal.text;
      FController.Model.indicador_cancelamento_cupom := Edit_indicador_cancelamento_cupom.text;
      FController.Model.data := Edit_data.text;
      FController.Model.code := Edit_code.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpafr.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpafr.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpafr.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpafr.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpafr.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpafr.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpafr.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 19;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_r01;  
     Grid.Cells[inttostr(i),0] := id_r04;  
     Grid.Cells[inttostr(i),0] := id_r06;  
     Grid.Cells[inttostr(i),0] := fabricacao_ecf;  
     Grid.Cells[inttostr(i),0] := mf_adicional;  
     Grid.Cells[inttostr(i),0] := modelo_ecf;  
     Grid.Cells[inttostr(i),0] := numero_usuario_ecf;  
     Grid.Cells[inttostr(i),0] := coo;  
     Grid.Cells[inttostr(i),0] := ccf;  
     Grid.Cells[inttostr(i),0] := gnf;  
     Grid.Cells[inttostr(i),0] := meio_pagamento;  
     Grid.Cells[inttostr(i),0] := valor_pagamento;  
     Grid.Cells[inttostr(i),0] := indicador_estorno;  
     Grid.Cells[inttostr(i),0] := valor_estorno;  
     Grid.Cells[inttostr(i),0] := fiscal_nao_fiscal;  
     Grid.Cells[inttostr(i),0] := indicador_cancelamento_cupom;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := code;  
end;

procedure TFrm_ViewERPpafr.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpafr.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpafr.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_r01 := Grid.Cells[1,Grid.row];
    FController.Model.id_r04 := Grid.Cells[2,Grid.row];
    FController.Model.id_r06 := Grid.Cells[3,Grid.row];
    FController.Model.fabricacao_ecf := Grid.Cells[4,Grid.row];
    FController.Model.mf_adicional := Grid.Cells[5,Grid.row];
    FController.Model.modelo_ecf := Grid.Cells[6,Grid.row];
    FController.Model.numero_usuario_ecf := Grid.Cells[7,Grid.row];
    FController.Model.coo := Grid.Cells[8,Grid.row];
    FController.Model.ccf := Grid.Cells[9,Grid.row];
    FController.Model.gnf := Grid.Cells[10,Grid.row];
    FController.Model.meio_pagamento := Grid.Cells[11,Grid.row];
    FController.Model.valor_pagamento := Grid.Cells[12,Grid.row];
    FController.Model.indicador_estorno := Grid.Cells[13,Grid.row];
    FController.Model.valor_estorno := Grid.Cells[14,Grid.row];
    FController.Model.fiscal_nao_fiscal := Grid.Cells[15,Grid.row];
    FController.Model.indicador_cancelamento_cupom := Grid.Cells[16,Grid.row];
    FController.Model.data := Grid.Cells[17,Grid.row];
    FController.Model.code := Grid.Cells[18,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpafr.LimparTela;  
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

procedure TFrm_ViewERPpafr.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setid_r01(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setid_r04(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setid_r06(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setfabricacao_ecf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setmf_adicional(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setmodelo_ecf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setnumero_usuario_ecf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setcoo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setccf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setgnf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setmeio_pagamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setvalor_pagamento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setindicador_estorno(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setvalor_estorno(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setfiscal_nao_fiscal(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setindicador_cancelamento_cupom(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafr.Setcode(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
