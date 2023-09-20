
unit View.ERP.vendedor;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.vendedor, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendedor = class(TForm) 
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
    FController : TControllerERPvendedor; 
    Fid : Integer;
    Fnome : WideString;
    Ffantasia : WideString;
    Finicio_atividade : TDateTime;
    Fnatureza_juridica : WideString;
    Fqualificacao_responsavel : WideString;
    Fporte : WideString;
    Fopcao_simples : WideString;
    Fcnpj : WideString;
    Fcep : WideString;
    Fendereco : WideString;
    Fcidade : WideString;
    Fuf : WideString;
    Ftelefones : WideString;
    Fsite : WideString;
    Femail : WideString;
    Fcontato : WideString;
    Fsocio1 : WideString;
    Fqualificacao_socio1 : WideString;
    Fsocio2 : WideString;
    Fqualificacao_socio2 : WideString;
    Fatividade : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setfantasia(const Value : WideString);
    procedure Setinicio_atividade(const Value : TDateTime);
    procedure Setnatureza_juridica(const Value : WideString);
    procedure Setqualificacao_responsavel(const Value : WideString);
    procedure Setporte(const Value : WideString);
    procedure Setopcao_simples(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Settelefones(const Value : WideString);
    procedure Setsite(const Value : WideString);
    procedure Setemail(const Value : WideString);
    procedure Setcontato(const Value : WideString);
    procedure Setsocio1(const Value : WideString);
    procedure Setqualificacao_socio1(const Value : WideString);
    procedure Setsocio2(const Value : WideString);
    procedure Setqualificacao_socio2(const Value : WideString);
    procedure Setatividade(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property fantasia : WideString         read Ffantasia    write Ffantasia;
    property inicio_atividade : TDateTime         read Finicio_atividade    write Finicio_atividade;
    property natureza_juridica : WideString         read Fnatureza_juridica    write Fnatureza_juridica;
    property qualificacao_responsavel : WideString         read Fqualificacao_responsavel    write Fqualificacao_responsavel;
    property porte : WideString         read Fporte    write Fporte;
    property opcao_simples : WideString         read Fopcao_simples    write Fopcao_simples;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property cep : WideString         read Fcep    write Fcep;
    property endereco : WideString         read Fendereco    write Fendereco;
    property cidade : WideString         read Fcidade    write Fcidade;
    property uf : WideString         read Fuf    write Fuf;
    property telefones : WideString         read Ftelefones    write Ftelefones;
    property site : WideString         read Fsite    write Fsite;
    property email : WideString         read Femail    write Femail;
    property contato : WideString         read Fcontato    write Fcontato;
    property socio1 : WideString         read Fsocio1    write Fsocio1;
    property qualificacao_socio1 : WideString         read Fqualificacao_socio1    write Fqualificacao_socio1;
    property socio2 : WideString         read Fsocio2    write Fsocio2;
    property qualificacao_socio2 : WideString         read Fqualificacao_socio2    write Fqualificacao_socio2;
    property atividade : indefinido         read Fatividade    write Fatividade;

  end;

var
  Frm_ViewERPvendedor : TFrm_ViewERPvendedor; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 22; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fantasia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio_atividade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].natureza_juridica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qualificacao_responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].opcao_simples); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefones); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].site); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qualificacao_socio1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].socio2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qualificacao_socio2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atividade); 
    end; 
end; 

procedure TFrm_ViewERPvendedor.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.fantasia := Edit_fantasia.text;
      FController.Model.inicio_atividade := Edit_inicio_atividade.text;
      FController.Model.natureza_juridica := Edit_natureza_juridica.text;
      FController.Model.qualificacao_responsavel := Edit_qualificacao_responsavel.text;
      FController.Model.porte := Edit_porte.text;
      FController.Model.opcao_simples := Edit_opcao_simples.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.telefones := Edit_telefones.text;
      FController.Model.site := Edit_site.text;
      FController.Model.email := Edit_email.text;
      FController.Model.contato := Edit_contato.text;
      FController.Model.socio1 := Edit_socio1.text;
      FController.Model.qualificacao_socio1 := Edit_qualificacao_socio1.text;
      FController.Model.socio2 := Edit_socio2.text;
      FController.Model.qualificacao_socio2 := Edit_qualificacao_socio2.text;
      FController.Model.atividade := Edit_atividade.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendedor.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendedor.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendedor.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendedor.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendedor.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendedor.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendedor.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 22;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := fantasia;  
     Grid.Cells[inttostr(i),0] := inicio_atividade;  
     Grid.Cells[inttostr(i),0] := natureza_juridica;  
     Grid.Cells[inttostr(i),0] := qualificacao_responsavel;  
     Grid.Cells[inttostr(i),0] := porte;  
     Grid.Cells[inttostr(i),0] := opcao_simples;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := telefones;  
     Grid.Cells[inttostr(i),0] := site;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := contato;  
     Grid.Cells[inttostr(i),0] := socio1;  
     Grid.Cells[inttostr(i),0] := qualificacao_socio1;  
     Grid.Cells[inttostr(i),0] := socio2;  
     Grid.Cells[inttostr(i),0] := qualificacao_socio2;  
     Grid.Cells[inttostr(i),0] := atividade;  
end;

procedure TFrm_ViewERPvendedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendedor.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendedor.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.fantasia := Grid.Cells[2,Grid.row];
    FController.Model.inicio_atividade := Grid.Cells[3,Grid.row];
    FController.Model.natureza_juridica := Grid.Cells[4,Grid.row];
    FController.Model.qualificacao_responsavel := Grid.Cells[5,Grid.row];
    FController.Model.porte := Grid.Cells[6,Grid.row];
    FController.Model.opcao_simples := Grid.Cells[7,Grid.row];
    FController.Model.cnpj := Grid.Cells[8,Grid.row];
    FController.Model.cep := Grid.Cells[9,Grid.row];
    FController.Model.endereco := Grid.Cells[10,Grid.row];
    FController.Model.cidade := Grid.Cells[11,Grid.row];
    FController.Model.uf := Grid.Cells[12,Grid.row];
    FController.Model.telefones := Grid.Cells[13,Grid.row];
    FController.Model.site := Grid.Cells[14,Grid.row];
    FController.Model.email := Grid.Cells[15,Grid.row];
    FController.Model.contato := Grid.Cells[16,Grid.row];
    FController.Model.socio1 := Grid.Cells[17,Grid.row];
    FController.Model.qualificacao_socio1 := Grid.Cells[18,Grid.row];
    FController.Model.socio2 := Grid.Cells[19,Grid.row];
    FController.Model.qualificacao_socio2 := Grid.Cells[20,Grid.row];
    FController.Model.atividade := Grid.Cells[21,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendedor.LimparTela;  
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

procedure TFrm_ViewERPvendedor.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setfantasia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setinicio_atividade(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setnatureza_juridica(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setqualificacao_responsavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setporte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setopcao_simples(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Settelefones(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setsite(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setcontato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setsocio1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setqualificacao_socio1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setsocio2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setqualificacao_socio2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendedor.Setatividade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
