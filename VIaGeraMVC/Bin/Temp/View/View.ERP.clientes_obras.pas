
unit View.ERP.clientes_fotos_dependentes;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_fotos_dependentes, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientesfotosdependentes = class(TForm) 
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
    FController : TControllerERPclientesfotosdependentes; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_obra : WideString;
    Fresponsavel : WideString;
    Fresponsavel_telefone : WideString;
    Fresponsavel_celular : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcidade : WideString;
    Festado : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fid_cidade : Integer;
    Fid_caixa : Integer;
    Fnome_caixa : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_obra(const Value : WideString);
    procedure Setresponsavel(const Value : WideString);
    procedure Setresponsavel_telefone(const Value : WideString);
    procedure Setresponsavel_celular(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setestado(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setnome_caixa(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_obra : WideString         read Fnome_obra    write Fnome_obra;
    property responsavel : WideString         read Fresponsavel    write Fresponsavel;
    property responsavel_telefone : WideString         read Fresponsavel_telefone    write Fresponsavel_telefone;
    property responsavel_celular : WideString         read Fresponsavel_celular    write Fresponsavel_celular;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property cidade : WideString         read Fcidade    write Fcidade;
    property estado : WideString         read Festado    write Festado;
    property cep : WideString         read Fcep    write Fcep;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property nome_caixa : WideString         read Fnome_caixa    write Fnome_caixa;

  end;

var
  Frm_ViewERPclientesfotosdependentes : TFrm_ViewERPclientesfotosdependentes; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel_telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_caixa); 
    end; 
end; 

procedure TFrm_ViewERPclientesfotosdependentes.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_obra := Edit_nome_obra.text;
      FController.Model.responsavel := Edit_responsavel.text;
      FController.Model.responsavel_telefone := Edit_responsavel_telefone.text;
      FController.Model.responsavel_celular := Edit_responsavel_celular.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.nome_caixa := Edit_nome_caixa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientesfotosdependentes.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientesfotosdependentes.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientesfotosdependentes.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientesfotosdependentes.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientesfotosdependentes.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientesfotosdependentes.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientesfotosdependentes.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_obra;  
     Grid.Cells[inttostr(i),0] := responsavel;  
     Grid.Cells[inttostr(i),0] := responsavel_telefone;  
     Grid.Cells[inttostr(i),0] := responsavel_celular;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := nome_caixa;  
end;

procedure TFrm_ViewERPclientesfotosdependentes.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientesfotosdependentes.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientesfotosdependentes.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.nome_obra := Grid.Cells[2,Grid.row];
    FController.Model.responsavel := Grid.Cells[3,Grid.row];
    FController.Model.responsavel_telefone := Grid.Cells[4,Grid.row];
    FController.Model.responsavel_celular := Grid.Cells[5,Grid.row];
    FController.Model.endereco := Grid.Cells[6,Grid.row];
    FController.Model.bairro := Grid.Cells[7,Grid.row];
    FController.Model.cidade := Grid.Cells[8,Grid.row];
    FController.Model.estado := Grid.Cells[9,Grid.row];
    FController.Model.cep := Grid.Cells[10,Grid.row];
    FController.Model.telefone := Grid.Cells[11,Grid.row];
    FController.Model.celular := Grid.Cells[12,Grid.row];
    FController.Model.id_cidade := Grid.Cells[13,Grid.row];
    FController.Model.id_caixa := Grid.Cells[14,Grid.row];
    FController.Model.nome_caixa := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientesfotosdependentes.LimparTela;  
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

procedure TFrm_ViewERPclientesfotosdependentes.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setnome_obra(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setresponsavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setresponsavel_telefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setresponsavel_celular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesfotosdependentes.Setnome_caixa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
