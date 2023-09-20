
unit View.ERP.carne;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.carne, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcarne = class(TForm) 
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
    FController : TControllerERPcarne; 
    Fid : Integer;
    Flote : WideString;
    Fnfe_chave : WideString;
    Fprotocolo : WideString;
    Fnseqevento : WideString;
    Fevento : WideString;
    Fdata : TDateTime;
    Fhora : WideString;
    Fversao : WideString;
    Fdescricao_evento : WideString;
    Fcorrecao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setlote(const Value : WideString);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setprotocolo(const Value : WideString);
    procedure Setnseqevento(const Value : WideString);
    procedure Setevento(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Sethora(const Value : WideString);
    procedure Setversao(const Value : WideString);
    procedure Setdescricao_evento(const Value : WideString);
    procedure Setcorrecao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property lote : WideString         read Flote    write Flote;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property protocolo : WideString         read Fprotocolo    write Fprotocolo;
    property nseqevento : WideString         read Fnseqevento    write Fnseqevento;
    property evento : WideString         read Fevento    write Fevento;
    property data : TDateTime         read Fdata    write Fdata;
    property hora : WideString         read Fhora    write Fhora;
    property versao : WideString         read Fversao    write Fversao;
    property descricao_evento : WideString         read Fdescricao_evento    write Fdescricao_evento;
    property correcao : indefinido         read Fcorrecao    write Fcorrecao;

  end;

var
  Frm_ViewERPcarne : TFrm_ViewERPcarne; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nseqevento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].evento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao_evento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].correcao); 
    end; 
end; 

procedure TFrm_ViewERPcarne.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.protocolo := Edit_protocolo.text;
      FController.Model.nseqevento := Edit_nseqevento.text;
      FController.Model.evento := Edit_evento.text;
      FController.Model.data := Edit_data.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.descricao_evento := Edit_descricao_evento.text;
      FController.Model.correcao := Edit_correcao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcarne.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcarne.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcarne.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcarne.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcarne.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcarne.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcarne.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := protocolo;  
     Grid.Cells[inttostr(i),0] := nseqevento;  
     Grid.Cells[inttostr(i),0] := evento;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := descricao_evento;  
     Grid.Cells[inttostr(i),0] := correcao;  
end;

procedure TFrm_ViewERPcarne.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcarne.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcarne.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.lote := Grid.Cells[1,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[2,Grid.row];
    FController.Model.protocolo := Grid.Cells[3,Grid.row];
    FController.Model.nseqevento := Grid.Cells[4,Grid.row];
    FController.Model.evento := Grid.Cells[5,Grid.row];
    FController.Model.data := Grid.Cells[6,Grid.row];
    FController.Model.hora := Grid.Cells[7,Grid.row];
    FController.Model.versao := Grid.Cells[8,Grid.row];
    FController.Model.descricao_evento := Grid.Cells[9,Grid.row];
    FController.Model.correcao := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcarne.LimparTela;  
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

procedure TFrm_ViewERPcarne.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setlote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setprotocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setnseqevento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setevento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Sethora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setversao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setdescricao_evento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcarne.Setcorrecao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
