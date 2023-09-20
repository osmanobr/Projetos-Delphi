
unit View.ERP.venda_item_lote_controle;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_item_lote_controle, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaitemlotecontrole = class(TForm) 
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
    FController : TControllerERPvendaitemlotecontrole; 
    Fid : Integer;
    Fid_venda_item : Integer;
    Fid_produto : Integer;
    Fnro_serie : indefinido;
    Fnumero_telefone : indefinido;
    Fdata_ativacao : TDateTime;
    Fcancelado : indefinido;
    Fid_venda : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnro_serie(const Value : indefinido);
    procedure Setnumero_telefone(const Value : indefinido);
    procedure Setdata_ativacao(const Value : TDateTime);
    procedure Setcancelado(const Value : indefinido);
    procedure Setid_venda(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nro_serie : indefinido         read Fnro_serie    write Fnro_serie;
    property numero_telefone : indefinido         read Fnumero_telefone    write Fnumero_telefone;
    property data_ativacao : TDateTime         read Fdata_ativacao    write Fdata_ativacao;
    property cancelado : indefinido         read Fcancelado    write Fcancelado;
    property id_venda : Integer         read Fid_venda    write Fid_venda;

  end;

var
  Frm_ViewERPvendaitemlotecontrole : TFrm_ViewERPvendaitemlotecontrole; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ativacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
    end; 
end; 

procedure TFrm_ViewERPvendaitemlotecontrole.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nro_serie := Edit_nro_serie.text;
      FController.Model.numero_telefone := Edit_numero_telefone.text;
      FController.Model.data_ativacao := Edit_data_ativacao.text;
      FController.Model.cancelado := Edit_cancelado.text;
      FController.Model.id_venda := Edit_id_venda.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaitemlotecontrole.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaitemlotecontrole.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaitemlotecontrole.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaitemlotecontrole.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaitemlotecontrole.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaitemlotecontrole.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaitemlotecontrole.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nro_serie;  
     Grid.Cells[inttostr(i),0] := numero_telefone;  
     Grid.Cells[inttostr(i),0] := data_ativacao;  
     Grid.Cells[inttostr(i),0] := cancelado;  
     Grid.Cells[inttostr(i),0] := id_venda;  
end;

procedure TFrm_ViewERPvendaitemlotecontrole.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaitemlotecontrole.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaitemlotecontrole.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nro_serie := Grid.Cells[3,Grid.row];
    FController.Model.numero_telefone := Grid.Cells[4,Grid.row];
    FController.Model.data_ativacao := Grid.Cells[5,Grid.row];
    FController.Model.cancelado := Grid.Cells[6,Grid.row];
    FController.Model.id_venda := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaitemlotecontrole.LimparTela;  
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

procedure TFrm_ViewERPvendaitemlotecontrole.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setnro_serie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setnumero_telefone(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setdata_ativacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setcancelado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemlotecontrole.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
