
unit View.ERP.cheque_emitido;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cheque_emitido, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPchequeemitido = class(TForm) 
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
    FController : TControllerERPchequeemitido; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_caixa : Integer;
    Fid_conta : Integer;
    Fid_banco : Integer;
    Fid_fornecedor : Integer;
    Fdata_custodia : indefinido;
    Fvalor_bruto : Double;
    Fpercentual_juros : Double;
    Fvalor_juros : Double;
    Fvalor_liquido : Double;
    Festado : WideString;
    Fcredor : WideString;
    Fclick : Boolean;
    Fobs : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_conta(const Value : Integer);
    procedure Setid_banco(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setdata_custodia(const Value : indefinido);
    procedure Setvalor_bruto(const Value : Double);
    procedure Setpercentual_juros(const Value : Double);
    procedure Setvalor_juros(const Value : Double);
    procedure Setvalor_liquido(const Value : Double);
    procedure Setestado(const Value : WideString);
    procedure Setcredor(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setobs(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_conta : Integer         read Fid_conta    write Fid_conta;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property data_custodia : indefinido         read Fdata_custodia    write Fdata_custodia;
    property valor_bruto : Double         read Fvalor_bruto    write Fvalor_bruto;
    property percentual_juros : Double         read Fpercentual_juros    write Fpercentual_juros;
    property valor_juros : Double         read Fvalor_juros    write Fvalor_juros;
    property valor_liquido : Double         read Fvalor_liquido    write Fvalor_liquido;
    property estado : WideString         read Festado    write Festado;
    property credor : WideString         read Fcredor    write Fcredor;
    property click : Boolean         read Fclick    write Fclick;
    property obs : WideString         read Fobs    write Fobs;

  end;

var
  Frm_ViewERPchequeemitido : TFrm_ViewERPchequeemitido; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_custodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
    end; 
end; 

procedure TFrm_ViewERPchequeemitido.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.data_custodia := Edit_data_custodia.text;
      FController.Model.valor_bruto := Edit_valor_bruto.text;
      FController.Model.percentual_juros := Edit_percentual_juros.text;
      FController.Model.valor_juros := Edit_valor_juros.text;
      FController.Model.valor_liquido := Edit_valor_liquido.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.credor := Edit_credor.text;
      FController.Model.click := Edit_click.text;
      FController.Model.obs := Edit_obs.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPchequeemitido.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPchequeemitido.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPchequeemitido.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPchequeemitido.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPchequeemitido.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPchequeemitido.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPchequeemitido.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := data_custodia;  
     Grid.Cells[inttostr(i),0] := valor_bruto;  
     Grid.Cells[inttostr(i),0] := percentual_juros;  
     Grid.Cells[inttostr(i),0] := valor_juros;  
     Grid.Cells[inttostr(i),0] := valor_liquido;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := credor;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := obs;  
end;

procedure TFrm_ViewERPchequeemitido.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPchequeemitido.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPchequeemitido.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.id_caixa := Grid.Cells[3,Grid.row];
    FController.Model.id_conta := Grid.Cells[4,Grid.row];
    FController.Model.id_banco := Grid.Cells[5,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[6,Grid.row];
    FController.Model.data_custodia := Grid.Cells[7,Grid.row];
    FController.Model.valor_bruto := Grid.Cells[8,Grid.row];
    FController.Model.percentual_juros := Grid.Cells[9,Grid.row];
    FController.Model.valor_juros := Grid.Cells[10,Grid.row];
    FController.Model.valor_liquido := Grid.Cells[11,Grid.row];
    FController.Model.estado := Grid.Cells[12,Grid.row];
    FController.Model.credor := Grid.Cells[13,Grid.row];
    FController.Model.click := Grid.Cells[14,Grid.row];
    FController.Model.obs := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPchequeemitido.LimparTela;  
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

procedure TFrm_ViewERPchequeemitido.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_conta(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setdata_custodia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setvalor_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setpercentual_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setvalor_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setvalor_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setcredor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequeemitido.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
