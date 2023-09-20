
unit View.ERP.grupo_produto;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.grupo_produto, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPgrupoproduto = class(TForm) 
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
    FController : TControllerERPgrupoproduto; 
    Fcodigo : WideString;
    Fex : WideString;
    Ftipo : Integer;
    Fdescricao : indefinido;
    Fnacionalfederal : Double;
    Fimportadosfederal : Double;
    Festadual : Double;
    Fmunicipal : Double;
    Fvigenciainicio : WideString;
    Fvigenciafim : WideString;
    Fchave : WideString;
    Fversao : WideString;
    Ffonte : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setcodigo(const Value : WideString);
    procedure Setex(const Value : WideString);
    procedure Settipo(const Value : Integer);
    procedure Setdescricao(const Value : indefinido);
    procedure Setnacionalfederal(const Value : Double);
    procedure Setimportadosfederal(const Value : Double);
    procedure Setestadual(const Value : Double);
    procedure Setmunicipal(const Value : Double);
    procedure Setvigenciainicio(const Value : WideString);
    procedure Setvigenciafim(const Value : WideString);
    procedure Setchave(const Value : WideString);
    procedure Setversao(const Value : WideString);
    procedure Setfonte(const Value : WideString);

  public

    property codigo : WideString         read Fcodigo    write Fcodigo;
    property ex : WideString         read Fex    write Fex;
    property tipo : Integer         read Ftipo    write Ftipo;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property nacionalfederal : Double         read Fnacionalfederal    write Fnacionalfederal;
    property importadosfederal : Double         read Fimportadosfederal    write Fimportadosfederal;
    property estadual : Double         read Festadual    write Festadual;
    property municipal : Double         read Fmunicipal    write Fmunicipal;
    property vigenciainicio : WideString         read Fvigenciainicio    write Fvigenciainicio;
    property vigenciafim : WideString         read Fvigenciafim    write Fvigenciafim;
    property chave : WideString         read Fchave    write Fchave;
    property versao : WideString         read Fversao    write Fversao;
    property fonte : WideString         read Ffonte    write Ffonte;

  end;

var
  Frm_ViewERPgrupoproduto : TFrm_ViewERPgrupoproduto; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ex); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nacionalfederal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].importadosfederal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vigenciainicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vigenciafim); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fonte); 
    end; 
end; 

procedure TFrm_ViewERPgrupoproduto.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.codigo := Edit_codigo.text;
      FController.Model.ex := Edit_ex.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.nacionalfederal := Edit_nacionalfederal.text;
      FController.Model.importadosfederal := Edit_importadosfederal.text;
      FController.Model.estadual := Edit_estadual.text;
      FController.Model.municipal := Edit_municipal.text;
      FController.Model.vigenciainicio := Edit_vigenciainicio.text;
      FController.Model.vigenciafim := Edit_vigenciafim.text;
      FController.Model.chave := Edit_chave.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.fonte := Edit_fonte.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPgrupoproduto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPgrupoproduto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPgrupoproduto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPgrupoproduto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPgrupoproduto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPgrupoproduto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPgrupoproduto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := codigo;  
     Grid.Cells[inttostr(i),0] := ex;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := nacionalfederal;  
     Grid.Cells[inttostr(i),0] := importadosfederal;  
     Grid.Cells[inttostr(i),0] := estadual;  
     Grid.Cells[inttostr(i),0] := municipal;  
     Grid.Cells[inttostr(i),0] := vigenciainicio;  
     Grid.Cells[inttostr(i),0] := vigenciafim;  
     Grid.Cells[inttostr(i),0] := chave;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := fonte;  
end;

procedure TFrm_ViewERPgrupoproduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPgrupoproduto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPgrupoproduto.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.codigo := Grid.Cells[0,Grid.row];
    FController.Model.ex := Grid.Cells[1,Grid.row];
    FController.Model.tipo := Grid.Cells[2,Grid.row];
    FController.Model.descricao := Grid.Cells[3,Grid.row];
    FController.Model.nacionalfederal := Grid.Cells[4,Grid.row];
    FController.Model.importadosfederal := Grid.Cells[5,Grid.row];
    FController.Model.estadual := Grid.Cells[6,Grid.row];
    FController.Model.municipal := Grid.Cells[7,Grid.row];
    FController.Model.vigenciainicio := Grid.Cells[8,Grid.row];
    FController.Model.vigenciafim := Grid.Cells[9,Grid.row];
    FController.Model.chave := Grid.Cells[10,Grid.row];
    FController.Model.versao := Grid.Cells[11,Grid.row];
    FController.Model.fonte := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPgrupoproduto.LimparTela;  
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

procedure TFrm_ViewERPgrupoproduto.Setcodigo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setex(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Settipo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setnacionalfederal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setimportadosfederal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setestadual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setmunicipal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setvigenciainicio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setvigenciafim(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setchave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setversao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupoproduto.Setfonte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
