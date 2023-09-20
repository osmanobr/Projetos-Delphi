
unit View.ERP.clientes_alterados;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_alterados, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientesalterados = class(TForm) 
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
    FController : TControllerERPclientesalterados; 
    Fid : Integer;
    Fid_controle_proprio : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fdata_venda : TDateTime;
    Fvalidade : Integer;
    Fdata_vencimento : TDateTime;
    Fid_venda : Integer;
    Fid_maquina : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_controle_proprio(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setdata_venda(const Value : TDateTime);
    procedure Setvalidade(const Value : Integer);
    procedure Setdata_vencimento(const Value : TDateTime);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_maquina(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_controle_proprio : Integer         read Fid_controle_proprio    write Fid_controle_proprio;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property data_venda : TDateTime         read Fdata_venda    write Fdata_venda;
    property validade : Integer         read Fvalidade    write Fvalidade;
    property data_vencimento : TDateTime         read Fdata_vencimento    write Fdata_vencimento;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_maquina : Integer         read Fid_maquina    write Fid_maquina;

  end;

var
  Frm_ViewERPclientesalterados : TFrm_ViewERPclientesalterados; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_controle_proprio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_maquina); 
    end; 
end; 

procedure TFrm_ViewERPclientesalterados.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_controle_proprio := Edit_id_controle_proprio.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.data_venda := Edit_data_venda.text;
      FController.Model.validade := Edit_validade.text;
      FController.Model.data_vencimento := Edit_data_vencimento.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_maquina := Edit_id_maquina.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientesalterados.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientesalterados.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientesalterados.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientesalterados.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientesalterados.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientesalterados.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientesalterados.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_controle_proprio;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := data_venda;  
     Grid.Cells[inttostr(i),0] := validade;  
     Grid.Cells[inttostr(i),0] := data_vencimento;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_maquina;  
end;

procedure TFrm_ViewERPclientesalterados.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientesalterados.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientesalterados.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_controle_proprio := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.quantidade := Grid.Cells[4,Grid.row];
    FController.Model.data_venda := Grid.Cells[5,Grid.row];
    FController.Model.validade := Grid.Cells[6,Grid.row];
    FController.Model.data_vencimento := Grid.Cells[7,Grid.row];
    FController.Model.id_venda := Grid.Cells[8,Grid.row];
    FController.Model.id_maquina := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientesalterados.LimparTela;  
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

procedure TFrm_ViewERPclientesalterados.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setid_controle_proprio(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setdata_venda(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setvalidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setdata_vencimento(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesalterados.Setid_maquina(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
