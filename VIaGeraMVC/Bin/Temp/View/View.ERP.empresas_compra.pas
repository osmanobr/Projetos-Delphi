
unit View.ERP.empresas_boleto;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_boleto, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasboleto = class(TForm) 
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
    FController : TControllerERPempresasboleto; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fmanter_compra_item : Boolean;
    Fnao_aproveitamento_icms_regime_normal : Boolean;
    Fconversao_st : WideString;
    Fmargem_bruta_preco_compra : Boolean;
    Fid_caixa : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setmanter_compra_item(const Value : Boolean);
    procedure Setnao_aproveitamento_icms_regime_normal(const Value : Boolean);
    procedure Setconversao_st(const Value : WideString);
    procedure Setmargem_bruta_preco_compra(const Value : Boolean);
    procedure Setid_caixa(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property manter_compra_item : Boolean         read Fmanter_compra_item    write Fmanter_compra_item;
    property nao_aproveitamento_icms_regime_normal : Boolean         read Fnao_aproveitamento_icms_regime_normal    write Fnao_aproveitamento_icms_regime_normal;
    property conversao_st : WideString         read Fconversao_st    write Fconversao_st;
    property margem_bruta_preco_compra : Boolean         read Fmargem_bruta_preco_compra    write Fmargem_bruta_preco_compra;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;

  end;

var
  Frm_ViewERPempresasboleto : TFrm_ViewERPempresasboleto; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].manter_compra_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nao_aproveitamento_icms_regime_normal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conversao_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_bruta_preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
    end; 
end; 

procedure TFrm_ViewERPempresasboleto.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.manter_compra_item := Edit_manter_compra_item.text;
      FController.Model.nao_aproveitamento_icms_regime_normal := Edit_nao_aproveitamento_icms_regime_normal.text;
      FController.Model.conversao_st := Edit_conversao_st.text;
      FController.Model.margem_bruta_preco_compra := Edit_margem_bruta_preco_compra.text;
      FController.Model.id_caixa := Edit_id_caixa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasboleto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasboleto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresasboleto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresasboleto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasboleto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasboleto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasboleto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := manter_compra_item;  
     Grid.Cells[inttostr(i),0] := nao_aproveitamento_icms_regime_normal;  
     Grid.Cells[inttostr(i),0] := conversao_st;  
     Grid.Cells[inttostr(i),0] := margem_bruta_preco_compra;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
end;

procedure TFrm_ViewERPempresasboleto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasboleto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasboleto.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.manter_compra_item := Grid.Cells[2,Grid.row];
    FController.Model.nao_aproveitamento_icms_regime_normal := Grid.Cells[3,Grid.row];
    FController.Model.conversao_st := Grid.Cells[4,Grid.row];
    FController.Model.margem_bruta_preco_compra := Grid.Cells[5,Grid.row];
    FController.Model.id_caixa := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasboleto.LimparTela;  
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

procedure TFrm_ViewERPempresasboleto.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setmanter_compra_item(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setnao_aproveitamento_icms_regime_normal(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setconversao_st(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setmargem_bruta_preco_compra(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasboleto.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
