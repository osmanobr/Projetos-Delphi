
unit View.ERP.monitor_repair;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.monitor_repair, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmonitorrepair = class(TForm) 
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
    FController : TControllerERPmonitorrepair; 
    Fid : Integer;
    Fnome : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fprop_rntc : WideString;
    Fprop_ie : WideString;
    Fprop_uf : WideString;
    Fprop_tpprop : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Setrg_ssp(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setprop_rntc(const Value : WideString);
    procedure Setprop_ie(const Value : WideString);
    procedure Setprop_uf(const Value : WideString);
    procedure Setprop_tpprop(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property cpf : WideString         read Fcpf    write Fcpf;
    property rg : WideString         read Frg    write Frg;
    property rg_ssp : WideString         read Frg_ssp    write Frg_ssp;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property prop_rntc : WideString         read Fprop_rntc    write Fprop_rntc;
    property prop_ie : WideString         read Fprop_ie    write Fprop_ie;
    property prop_uf : WideString         read Fprop_uf    write Fprop_uf;
    property prop_tpprop : Integer         read Fprop_tpprop    write Fprop_tpprop;

  end;

var
  Frm_ViewERPmonitorrepair : TFrm_ViewERPmonitorrepair; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_ssp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_rntc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_ie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_tpprop); 
    end; 
end; 

procedure TFrm_ViewERPmonitorrepair.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.rg_ssp := Edit_rg_ssp.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.prop_rntc := Edit_prop_rntc.text;
      FController.Model.prop_ie := Edit_prop_ie.text;
      FController.Model.prop_uf := Edit_prop_uf.text;
      FController.Model.prop_tpprop := Edit_prop_tpprop.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmonitorrepair.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmonitorrepair.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmonitorrepair.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmonitorrepair.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmonitorrepair.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmonitorrepair.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmonitorrepair.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := rg_ssp;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := prop_rntc;  
     Grid.Cells[inttostr(i),0] := prop_ie;  
     Grid.Cells[inttostr(i),0] := prop_uf;  
     Grid.Cells[inttostr(i),0] := prop_tpprop;  
end;

procedure TFrm_ViewERPmonitorrepair.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmonitorrepair.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmonitorrepair.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.cpf := Grid.Cells[2,Grid.row];
    FController.Model.rg := Grid.Cells[3,Grid.row];
    FController.Model.rg_ssp := Grid.Cells[4,Grid.row];
    FController.Model.telefone := Grid.Cells[5,Grid.row];
    FController.Model.celular := Grid.Cells[6,Grid.row];
    FController.Model.prop_rntc := Grid.Cells[7,Grid.row];
    FController.Model.prop_ie := Grid.Cells[8,Grid.row];
    FController.Model.prop_uf := Grid.Cells[9,Grid.row];
    FController.Model.prop_tpprop := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmonitorrepair.LimparTela;  
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

procedure TFrm_ViewERPmonitorrepair.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setrg_ssp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setprop_rntc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setprop_ie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setprop_uf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmonitorrepair.Setprop_tpprop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
