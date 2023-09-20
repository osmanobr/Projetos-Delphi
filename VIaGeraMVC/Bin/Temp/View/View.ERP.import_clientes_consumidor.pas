
unit View.ERP.import_clientes_alterados;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_clientes_alterados, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportclientesalterados = class(TForm) 
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
    FController : TControllerERPimportclientesalterados; 
    Fid : Integer;
    Fid_cidade : Integer;
    Fnome : WideString;
    Fdocumento : WideString;
    Fendereco : WideString;
    Fnumero : WideString;
    Fbairro : WideString;
    Fcidade : WideString;
    Festado : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fdatamov : indefinido;
    Frg : WideString;
    Ffisica : Integer;
    Fid_erp : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cidade(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setdocumento(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setnumero(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setestado(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setdatamov(const Value : indefinido);
    procedure Setrg(const Value : WideString);
    procedure Setfisica(const Value : Integer);
    procedure Setid_erp(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property nome : WideString         read Fnome    write Fnome;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property endereco : WideString         read Fendereco    write Fendereco;
    property numero : WideString         read Fnumero    write Fnumero;
    property bairro : WideString         read Fbairro    write Fbairro;
    property cidade : WideString         read Fcidade    write Fcidade;
    property estado : WideString         read Festado    write Festado;
    property cep : WideString         read Fcep    write Fcep;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property datamov : indefinido         read Fdatamov    write Fdatamov;
    property rg : WideString         read Frg    write Frg;
    property fisica : Integer         read Ffisica    write Ffisica;
    property id_erp : Integer         read Fid_erp    write Fid_erp;

  end;

var
  Frm_ViewERPimportclientesalterados : TFrm_ViewERPimportclientesalterados; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datamov); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fisica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_erp); 
    end; 
end; 

procedure TFrm_ViewERPimportclientesalterados.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.datamov := Edit_datamov.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.fisica := Edit_fisica.text;
      FController.Model.id_erp := Edit_id_erp.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportclientesalterados.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportclientesalterados.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportclientesalterados.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportclientesalterados.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportclientesalterados.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportclientesalterados.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportclientesalterados.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := datamov;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := fisica;  
     Grid.Cells[inttostr(i),0] := id_erp;  
end;

procedure TFrm_ViewERPimportclientesalterados.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportclientesalterados.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportclientesalterados.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cidade := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.documento := Grid.Cells[3,Grid.row];
    FController.Model.endereco := Grid.Cells[4,Grid.row];
    FController.Model.numero := Grid.Cells[5,Grid.row];
    FController.Model.bairro := Grid.Cells[6,Grid.row];
    FController.Model.cidade := Grid.Cells[7,Grid.row];
    FController.Model.estado := Grid.Cells[8,Grid.row];
    FController.Model.cep := Grid.Cells[9,Grid.row];
    FController.Model.telefone := Grid.Cells[10,Grid.row];
    FController.Model.celular := Grid.Cells[11,Grid.row];
    FController.Model.datamov := Grid.Cells[12,Grid.row];
    FController.Model.rg := Grid.Cells[13,Grid.row];
    FController.Model.fisica := Grid.Cells[14,Grid.row];
    FController.Model.id_erp := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportclientesalterados.LimparTela;  
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

procedure TFrm_ViewERPimportclientesalterados.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setdatamov(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setfisica(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportclientesalterados.Setid_erp(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
