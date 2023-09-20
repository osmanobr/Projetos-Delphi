
unit View.ERP.cheques_emitidos_excluidos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cheques_emitidos_excluidos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPchequesemitidosexcluidos = class(TForm) 
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
    FController : TControllerERPchequesemitidosexcluidos; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fuf : WideString;
    Fclick : Boolean;
    Fidibge : WideString;
    Fiduf : WideString;
    Fpais : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setidibge(const Value : WideString);
    procedure Setiduf(const Value : WideString);
    procedure Setpais(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property uf : WideString         read Fuf    write Fuf;
    property click : Boolean         read Fclick    write Fclick;
    property idibge : WideString         read Fidibge    write Fidibge;
    property iduf : WideString         read Fiduf    write Fiduf;
    property pais : WideString         read Fpais    write Fpais;

  end;

var
  Frm_ViewERPchequesemitidosexcluidos : TFrm_ViewERPchequesemitidosexcluidos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].idibge); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iduf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pais); 
    end; 
end; 

procedure TFrm_ViewERPchequesemitidosexcluidos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.click := Edit_click.text;
      FController.Model.idibge := Edit_idibge.text;
      FController.Model.iduf := Edit_iduf.text;
      FController.Model.pais := Edit_pais.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPchequesemitidosexcluidos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPchequesemitidosexcluidos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPchequesemitidosexcluidos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPchequesemitidosexcluidos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPchequesemitidosexcluidos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPchequesemitidosexcluidos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPchequesemitidosexcluidos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := idibge;  
     Grid.Cells[inttostr(i),0] := iduf;  
     Grid.Cells[inttostr(i),0] := pais;  
end;

procedure TFrm_ViewERPchequesemitidosexcluidos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPchequesemitidosexcluidos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPchequesemitidosexcluidos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.uf := Grid.Cells[3,Grid.row];
    FController.Model.click := Grid.Cells[4,Grid.row];
    FController.Model.idibge := Grid.Cells[5,Grid.row];
    FController.Model.iduf := Grid.Cells[6,Grid.row];
    FController.Model.pais := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPchequesemitidosexcluidos.LimparTela;  
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

procedure TFrm_ViewERPchequesemitidosexcluidos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setidibge(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setiduf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPchequesemitidosexcluidos.Setpais(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
