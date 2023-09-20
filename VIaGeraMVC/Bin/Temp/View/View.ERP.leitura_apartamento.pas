
unit View.ERP.lancamento_vendedor;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lancamento_vendedor, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlancamentovendedor = class(TForm) 
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
    FController : TControllerERPlancamentovendedor; 
    Fid : Integer;
    Fid_condominio : Integer;
    Fid_bloco : Integer;
    Fnumero : Integer;
    Fativo : Boolean;
    Fapelido : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_condominio(const Value : Integer);
    procedure Setid_bloco(const Value : Integer);
    procedure Setnumero(const Value : Integer);
    procedure Setativo(const Value : Boolean);
    procedure Setapelido(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_condominio : Integer         read Fid_condominio    write Fid_condominio;
    property id_bloco : Integer         read Fid_bloco    write Fid_bloco;
    property numero : Integer         read Fnumero    write Fnumero;
    property ativo : Boolean         read Fativo    write Fativo;
    property apelido : WideString         read Fapelido    write Fapelido;

  end;

var
  Frm_ViewERPlancamentovendedor : TFrm_ViewERPlancamentovendedor; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_condominio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_bloco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].apelido); 
    end; 
end; 

procedure TFrm_ViewERPlancamentovendedor.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_condominio := Edit_id_condominio.text;
      FController.Model.id_bloco := Edit_id_bloco.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.apelido := Edit_apelido.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlancamentovendedor.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlancamentovendedor.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlancamentovendedor.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlancamentovendedor.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlancamentovendedor.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlancamentovendedor.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlancamentovendedor.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_condominio;  
     Grid.Cells[inttostr(i),0] := id_bloco;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := apelido;  
end;

procedure TFrm_ViewERPlancamentovendedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlancamentovendedor.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlancamentovendedor.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_condominio := Grid.Cells[1,Grid.row];
    FController.Model.id_bloco := Grid.Cells[2,Grid.row];
    FController.Model.numero := Grid.Cells[3,Grid.row];
    FController.Model.ativo := Grid.Cells[4,Grid.row];
    FController.Model.apelido := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlancamentovendedor.LimparTela;  
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

procedure TFrm_ViewERPlancamentovendedor.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentovendedor.Setid_condominio(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentovendedor.Setid_bloco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentovendedor.Setnumero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentovendedor.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlancamentovendedor.Setapelido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
