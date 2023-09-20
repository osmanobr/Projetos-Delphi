
unit View.ERP.boleto_automatico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.boleto_automatico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPboletoautomatico = class(TForm) 
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
    FController : TControllerERPboletoautomatico; 
    Fid : Integer;
    Fserie : WideString;
    Ffabricante : WideString;
    Fmodelo : WideString;
    Ftipo_medicao : WideString;
    Flacre : WideString;
    Fdt_aplic : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setserie(const Value : WideString);
    procedure Setfabricante(const Value : WideString);
    procedure Setmodelo(const Value : WideString);
    procedure Settipo_medicao(const Value : WideString);
    procedure Setlacre(const Value : WideString);
    procedure Setdt_aplic(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property serie : WideString         read Fserie    write Fserie;
    property fabricante : WideString         read Ffabricante    write Ffabricante;
    property modelo : WideString         read Fmodelo    write Fmodelo;
    property tipo_medicao : WideString         read Ftipo_medicao    write Ftipo_medicao;
    property lacre : WideString         read Flacre    write Flacre;
    property dt_aplic : TDateTime         read Fdt_aplic    write Fdt_aplic;

  end;

var
  Frm_ViewERPboletoautomatico : TFrm_ViewERPboletoautomatico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_medicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lacre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_aplic); 
    end; 
end; 

procedure TFrm_ViewERPboletoautomatico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.fabricante := Edit_fabricante.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.tipo_medicao := Edit_tipo_medicao.text;
      FController.Model.lacre := Edit_lacre.text;
      FController.Model.dt_aplic := Edit_dt_aplic.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPboletoautomatico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPboletoautomatico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPboletoautomatico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPboletoautomatico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPboletoautomatico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPboletoautomatico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPboletoautomatico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := fabricante;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := tipo_medicao;  
     Grid.Cells[inttostr(i),0] := lacre;  
     Grid.Cells[inttostr(i),0] := dt_aplic;  
end;

procedure TFrm_ViewERPboletoautomatico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPboletoautomatico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPboletoautomatico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.serie := Grid.Cells[1,Grid.row];
    FController.Model.fabricante := Grid.Cells[2,Grid.row];
    FController.Model.modelo := Grid.Cells[3,Grid.row];
    FController.Model.tipo_medicao := Grid.Cells[4,Grid.row];
    FController.Model.lacre := Grid.Cells[5,Grid.row];
    FController.Model.dt_aplic := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPboletoautomatico.LimparTela;  
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

procedure TFrm_ViewERPboletoautomatico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Setfabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Setmodelo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Settipo_medicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Setlacre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPboletoautomatico.Setdt_aplic(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
