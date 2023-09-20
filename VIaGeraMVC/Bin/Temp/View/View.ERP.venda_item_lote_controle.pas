
unit View.ERP.venda_item_alteracao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_item_alteracao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaitemalteracao = class(TForm) 
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
    FController : TControllerERPvendaitemalteracao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda_item : Integer;
    Fid_venda : Integer;
    Fid_lote : Integer;
    Fid_produto : Integer;
    Fgerado : Boolean;
    Fquantidade : Double;
    Freserva : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_lote(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setgerado(const Value : Boolean);
    procedure Setquantidade(const Value : Double);
    procedure Setreserva(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_lote : Integer         read Fid_lote    write Fid_lote;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property gerado : Boolean         read Fgerado    write Fgerado;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property reserva : Boolean         read Freserva    write Freserva;

  end;

var
  Frm_ViewERPvendaitemalteracao : TFrm_ViewERPvendaitemalteracao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reserva); 
    end; 
end; 

procedure TFrm_ViewERPvendaitemalteracao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_lote := Edit_id_lote.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.reserva := Edit_reserva.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaitemalteracao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaitemalteracao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaitemalteracao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaitemalteracao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaitemalteracao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaitemalteracao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaitemalteracao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_lote;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := reserva;  
end;

procedure TFrm_ViewERPvendaitemalteracao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaitemalteracao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaitemalteracao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[2,Grid.row];
    FController.Model.id_venda := Grid.Cells[3,Grid.row];
    FController.Model.id_lote := Grid.Cells[4,Grid.row];
    FController.Model.id_produto := Grid.Cells[5,Grid.row];
    FController.Model.gerado := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
    FController.Model.reserva := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaitemalteracao.LimparTela;  
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

procedure TFrm_ViewERPvendaitemalteracao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setgerado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemalteracao.Setreserva(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
