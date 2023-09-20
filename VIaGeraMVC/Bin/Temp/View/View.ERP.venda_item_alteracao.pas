
unit View.ERP.venda_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaitem = class(TForm) 
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
    FController : TControllerERPvendaitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda : Integer;
    Fid_venda_item : Integer;
    Fdescricao_item : indefinido;
    Fdata_alteracao : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setdescricao_item(const Value : indefinido);
    procedure Setdata_alteracao(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property descricao_item : indefinido         read Fdescricao_item    write Fdescricao_item;
    property data_alteracao : TDateTime         read Fdata_alteracao    write Fdata_alteracao;

  end;

var
  Frm_ViewERPvendaitem : TFrm_ViewERPvendaitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_alteracao); 
    end; 
end; 

procedure TFrm_ViewERPvendaitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.descricao_item := Edit_descricao_item.text;
      FController.Model.data_alteracao := Edit_data_alteracao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := descricao_item;  
     Grid.Cells[inttostr(i),0] := data_alteracao;  
end;

procedure TFrm_ViewERPvendaitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[3,Grid.row];
    FController.Model.descricao_item := Grid.Cells[4,Grid.row];
    FController.Model.data_alteracao := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaitem.LimparTela;  
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

procedure TFrm_ViewERPvendaitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitem.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitem.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitem.Setdescricao_item(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitem.Setdata_alteracao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
