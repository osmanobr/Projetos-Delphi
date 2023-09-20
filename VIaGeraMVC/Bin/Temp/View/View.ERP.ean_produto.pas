
unit View.ERP.duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPduplicata = class(TForm) 
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
    FController : TControllerERPduplicata; 
    Fid : Integer;
    Fean : WideString;
    Fid_produto : Integer;
    Fdescricao_produto : WideString;
    Funidade : WideString;
    Fquantidade : Double;
    Fpreco_venda : Double;
    Fprimary_key : Boolean;
    Fean_principal : Boolean;
    Fativo : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setean(const Value : WideString);
    procedure Setid_produto(const Value : Integer);
    procedure Setdescricao_produto(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setprimary_key(const Value : Boolean);
    procedure Setean_principal(const Value : Boolean);
    procedure Setativo(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property ean : WideString         read Fean    write Fean;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property descricao_produto : WideString         read Fdescricao_produto    write Fdescricao_produto;
    property unidade : WideString         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property primary_key : Boolean         read Fprimary_key    write Fprimary_key;
    property ean_principal : Boolean         read Fean_principal    write Fean_principal;
    property ativo : Boolean         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPduplicata : TFrm_ViewERPduplicata; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].primary_key); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean_principal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ean := Edit_ean.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.descricao_produto := Edit_descricao_produto.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.primary_key := Edit_primary_key.text;
      FController.Model.ean_principal := Edit_ean_principal.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPduplicata.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPduplicata.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ean;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := descricao_produto;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := primary_key;  
     Grid.Cells[inttostr(i),0] := ean_principal;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ean := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.descricao_produto := Grid.Cells[3,Grid.row];
    FController.Model.unidade := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.preco_venda := Grid.Cells[6,Grid.row];
    FController.Model.primary_key := Grid.Cells[7,Grid.row];
    FController.Model.ean_principal := Grid.Cells[8,Grid.row];
    FController.Model.ativo := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPduplicata.LimparTela;  
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

procedure TFrm_ViewERPduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setdescricao_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setprimary_key(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setean_principal(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPduplicata.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
