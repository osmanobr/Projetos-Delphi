
unit View.ERP.fabricacao_insumo;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fabricacao_insumo, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfabricacaoinsumo = class(TForm) 
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
    FController : TControllerERPfabricacaoinsumo; 
    Fid : Integer;
    Fid_fabricacao : Integer;
    Fprocesso : indefinido;
    Fdata : indefinido;
    Ftempo_duracao : indefinido;
    Ftemperatura : Integer;
    Fcondicoes : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fabricacao(const Value : Integer);
    procedure Setprocesso(const Value : indefinido);
    procedure Setdata(const Value : indefinido);
    procedure Settempo_duracao(const Value : indefinido);
    procedure Settemperatura(const Value : Integer);
    procedure Setcondicoes(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_fabricacao : Integer         read Fid_fabricacao    write Fid_fabricacao;
    property processo : indefinido         read Fprocesso    write Fprocesso;
    property data : indefinido         read Fdata    write Fdata;
    property tempo_duracao : indefinido         read Ftempo_duracao    write Ftempo_duracao;
    property temperatura : Integer         read Ftemperatura    write Ftemperatura;
    property condicoes : indefinido         read Fcondicoes    write Fcondicoes;

  end;

var
  Frm_ViewERPfabricacaoinsumo : TFrm_ViewERPfabricacaoinsumo; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].processo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo_duracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].temperatura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condicoes); 
    end; 
end; 

procedure TFrm_ViewERPfabricacaoinsumo.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fabricacao := Edit_id_fabricacao.text;
      FController.Model.processo := Edit_processo.text;
      FController.Model.data := Edit_data.text;
      FController.Model.tempo_duracao := Edit_tempo_duracao.text;
      FController.Model.temperatura := Edit_temperatura.text;
      FController.Model.condicoes := Edit_condicoes.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfabricacaoinsumo.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfabricacaoinsumo.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfabricacaoinsumo.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfabricacaoinsumo.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfabricacaoinsumo.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfabricacaoinsumo.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfabricacaoinsumo.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fabricacao;  
     Grid.Cells[inttostr(i),0] := processo;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := tempo_duracao;  
     Grid.Cells[inttostr(i),0] := temperatura;  
     Grid.Cells[inttostr(i),0] := condicoes;  
end;

procedure TFrm_ViewERPfabricacaoinsumo.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfabricacaoinsumo.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfabricacaoinsumo.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fabricacao := Grid.Cells[1,Grid.row];
    FController.Model.processo := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.tempo_duracao := Grid.Cells[4,Grid.row];
    FController.Model.temperatura := Grid.Cells[5,Grid.row];
    FController.Model.condicoes := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfabricacaoinsumo.LimparTela;  
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

procedure TFrm_ViewERPfabricacaoinsumo.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Setid_fabricacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Setprocesso(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Settempo_duracao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Settemperatura(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaoinsumo.Setcondicoes(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
