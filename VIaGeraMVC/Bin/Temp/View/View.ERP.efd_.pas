
unit View.ERP.ean_produtos_alterados;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.ean_produtos_alterados, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPeanprodutosalterados = class(TForm) 
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
    FController : TControllerERPeanprodutosalterados; 
    Fid : Integer;
    Fdata : TDateTime;
    Fserie : WideString;
    Fdoc_ini : WideString;
    Fdoc_fim : WideString;
    Fautorizacao : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setserie(const Value : WideString);
    procedure Setdoc_ini(const Value : WideString);
    procedure Setdoc_fim(const Value : WideString);
    procedure Setautorizacao(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property serie : WideString         read Fserie    write Fserie;
    property doc_ini : WideString         read Fdoc_ini    write Fdoc_ini;
    property doc_fim : WideString         read Fdoc_fim    write Fdoc_fim;
    property autorizacao : WideString         read Fautorizacao    write Fautorizacao;

  end;

var
  Frm_ViewERPeanprodutosalterados : TFrm_ViewERPeanprodutosalterados; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].doc_ini); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].doc_fim); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].autorizacao); 
    end; 
end; 

procedure TFrm_ViewERPeanprodutosalterados.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.doc_ini := Edit_doc_ini.text;
      FController.Model.doc_fim := Edit_doc_fim.text;
      FController.Model.autorizacao := Edit_autorizacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPeanprodutosalterados.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPeanprodutosalterados.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPeanprodutosalterados.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPeanprodutosalterados.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPeanprodutosalterados.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPeanprodutosalterados.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPeanprodutosalterados.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := doc_ini;  
     Grid.Cells[inttostr(i),0] := doc_fim;  
     Grid.Cells[inttostr(i),0] := autorizacao;  
end;

procedure TFrm_ViewERPeanprodutosalterados.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPeanprodutosalterados.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPeanprodutosalterados.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.serie := Grid.Cells[2,Grid.row];
    FController.Model.doc_ini := Grid.Cells[3,Grid.row];
    FController.Model.doc_fim := Grid.Cells[4,Grid.row];
    FController.Model.autorizacao := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPeanprodutosalterados.LimparTela;  
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

procedure TFrm_ViewERPeanprodutosalterados.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPeanprodutosalterados.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPeanprodutosalterados.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPeanprodutosalterados.Setdoc_ini(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPeanprodutosalterados.Setdoc_fim(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPeanprodutosalterados.Setautorizacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
