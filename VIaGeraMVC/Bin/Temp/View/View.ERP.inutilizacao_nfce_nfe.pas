
unit View.ERP.insumos_pdv;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.insumos_pdv, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPinsumospdv = class(TForm) 
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
    FController : TControllerERPinsumospdv; 
    Fid : Integer;
    Fnfce_nfe : Integer;
    Fmodelo : Integer;
    Fserie : Integer;
    Fano : Integer;
    Fnum_ini : Integer;
    Fnum_fim : Integer;
    Fmotivo : WideString;
    Fdatahora : TDateTime;
    Fprotocolo : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnfce_nfe(const Value : Integer);
    procedure Setmodelo(const Value : Integer);
    procedure Setserie(const Value : Integer);
    procedure Setano(const Value : Integer);
    procedure Setnum_ini(const Value : Integer);
    procedure Setnum_fim(const Value : Integer);
    procedure Setmotivo(const Value : WideString);
    procedure Setdatahora(const Value : TDateTime);
    procedure Setprotocolo(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property nfce_nfe : Integer         read Fnfce_nfe    write Fnfce_nfe;
    property modelo : Integer         read Fmodelo    write Fmodelo;
    property serie : Integer         read Fserie    write Fserie;
    property ano : Integer         read Fano    write Fano;
    property num_ini : Integer         read Fnum_ini    write Fnum_ini;
    property num_fim : Integer         read Fnum_fim    write Fnum_fim;
    property motivo : WideString         read Fmotivo    write Fmotivo;
    property datahora : TDateTime         read Fdatahora    write Fdatahora;
    property protocolo : WideString         read Fprotocolo    write Fprotocolo;

  end;

var
  Frm_ViewERPinsumospdv : TFrm_ViewERPinsumospdv; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ano); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_ini); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_fim); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo); 
    end; 
end; 

procedure TFrm_ViewERPinsumospdv.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nfce_nfe := Edit_nfce_nfe.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.ano := Edit_ano.text;
      FController.Model.num_ini := Edit_num_ini.text;
      FController.Model.num_fim := Edit_num_fim.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.protocolo := Edit_protocolo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPinsumospdv.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPinsumospdv.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPinsumospdv.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPinsumospdv.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPinsumospdv.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPinsumospdv.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPinsumospdv.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nfce_nfe;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := ano;  
     Grid.Cells[inttostr(i),0] := num_ini;  
     Grid.Cells[inttostr(i),0] := num_fim;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := protocolo;  
end;

procedure TFrm_ViewERPinsumospdv.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPinsumospdv.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPinsumospdv.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nfce_nfe := Grid.Cells[1,Grid.row];
    FController.Model.modelo := Grid.Cells[2,Grid.row];
    FController.Model.serie := Grid.Cells[3,Grid.row];
    FController.Model.ano := Grid.Cells[4,Grid.row];
    FController.Model.num_ini := Grid.Cells[5,Grid.row];
    FController.Model.num_fim := Grid.Cells[6,Grid.row];
    FController.Model.motivo := Grid.Cells[7,Grid.row];
    FController.Model.datahora := Grid.Cells[8,Grid.row];
    FController.Model.protocolo := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPinsumospdv.LimparTela;  
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

procedure TFrm_ViewERPinsumospdv.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setnfce_nfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setmodelo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setano(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setnum_ini(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setnum_fim(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setmotivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setdatahora(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumospdv.Setprotocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
