
unit View.ERP.inventario_mes;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.inventario_mes, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPinventariomes = class(TForm) 
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
    FController : TControllerERPinventariomes; 
    Fid : Integer;
    Fcodigo : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Festoque_calculado : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_total : Double;
    Fano : WideString;
    Fst : WideString;
    Fdatahora : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setcodigo(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setestoque_calculado(const Value : Double);
    procedure Setestoque_atual(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setpreco_total(const Value : Double);
    procedure Setano(const Value : WideString);
    procedure Setst(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property codigo : Integer         read Fcodigo    write Fcodigo;
    property nome : WideString         read Fnome    write Fnome;
    property unidade : WideString         read Funidade    write Funidade;
    property estoque_calculado : Double         read Festoque_calculado    write Festoque_calculado;
    property estoque_atual : Double         read Festoque_atual    write Festoque_atual;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property preco_total : Double         read Fpreco_total    write Fpreco_total;
    property ano : WideString         read Fano    write Fano;
    property st : WideString         read Fst    write Fst;
    property datahora : indefinido         read Fdatahora    write Fdatahora;

  end;

var
  Frm_ViewERPinventariomes : TFrm_ViewERPinventariomes; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_calculado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ano); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
    end; 
end; 

procedure TFrm_ViewERPinventariomes.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.codigo := Edit_codigo.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.estoque_calculado := Edit_estoque_calculado.text;
      FController.Model.estoque_atual := Edit_estoque_atual.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.preco_total := Edit_preco_total.text;
      FController.Model.ano := Edit_ano.text;
      FController.Model.st := Edit_st.text;
      FController.Model.datahora := Edit_datahora.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPinventariomes.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPinventariomes.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPinventariomes.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPinventariomes.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPinventariomes.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPinventariomes.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPinventariomes.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := codigo;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := estoque_calculado;  
     Grid.Cells[inttostr(i),0] := estoque_atual;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := preco_total;  
     Grid.Cells[inttostr(i),0] := ano;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := datahora;  
end;

procedure TFrm_ViewERPinventariomes.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPinventariomes.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPinventariomes.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.codigo := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.unidade := Grid.Cells[3,Grid.row];
    FController.Model.estoque_calculado := Grid.Cells[4,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[5,Grid.row];
    FController.Model.preco_custo := Grid.Cells[6,Grid.row];
    FController.Model.preco_total := Grid.Cells[7,Grid.row];
    FController.Model.ano := Grid.Cells[8,Grid.row];
    FController.Model.st := Grid.Cells[9,Grid.row];
    FController.Model.datahora := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPinventariomes.LimparTela;  
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

procedure TFrm_ViewERPinventariomes.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setcodigo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setestoque_calculado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setpreco_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setano(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinventariomes.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
