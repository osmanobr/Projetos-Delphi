
unit View.ERP.pdv_caixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pdv_caixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpdvcaixa = class(TForm) 
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
    FController : TControllerERPpdvcaixa; 
    Fid : Integer;
    Fid_pdv : Integer;
    Fid_caixa : Integer;
    Fparcela : Integer;
    Fdocumento : indefinido;
    Fdata_vencto : TDateTime;
    Fid_forma : Integer;
    Fnome_forma : indefinido;
    Fvalor : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_pdv(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setparcela(const Value : Integer);
    procedure Setdocumento(const Value : indefinido);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setnome_forma(const Value : indefinido);
    procedure Setvalor(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_pdv : Integer         read Fid_pdv    write Fid_pdv;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property parcela : Integer         read Fparcela    write Fparcela;
    property documento : indefinido         read Fdocumento    write Fdocumento;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property nome_forma : indefinido         read Fnome_forma    write Fnome_forma;
    property valor : Double         read Fvalor    write Fvalor;

  end;

var
  Frm_ViewERPpdvcaixa : TFrm_ViewERPpdvcaixa; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
    end; 
end; 

procedure TFrm_ViewERPpdvcaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_pdv := Edit_id_pdv.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.nome_forma := Edit_nome_forma.text;
      FController.Model.valor := Edit_valor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpdvcaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpdvcaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpdvcaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpdvcaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpdvcaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpdvcaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpdvcaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_pdv;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := nome_forma;  
     Grid.Cells[inttostr(i),0] := valor;  
end;

procedure TFrm_ViewERPpdvcaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpdvcaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpdvcaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_pdv := Grid.Cells[1,Grid.row];
    FController.Model.id_caixa := Grid.Cells[2,Grid.row];
    FController.Model.parcela := Grid.Cells[3,Grid.row];
    FController.Model.documento := Grid.Cells[4,Grid.row];
    FController.Model.data_vencto := Grid.Cells[5,Grid.row];
    FController.Model.id_forma := Grid.Cells[6,Grid.row];
    FController.Model.nome_forma := Grid.Cells[7,Grid.row];
    FController.Model.valor := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpdvcaixa.LimparTela;  
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

procedure TFrm_ViewERPpdvcaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setid_pdv(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setparcela(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setdocumento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setnome_forma(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvcaixa.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
