
unit View.ERP.posto_encerrante;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.posto_encerrante, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpostoencerrante = class(TForm) 
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
    FController : TControllerERPpostoencerrante; 
    Fid : Integer;
    Fid_encerrante : Integer;
    Fbico : WideString;
    Fqtd_fec : Double;
    Fqtd_aber : Double;
    Fqtd_venda : Double;
    Fafericao : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_encerrante(const Value : Integer);
    procedure Setbico(const Value : WideString);
    procedure Setqtd_fec(const Value : Double);
    procedure Setqtd_aber(const Value : Double);
    procedure Setqtd_venda(const Value : Double);
    procedure Setafericao(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_encerrante : Integer         read Fid_encerrante    write Fid_encerrante;
    property bico : WideString         read Fbico    write Fbico;
    property qtd_fec : Double         read Fqtd_fec    write Fqtd_fec;
    property qtd_aber : Double         read Fqtd_aber    write Fqtd_aber;
    property qtd_venda : Double         read Fqtd_venda    write Fqtd_venda;
    property afericao : Double         read Fafericao    write Fafericao;

  end;

var
  Frm_ViewERPpostoencerrante : TFrm_ViewERPpostoencerrante; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_encerrante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_fec); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_aber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].afericao); 
    end; 
end; 

procedure TFrm_ViewERPpostoencerrante.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_encerrante := Edit_id_encerrante.text;
      FController.Model.bico := Edit_bico.text;
      FController.Model.qtd_fec := Edit_qtd_fec.text;
      FController.Model.qtd_aber := Edit_qtd_aber.text;
      FController.Model.qtd_venda := Edit_qtd_venda.text;
      FController.Model.afericao := Edit_afericao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpostoencerrante.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpostoencerrante.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpostoencerrante.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpostoencerrante.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpostoencerrante.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpostoencerrante.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpostoencerrante.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_encerrante;  
     Grid.Cells[inttostr(i),0] := bico;  
     Grid.Cells[inttostr(i),0] := qtd_fec;  
     Grid.Cells[inttostr(i),0] := qtd_aber;  
     Grid.Cells[inttostr(i),0] := qtd_venda;  
     Grid.Cells[inttostr(i),0] := afericao;  
end;

procedure TFrm_ViewERPpostoencerrante.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpostoencerrante.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpostoencerrante.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_encerrante := Grid.Cells[1,Grid.row];
    FController.Model.bico := Grid.Cells[2,Grid.row];
    FController.Model.qtd_fec := Grid.Cells[3,Grid.row];
    FController.Model.qtd_aber := Grid.Cells[4,Grid.row];
    FController.Model.qtd_venda := Grid.Cells[5,Grid.row];
    FController.Model.afericao := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpostoencerrante.LimparTela;  
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

procedure TFrm_ViewERPpostoencerrante.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setid_encerrante(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setbico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setqtd_fec(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setqtd_aber(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setqtd_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostoencerrante.Setafericao(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
