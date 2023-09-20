
unit View.ERP.funcionario;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.funcionario, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfuncionario = class(TForm) 
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
    FController : TControllerERPfuncionario; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fcor : WideString;
    Ftam : WideString;
    Fest_atu : Double;
    Fest_ent : Double;
    Fest_sai : Double;
    Fest_aceent : Double;
    Fest_acesai : Double;
    Fest_dev : Double;
    Freferencia : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setcor(const Value : WideString);
    procedure Settam(const Value : WideString);
    procedure Setest_atu(const Value : Double);
    procedure Setest_ent(const Value : Double);
    procedure Setest_sai(const Value : Double);
    procedure Setest_aceent(const Value : Double);
    procedure Setest_acesai(const Value : Double);
    procedure Setest_dev(const Value : Double);
    procedure Setreferencia(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property cor : WideString         read Fcor    write Fcor;
    property tam : WideString         read Ftam    write Ftam;
    property est_atu : Double         read Fest_atu    write Fest_atu;
    property est_ent : Double         read Fest_ent    write Fest_ent;
    property est_sai : Double         read Fest_sai    write Fest_sai;
    property est_aceent : Double         read Fest_aceent    write Fest_aceent;
    property est_acesai : Double         read Fest_acesai    write Fest_acesai;
    property est_dev : Double         read Fest_dev    write Fest_dev;
    property referencia : WideString         read Freferencia    write Freferencia;

  end;

var
  Frm_ViewERPfuncionario : TFrm_ViewERPfuncionario; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_atu); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_ent); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_sai); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_aceent); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_acesai); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].est_dev); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia); 
    end; 
end; 

procedure TFrm_ViewERPfuncionario.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.tam := Edit_tam.text;
      FController.Model.est_atu := Edit_est_atu.text;
      FController.Model.est_ent := Edit_est_ent.text;
      FController.Model.est_sai := Edit_est_sai.text;
      FController.Model.est_aceent := Edit_est_aceent.text;
      FController.Model.est_acesai := Edit_est_acesai.text;
      FController.Model.est_dev := Edit_est_dev.text;
      FController.Model.referencia := Edit_referencia.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfuncionario.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfuncionario.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfuncionario.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfuncionario.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfuncionario.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfuncionario.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfuncionario.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := tam;  
     Grid.Cells[inttostr(i),0] := est_atu;  
     Grid.Cells[inttostr(i),0] := est_ent;  
     Grid.Cells[inttostr(i),0] := est_sai;  
     Grid.Cells[inttostr(i),0] := est_aceent;  
     Grid.Cells[inttostr(i),0] := est_acesai;  
     Grid.Cells[inttostr(i),0] := est_dev;  
     Grid.Cells[inttostr(i),0] := referencia;  
end;

procedure TFrm_ViewERPfuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfuncionario.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfuncionario.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.cor := Grid.Cells[3,Grid.row];
    FController.Model.tam := Grid.Cells[4,Grid.row];
    FController.Model.est_atu := Grid.Cells[5,Grid.row];
    FController.Model.est_ent := Grid.Cells[6,Grid.row];
    FController.Model.est_sai := Grid.Cells[7,Grid.row];
    FController.Model.est_aceent := Grid.Cells[8,Grid.row];
    FController.Model.est_acesai := Grid.Cells[9,Grid.row];
    FController.Model.est_dev := Grid.Cells[10,Grid.row];
    FController.Model.referencia := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfuncionario.LimparTela;  
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

procedure TFrm_ViewERPfuncionario.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setcor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Settam(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_atu(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_ent(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_sai(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_aceent(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_acesai(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setest_dev(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfuncionario.Setreferencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
