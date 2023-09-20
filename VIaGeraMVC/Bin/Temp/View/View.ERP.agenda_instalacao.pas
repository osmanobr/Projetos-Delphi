
unit View.ERP.agenda_carga;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.agenda_carga, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPagendacarga = class(TForm) 
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
    FController : TControllerERPagendacarga; 
    Fid : Integer;
    Fcadastro : indefinido;
    Fnome : WideString;
    Ftelefone : WideString;
    Fcpf : WideString;
    Femail : WideString;
    Fdata_agenda : TDateTime;
    Fhora_agenda : WideString;
    Fcondominio_apto : WideString;
    Fvalor : Double;
    Fforma_pag : WideString;
    Fservicos : WideString;
    Ffuncionario : WideString;
    Fobs : indefinido;
    Ftipo_servico : Integer;
    Ftipo_estado : Integer;
    Ftipo_nf : Integer;
    Fpagou : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcadastro(const Value : indefinido);
    procedure Setnome(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setemail(const Value : WideString);
    procedure Setdata_agenda(const Value : TDateTime);
    procedure Sethora_agenda(const Value : WideString);
    procedure Setcondominio_apto(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setforma_pag(const Value : WideString);
    procedure Setservicos(const Value : WideString);
    procedure Setfuncionario(const Value : WideString);
    procedure Setobs(const Value : indefinido);
    procedure Settipo_servico(const Value : Integer);
    procedure Settipo_estado(const Value : Integer);
    procedure Settipo_nf(const Value : Integer);
    procedure Setpagou(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property cadastro : indefinido         read Fcadastro    write Fcadastro;
    property nome : WideString         read Fnome    write Fnome;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property cpf : WideString         read Fcpf    write Fcpf;
    property email : WideString         read Femail    write Femail;
    property data_agenda : TDateTime         read Fdata_agenda    write Fdata_agenda;
    property hora_agenda : WideString         read Fhora_agenda    write Fhora_agenda;
    property condominio_apto : WideString         read Fcondominio_apto    write Fcondominio_apto;
    property valor : Double         read Fvalor    write Fvalor;
    property forma_pag : WideString         read Fforma_pag    write Fforma_pag;
    property servicos : WideString         read Fservicos    write Fservicos;
    property funcionario : WideString         read Ffuncionario    write Ffuncionario;
    property obs : indefinido         read Fobs    write Fobs;
    property tipo_servico : Integer         read Ftipo_servico    write Ftipo_servico;
    property tipo_estado : Integer         read Ftipo_estado    write Ftipo_estado;
    property tipo_nf : Integer         read Ftipo_nf    write Ftipo_nf;
    property pagou : Boolean         read Fpagou    write Fpagou;

  end;

var
  Frm_ViewERPagendacarga : TFrm_ViewERPagendacarga; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cadastro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_agenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_agenda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condominio_apto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].forma_pag); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].servicos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pagou); 
    end; 
end; 

procedure TFrm_ViewERPagendacarga.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.cadastro := Edit_cadastro.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.email := Edit_email.text;
      FController.Model.data_agenda := Edit_data_agenda.text;
      FController.Model.hora_agenda := Edit_hora_agenda.text;
      FController.Model.condominio_apto := Edit_condominio_apto.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.forma_pag := Edit_forma_pag.text;
      FController.Model.servicos := Edit_servicos.text;
      FController.Model.funcionario := Edit_funcionario.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.tipo_servico := Edit_tipo_servico.text;
      FController.Model.tipo_estado := Edit_tipo_estado.text;
      FController.Model.tipo_nf := Edit_tipo_nf.text;
      FController.Model.pagou := Edit_pagou.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPagendacarga.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPagendacarga.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPagendacarga.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPagendacarga.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPagendacarga.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPagendacarga.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPagendacarga.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := cadastro;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := data_agenda;  
     Grid.Cells[inttostr(i),0] := hora_agenda;  
     Grid.Cells[inttostr(i),0] := condominio_apto;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := forma_pag;  
     Grid.Cells[inttostr(i),0] := servicos;  
     Grid.Cells[inttostr(i),0] := funcionario;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := tipo_servico;  
     Grid.Cells[inttostr(i),0] := tipo_estado;  
     Grid.Cells[inttostr(i),0] := tipo_nf;  
     Grid.Cells[inttostr(i),0] := pagou;  
end;

procedure TFrm_ViewERPagendacarga.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPagendacarga.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPagendacarga.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.cadastro := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.telefone := Grid.Cells[3,Grid.row];
    FController.Model.cpf := Grid.Cells[4,Grid.row];
    FController.Model.email := Grid.Cells[5,Grid.row];
    FController.Model.data_agenda := Grid.Cells[6,Grid.row];
    FController.Model.hora_agenda := Grid.Cells[7,Grid.row];
    FController.Model.condominio_apto := Grid.Cells[8,Grid.row];
    FController.Model.valor := Grid.Cells[9,Grid.row];
    FController.Model.forma_pag := Grid.Cells[10,Grid.row];
    FController.Model.servicos := Grid.Cells[11,Grid.row];
    FController.Model.funcionario := Grid.Cells[12,Grid.row];
    FController.Model.obs := Grid.Cells[13,Grid.row];
    FController.Model.tipo_servico := Grid.Cells[14,Grid.row];
    FController.Model.tipo_estado := Grid.Cells[15,Grid.row];
    FController.Model.tipo_nf := Grid.Cells[16,Grid.row];
    FController.Model.pagou := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPagendacarga.LimparTela;  
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

procedure TFrm_ViewERPagendacarga.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setcadastro(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setdata_agenda(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Sethora_agenda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setcondominio_apto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setforma_pag(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setservicos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setfuncionario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Settipo_servico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Settipo_estado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Settipo_nf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPagendacarga.Setpagou(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
