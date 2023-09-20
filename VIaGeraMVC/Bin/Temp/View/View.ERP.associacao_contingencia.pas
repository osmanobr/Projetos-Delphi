
unit View.ERP.almoxarifado;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.almoxarifado, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPalmoxarifado = class(TForm) 
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
    FController : TControllerERPalmoxarifado; 
    Fid : Integer;
    Fid_produto_new : Integer;
    Fid_produto_old : Integer;
    Fdesc_new : WideString;
    Fdesc_old : WideString;
    Fid_venda : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto_new(const Value : Integer);
    procedure Setid_produto_old(const Value : Integer);
    procedure Setdesc_new(const Value : WideString);
    procedure Setdesc_old(const Value : WideString);
    procedure Setid_venda(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto_new : Integer         read Fid_produto_new    write Fid_produto_new;
    property id_produto_old : Integer         read Fid_produto_old    write Fid_produto_old;
    property desc_new : WideString         read Fdesc_new    write Fdesc_new;
    property desc_old : WideString         read Fdesc_old    write Fdesc_old;
    property id_venda : Integer         read Fid_venda    write Fid_venda;

  end;

var
  Frm_ViewERPalmoxarifado : TFrm_ViewERPalmoxarifado; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto_new); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto_old); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desc_new); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desc_old); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
    end; 
end; 

procedure TFrm_ViewERPalmoxarifado.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto_new := Edit_id_produto_new.text;
      FController.Model.id_produto_old := Edit_id_produto_old.text;
      FController.Model.desc_new := Edit_desc_new.text;
      FController.Model.desc_old := Edit_desc_old.text;
      FController.Model.id_venda := Edit_id_venda.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPalmoxarifado.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPalmoxarifado.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPalmoxarifado.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPalmoxarifado.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPalmoxarifado.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPalmoxarifado.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPalmoxarifado.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto_new;  
     Grid.Cells[inttostr(i),0] := id_produto_old;  
     Grid.Cells[inttostr(i),0] := desc_new;  
     Grid.Cells[inttostr(i),0] := desc_old;  
     Grid.Cells[inttostr(i),0] := id_venda;  
end;

procedure TFrm_ViewERPalmoxarifado.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPalmoxarifado.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPalmoxarifado.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto_new := Grid.Cells[1,Grid.row];
    FController.Model.id_produto_old := Grid.Cells[2,Grid.row];
    FController.Model.desc_new := Grid.Cells[3,Grid.row];
    FController.Model.desc_old := Grid.Cells[4,Grid.row];
    FController.Model.id_venda := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPalmoxarifado.LimparTela;  
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

procedure TFrm_ViewERPalmoxarifado.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPalmoxarifado.Setid_produto_new(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPalmoxarifado.Setid_produto_old(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPalmoxarifado.Setdesc_new(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPalmoxarifado.Setdesc_old(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPalmoxarifado.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
