
unit View.ERP.empresas_email;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_email, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasemail = class(TForm) 
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
    FController : TControllerERPempresasemail; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fparametro : WideString;
    Fativo : Boolean;
    Fdescricao : indefinido;
    Fvalor_integer : indefinido;
    Ftipo : indefinido;
    Fvalor_decimal : Double;
    Fid_localizacao : Integer;
    Fvalor_string : indefinido;
    Fmd5 : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setparametro(const Value : WideString);
    procedure Setativo(const Value : Boolean);
    procedure Setdescricao(const Value : indefinido);
    procedure Setvalor_integer(const Value : indefinido);
    procedure Settipo(const Value : indefinido);
    procedure Setvalor_decimal(const Value : Double);
    procedure Setid_localizacao(const Value : Integer);
    procedure Setvalor_string(const Value : indefinido);
    procedure Setmd5(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property parametro : WideString         read Fparametro    write Fparametro;
    property ativo : Boolean         read Fativo    write Fativo;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property valor_integer : indefinido         read Fvalor_integer    write Fvalor_integer;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property valor_decimal : Double         read Fvalor_decimal    write Fvalor_decimal;
    property id_localizacao : Integer         read Fid_localizacao    write Fid_localizacao;
    property valor_string : indefinido         read Fvalor_string    write Fvalor_string;
    property md5 : WideString         read Fmd5    write Fmd5;

  end;

var
  Frm_ViewERPempresasemail : TFrm_ViewERPempresasemail; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parametro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_integer); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_decimal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_localizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_string); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].md5); 
    end; 
end; 

procedure TFrm_ViewERPempresasemail.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.parametro := Edit_parametro.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.valor_integer := Edit_valor_integer.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.valor_decimal := Edit_valor_decimal.text;
      FController.Model.id_localizacao := Edit_id_localizacao.text;
      FController.Model.valor_string := Edit_valor_string.text;
      FController.Model.md5 := Edit_md5.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasemail.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasemail.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresasemail.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresasemail.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasemail.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasemail.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasemail.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := parametro;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := valor_integer;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := valor_decimal;  
     Grid.Cells[inttostr(i),0] := id_localizacao;  
     Grid.Cells[inttostr(i),0] := valor_string;  
     Grid.Cells[inttostr(i),0] := md5;  
end;

procedure TFrm_ViewERPempresasemail.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasemail.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasemail.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.parametro := Grid.Cells[2,Grid.row];
    FController.Model.ativo := Grid.Cells[3,Grid.row];
    FController.Model.descricao := Grid.Cells[4,Grid.row];
    FController.Model.valor_integer := Grid.Cells[5,Grid.row];
    FController.Model.tipo := Grid.Cells[6,Grid.row];
    FController.Model.valor_decimal := Grid.Cells[7,Grid.row];
    FController.Model.id_localizacao := Grid.Cells[8,Grid.row];
    FController.Model.valor_string := Grid.Cells[9,Grid.row];
    FController.Model.md5 := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasemail.LimparTela;  
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

procedure TFrm_ViewERPempresasemail.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setparametro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setvalor_integer(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setvalor_decimal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setid_localizacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setvalor_string(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasemail.Setmd5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
