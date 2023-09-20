
unit View.ERP.controle_contador_xml;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.controle_contador_xml, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontrolecontadorxml = class(TForm) 
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
    FController : TControllerERPcontrolecontadorxml; 
    Fid : Integer;
    Fid_controle_entrega : Integer;
    Fid_venda_item : Integer;
    Fquantidade_entregue : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_controle_entrega(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setquantidade_entregue(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_controle_entrega : Integer         read Fid_controle_entrega    write Fid_controle_entrega;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property quantidade_entregue : Double         read Fquantidade_entregue    write Fquantidade_entregue;

  end;

var
  Frm_ViewERPcontrolecontadorxml : TFrm_ViewERPcontrolecontadorxml; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 4; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_controle_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_entregue); 
    end; 
end; 

procedure TFrm_ViewERPcontrolecontadorxml.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_controle_entrega := Edit_id_controle_entrega.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.quantidade_entregue := Edit_quantidade_entregue.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontrolecontadorxml.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontrolecontadorxml.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontrolecontadorxml.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontrolecontadorxml.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontrolecontadorxml.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontrolecontadorxml.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontrolecontadorxml.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 4;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_controle_entrega;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := quantidade_entregue;  
end;

procedure TFrm_ViewERPcontrolecontadorxml.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontrolecontadorxml.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontrolecontadorxml.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_controle_entrega := Grid.Cells[1,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[2,Grid.row];
    FController.Model.quantidade_entregue := Grid.Cells[3,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontrolecontadorxml.LimparTela;  
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

procedure TFrm_ViewERPcontrolecontadorxml.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolecontadorxml.Setid_controle_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolecontadorxml.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolecontadorxml.Setquantidade_entregue(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
