
unit View.ERP.setor;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.setor, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPsetor = class(TForm) 
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
    FController : TControllerERPsetor; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fversao : indefinido;
    Flinguagem_programacao : indefinido;
    Fcodigo_md5 : indefinido;
    Fplataforma : indefinido;
    Fbanco_dados : indefinido;
    Fsistema_operacional : indefinido;
    Fimpressora_fiscal : indefinido;
    Ftipo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setversao(const Value : indefinido);
    procedure Setlinguagem_programacao(const Value : indefinido);
    procedure Setcodigo_md5(const Value : indefinido);
    procedure Setplataforma(const Value : indefinido);
    procedure Setbanco_dados(const Value : indefinido);
    procedure Setsistema_operacional(const Value : indefinido);
    procedure Setimpressora_fiscal(const Value : indefinido);
    procedure Settipo(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property versao : indefinido         read Fversao    write Fversao;
    property linguagem_programacao : indefinido         read Flinguagem_programacao    write Flinguagem_programacao;
    property codigo_md5 : indefinido         read Fcodigo_md5    write Fcodigo_md5;
    property plataforma : indefinido         read Fplataforma    write Fplataforma;
    property banco_dados : indefinido         read Fbanco_dados    write Fbanco_dados;
    property sistema_operacional : indefinido         read Fsistema_operacional    write Fsistema_operacional;
    property impressora_fiscal : indefinido         read Fimpressora_fiscal    write Fimpressora_fiscal;
    property tipo : indefinido         read Ftipo    write Ftipo;

  end;

var
  Frm_ViewERPsetor : TFrm_ViewERPsetor; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].linguagem_programacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_md5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].plataforma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].banco_dados); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sistema_operacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impressora_fiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
    end; 
end; 

procedure TFrm_ViewERPsetor.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.linguagem_programacao := Edit_linguagem_programacao.text;
      FController.Model.codigo_md5 := Edit_codigo_md5.text;
      FController.Model.plataforma := Edit_plataforma.text;
      FController.Model.banco_dados := Edit_banco_dados.text;
      FController.Model.sistema_operacional := Edit_sistema_operacional.text;
      FController.Model.impressora_fiscal := Edit_impressora_fiscal.text;
      FController.Model.tipo := Edit_tipo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPsetor.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPsetor.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPsetor.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPsetor.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPsetor.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPsetor.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPsetor.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := linguagem_programacao;  
     Grid.Cells[inttostr(i),0] := codigo_md5;  
     Grid.Cells[inttostr(i),0] := plataforma;  
     Grid.Cells[inttostr(i),0] := banco_dados;  
     Grid.Cells[inttostr(i),0] := sistema_operacional;  
     Grid.Cells[inttostr(i),0] := impressora_fiscal;  
     Grid.Cells[inttostr(i),0] := tipo;  
end;

procedure TFrm_ViewERPsetor.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPsetor.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPsetor.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.versao := Grid.Cells[3,Grid.row];
    FController.Model.linguagem_programacao := Grid.Cells[4,Grid.row];
    FController.Model.codigo_md5 := Grid.Cells[5,Grid.row];
    FController.Model.plataforma := Grid.Cells[6,Grid.row];
    FController.Model.banco_dados := Grid.Cells[7,Grid.row];
    FController.Model.sistema_operacional := Grid.Cells[8,Grid.row];
    FController.Model.impressora_fiscal := Grid.Cells[9,Grid.row];
    FController.Model.tipo := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPsetor.LimparTela;  
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

procedure TFrm_ViewERPsetor.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setversao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setlinguagem_programacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setcodigo_md5(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setplataforma(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setbanco_dados(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setsistema_operacional(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Setimpressora_fiscal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsetor.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
