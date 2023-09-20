
unit View.ERP.compra_duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.compra_duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcompraduplicata = class(TForm) 
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
    FController : TControllerERPcompraduplicata; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_compra : Integer;
    Fid_compra_item : Integer;
    Fid_produto : Integer;
    Fcor : WideString;
    Ftam : WideString;
    Fquantidade : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_compra_item(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setcor(const Value : WideString);
    procedure Settam(const Value : WideString);
    procedure Setquantidade(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_compra_item : Integer         read Fid_compra_item    write Fid_compra_item;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property cor : WideString         read Fcor    write Fcor;
    property tam : WideString         read Ftam    write Ftam;
    property quantidade : Double         read Fquantidade    write Fquantidade;

  end;

var
  Frm_ViewERPcompraduplicata : TFrm_ViewERPcompraduplicata; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
    end; 
end; 

procedure TFrm_ViewERPcompraduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_compra_item := Edit_id_compra_item.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.tam := Edit_tam.text;
      FController.Model.quantidade := Edit_quantidade.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcompraduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcompraduplicata.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcompraduplicata.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcompraduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcompraduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcompraduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcompraduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_compra_item;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := tam;  
     Grid.Cells[inttostr(i),0] := quantidade;  
end;

procedure TFrm_ViewERPcompraduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcompraduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcompraduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_compra := Grid.Cells[2,Grid.row];
    FController.Model.id_compra_item := Grid.Cells[3,Grid.row];
    FController.Model.id_produto := Grid.Cells[4,Grid.row];
    FController.Model.cor := Grid.Cells[5,Grid.row];
    FController.Model.tam := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcompraduplicata.LimparTela;  
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

procedure TFrm_ViewERPcompraduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setid_compra_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setcor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Settam(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraduplicata.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
