
unit View.ERP.clientes_propriedades;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_propriedades, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientespropriedades = class(TForm) 
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
    FController : TControllerERPclientespropriedades; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fcontrato : WideString;
    Fdata_inclusao : TDateTime;
    Fdata_exclusao : TDateTime;
    Fvalor : Double;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setcontrato(const Value : WideString);
    procedure Setdata_inclusao(const Value : TDateTime);
    procedure Setdata_exclusao(const Value : TDateTime);
    procedure Setvalor(const Value : Double);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property contrato : WideString         read Fcontrato    write Fcontrato;
    property data_inclusao : TDateTime         read Fdata_inclusao    write Fdata_inclusao;
    property data_exclusao : TDateTime         read Fdata_exclusao    write Fdata_exclusao;
    property valor : Double         read Fvalor    write Fvalor;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPclientespropriedades : TFrm_ViewERPclientespropriedades; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contrato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_inclusao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_exclusao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPclientespropriedades.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.contrato := Edit_contrato.text;
      FController.Model.data_inclusao := Edit_data_inclusao.text;
      FController.Model.data_exclusao := Edit_data_exclusao.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientespropriedades.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientespropriedades.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientespropriedades.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientespropriedades.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientespropriedades.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientespropriedades.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientespropriedades.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := contrato;  
     Grid.Cells[inttostr(i),0] := data_inclusao;  
     Grid.Cells[inttostr(i),0] := data_exclusao;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPclientespropriedades.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientespropriedades.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientespropriedades.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[2,Grid.row];
    FController.Model.contrato := Grid.Cells[3,Grid.row];
    FController.Model.data_inclusao := Grid.Cells[4,Grid.row];
    FController.Model.data_exclusao := Grid.Cells[5,Grid.row];
    FController.Model.valor := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientespropriedades.LimparTela;  
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

procedure TFrm_ViewERPclientespropriedades.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setcontrato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setdata_inclusao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setdata_exclusao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientespropriedades.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
