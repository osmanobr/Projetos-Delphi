
unit View.ERP.cst_piscofins_natureza_relacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cst_piscofins_natureza_relacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcstpiscofinsnaturezarelacao = class(TForm) 
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
    FController : TControllerERPcstpiscofinsnaturezarelacao; 
    Fid : Integer;
    Fid_cte : Integer;
    Fnome_cliente : WideString;
    Fnfe_chave : WideString;
    Fqvol : Double;
    Fnvol : Double;
    Fpesob : Double;
    Fpesol : Double;
    Fvl_total : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cte(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setqvol(const Value : Double);
    procedure Setnvol(const Value : Double);
    procedure Setpesob(const Value : Double);
    procedure Setpesol(const Value : Double);
    procedure Setvl_total(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_cte : Integer         read Fid_cte    write Fid_cte;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property qvol : Double         read Fqvol    write Fqvol;
    property nvol : Double         read Fnvol    write Fnvol;
    property pesob : Double         read Fpesob    write Fpesob;
    property pesol : Double         read Fpesol    write Fpesol;
    property vl_total : Double         read Fvl_total    write Fvl_total;

  end;

var
  Frm_ViewERPcstpiscofinsnaturezarelacao : TFrm_ViewERPcstpiscofinsnaturezarelacao; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qvol); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nvol); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pesob); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pesol); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
    end; 
end; 

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cte := Edit_id_cte.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.qvol := Edit_qvol.text;
      FController.Model.nvol := Edit_nvol.text;
      FController.Model.pesob := Edit_pesob.text;
      FController.Model.pesol := Edit_pesol.text;
      FController.Model.vl_total := Edit_vl_total.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcstpiscofinsnaturezarelacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cte;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := qvol;  
     Grid.Cells[inttostr(i),0] := nvol;  
     Grid.Cells[inttostr(i),0] := pesob;  
     Grid.Cells[inttostr(i),0] := pesol;  
     Grid.Cells[inttostr(i),0] := vl_total;  
end;

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cte := Grid.Cells[1,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[2,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[3,Grid.row];
    FController.Model.qvol := Grid.Cells[4,Grid.row];
    FController.Model.nvol := Grid.Cells[5,Grid.row];
    FController.Model.pesob := Grid.Cells[6,Grid.row];
    FController.Model.pesol := Grid.Cells[7,Grid.row];
    FController.Model.vl_total := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.LimparTela;  
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

procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setid_cte(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setqvol(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setnvol(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setpesob(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setpesol(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcstpiscofinsnaturezarelacao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
