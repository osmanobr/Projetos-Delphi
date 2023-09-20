
unit View.ERP.leitura_coleta_lote;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.leitura_coleta_lote, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPleituracoletalote = class(TForm) 
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
    FController : TControllerERPleituracoletalote; 
    Fid : Integer;
    Fid_modelo : Integer;
    Fid_cidade : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Festado : WideString;
    Fcidade : WideString;
    Fcep : WideString;
    Fresponsavel : WideString;
    Fcontato : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fdatahora : indefinido;
    Fultimo_fator : Double;
    Fultimo_valor : Double;
    Fobservacao : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_modelo(const Value : Integer);
    procedure Setid_cidade(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setestado(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setresponsavel(const Value : WideString);
    procedure Setcontato(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);
    procedure Setultimo_fator(const Value : Double);
    procedure Setultimo_valor(const Value : Double);
    procedure Setobservacao(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_modelo : Integer         read Fid_modelo    write Fid_modelo;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property nome : WideString         read Fnome    write Fnome;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property estado : WideString         read Festado    write Festado;
    property cidade : WideString         read Fcidade    write Fcidade;
    property cep : WideString         read Fcep    write Fcep;
    property responsavel : WideString         read Fresponsavel    write Fresponsavel;
    property contato : WideString         read Fcontato    write Fcontato;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property ultimo_fator : Double         read Fultimo_fator    write Fultimo_fator;
    property ultimo_valor : Double         read Fultimo_valor    write Fultimo_valor;
    property observacao : WideString         read Fobservacao    write Fobservacao;

  end;

var
  Frm_ViewERPleituracoletalote : TFrm_ViewERPleituracoletalote; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ultimo_fator); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ultimo_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
    end; 
end; 

procedure TFrm_ViewERPleituracoletalote.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_modelo := Edit_id_modelo.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.responsavel := Edit_responsavel.text;
      FController.Model.contato := Edit_contato.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.ultimo_fator := Edit_ultimo_fator.text;
      FController.Model.ultimo_valor := Edit_ultimo_valor.text;
      FController.Model.observacao := Edit_observacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPleituracoletalote.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPleituracoletalote.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPleituracoletalote.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPleituracoletalote.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPleituracoletalote.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPleituracoletalote.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPleituracoletalote.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_modelo;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := responsavel;  
     Grid.Cells[inttostr(i),0] := contato;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := ultimo_fator;  
     Grid.Cells[inttostr(i),0] := ultimo_valor;  
     Grid.Cells[inttostr(i),0] := observacao;  
end;

procedure TFrm_ViewERPleituracoletalote.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPleituracoletalote.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPleituracoletalote.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_modelo := Grid.Cells[1,Grid.row];
    FController.Model.id_cidade := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.endereco := Grid.Cells[4,Grid.row];
    FController.Model.bairro := Grid.Cells[5,Grid.row];
    FController.Model.estado := Grid.Cells[6,Grid.row];
    FController.Model.cidade := Grid.Cells[7,Grid.row];
    FController.Model.cep := Grid.Cells[8,Grid.row];
    FController.Model.responsavel := Grid.Cells[9,Grid.row];
    FController.Model.contato := Grid.Cells[10,Grid.row];
    FController.Model.telefone := Grid.Cells[11,Grid.row];
    FController.Model.celular := Grid.Cells[12,Grid.row];
    FController.Model.datahora := Grid.Cells[13,Grid.row];
    FController.Model.ultimo_fator := Grid.Cells[14,Grid.row];
    FController.Model.ultimo_valor := Grid.Cells[15,Grid.row];
    FController.Model.observacao := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPleituracoletalote.LimparTela;  
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

procedure TFrm_ViewERPleituracoletalote.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setid_modelo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setresponsavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setcontato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setultimo_fator(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setultimo_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletalote.Setobservacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
