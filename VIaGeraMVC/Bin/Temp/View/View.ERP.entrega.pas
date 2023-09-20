
unit View.ERP.empresas_sped;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_sped, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresassped = class(TForm) 
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
    FController : TControllerERPempresassped; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_cupom : Integer;
    Fcliente : WideString;
    Fendereco : WideString;
    Fcep : WideString;
    Fdata : indefinido;
    Fvalor : Double;
    Fstatus : indefinido;
    Fnumero : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fid_cidade : Integer;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fcaixa : Integer;
    Fobs : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_cupom(const Value : Integer);
    procedure Setcliente(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setdata(const Value : indefinido);
    procedure Setvalor(const Value : Double);
    procedure Setstatus(const Value : indefinido);
    procedure Setnumero(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setcaixa(const Value : Integer);
    procedure Setobs(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_cupom : Integer         read Fid_cupom    write Fid_cupom;
    property cliente : WideString         read Fcliente    write Fcliente;
    property endereco : WideString         read Fendereco    write Fendereco;
    property cep : WideString         read Fcep    write Fcep;
    property data : indefinido         read Fdata    write Fdata;
    property valor : Double         read Fvalor    write Fvalor;
    property status : indefinido         read Fstatus    write Fstatus;
    property numero : WideString         read Fnumero    write Fnumero;
    property bairro : WideString         read Fbairro    write Fbairro;
    property uf : WideString         read Fuf    write Fuf;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property caixa : Integer         read Fcaixa    write Fcaixa;
    property obs : indefinido         read Fobs    write Fobs;

  end;

var
  Frm_ViewERPempresassped : TFrm_ViewERPempresassped; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 17; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
    end; 
end; 

procedure TFrm_ViewERPempresassped.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_cupom := Edit_id_cupom.text;
      FController.Model.cliente := Edit_cliente.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.data := Edit_data.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.status := Edit_status.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.caixa := Edit_caixa.text;
      FController.Model.obs := Edit_obs.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresassped.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresassped.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresassped.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresassped.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresassped.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresassped.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresassped.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_cupom;  
     Grid.Cells[inttostr(i),0] := cliente;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := caixa;  
     Grid.Cells[inttostr(i),0] := obs;  
end;

procedure TFrm_ViewERPempresassped.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresassped.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresassped.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.id_cupom := Grid.Cells[2,Grid.row];
    FController.Model.cliente := Grid.Cells[3,Grid.row];
    FController.Model.endereco := Grid.Cells[4,Grid.row];
    FController.Model.cep := Grid.Cells[5,Grid.row];
    FController.Model.data := Grid.Cells[6,Grid.row];
    FController.Model.valor := Grid.Cells[7,Grid.row];
    FController.Model.status := Grid.Cells[8,Grid.row];
    FController.Model.numero := Grid.Cells[9,Grid.row];
    FController.Model.bairro := Grid.Cells[10,Grid.row];
    FController.Model.uf := Grid.Cells[11,Grid.row];
    FController.Model.id_cidade := Grid.Cells[12,Grid.row];
    FController.Model.telefone := Grid.Cells[13,Grid.row];
    FController.Model.celular := Grid.Cells[14,Grid.row];
    FController.Model.caixa := Grid.Cells[15,Grid.row];
    FController.Model.obs := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresassped.LimparTela;  
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

procedure TFrm_ViewERPempresassped.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setid_cupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setcliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setcaixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresassped.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
