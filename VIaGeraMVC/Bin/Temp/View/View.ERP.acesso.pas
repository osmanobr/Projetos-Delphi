
unit View.ERP.acerto_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.acerto_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPacertoitem = class(TForm) 
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
    FController : TControllerERPacertoitem; 
    Fid : Integer;
    Fqtd_acessos : Integer;
    Fdata_instalacao : TDateTime;
    Fdata_acesso : TDateTime;
    Fbloqueio : WideString;
    Fdata_senha : TDateTime;
    Fversao : WideString;
    Fdata_backup : TDateTime;
    Fchave : WideString;
    Freset : WideString;
    Fhash : WideString;
    Fvia1 : WideString;
    Fvia2 : WideString;
    Fvia3 : WideString;
    Fversao_ibpt : WideString;
    Fversao_ncm : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setqtd_acessos(const Value : Integer);
    procedure Setdata_instalacao(const Value : TDateTime);
    procedure Setdata_acesso(const Value : TDateTime);
    procedure Setbloqueio(const Value : WideString);
    procedure Setdata_senha(const Value : TDateTime);
    procedure Setversao(const Value : WideString);
    procedure Setdata_backup(const Value : TDateTime);
    procedure Setchave(const Value : WideString);
    procedure Setreset(const Value : WideString);
    procedure Sethash(const Value : WideString);
    procedure Setvia1(const Value : WideString);
    procedure Setvia2(const Value : WideString);
    procedure Setvia3(const Value : WideString);
    procedure Setversao_ibpt(const Value : WideString);
    procedure Setversao_ncm(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property qtd_acessos : Integer         read Fqtd_acessos    write Fqtd_acessos;
    property data_instalacao : TDateTime         read Fdata_instalacao    write Fdata_instalacao;
    property data_acesso : TDateTime         read Fdata_acesso    write Fdata_acesso;
    property bloqueio : WideString         read Fbloqueio    write Fbloqueio;
    property data_senha : TDateTime         read Fdata_senha    write Fdata_senha;
    property versao : WideString         read Fversao    write Fversao;
    property data_backup : TDateTime         read Fdata_backup    write Fdata_backup;
    property chave : WideString         read Fchave    write Fchave;
    property reset : WideString         read Freset    write Freset;
    property hash : WideString         read Fhash    write Fhash;
    property via1 : WideString         read Fvia1    write Fvia1;
    property via2 : WideString         read Fvia2    write Fvia2;
    property via3 : WideString         read Fvia3    write Fvia3;
    property versao_ibpt : WideString         read Fversao_ibpt    write Fversao_ibpt;
    property versao_ncm : WideString         read Fversao_ncm    write Fversao_ncm;

  end;

var
  Frm_ViewERPacertoitem : TFrm_ViewERPacertoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_acessos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_instalacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_acesso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_backup); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reset); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].via1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].via2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].via3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao_ibpt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao_ncm); 
    end; 
end; 

procedure TFrm_ViewERPacertoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.qtd_acessos := Edit_qtd_acessos.text;
      FController.Model.data_instalacao := Edit_data_instalacao.text;
      FController.Model.data_acesso := Edit_data_acesso.text;
      FController.Model.bloqueio := Edit_bloqueio.text;
      FController.Model.data_senha := Edit_data_senha.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.data_backup := Edit_data_backup.text;
      FController.Model.chave := Edit_chave.text;
      FController.Model.reset := Edit_reset.text;
      FController.Model.hash := Edit_hash.text;
      FController.Model.via1 := Edit_via1.text;
      FController.Model.via2 := Edit_via2.text;
      FController.Model.via3 := Edit_via3.text;
      FController.Model.versao_ibpt := Edit_versao_ibpt.text;
      FController.Model.versao_ncm := Edit_versao_ncm.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPacertoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPacertoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPacertoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPacertoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPacertoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPacertoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPacertoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := qtd_acessos;  
     Grid.Cells[inttostr(i),0] := data_instalacao;  
     Grid.Cells[inttostr(i),0] := data_acesso;  
     Grid.Cells[inttostr(i),0] := bloqueio;  
     Grid.Cells[inttostr(i),0] := data_senha;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := data_backup;  
     Grid.Cells[inttostr(i),0] := chave;  
     Grid.Cells[inttostr(i),0] := reset;  
     Grid.Cells[inttostr(i),0] := hash;  
     Grid.Cells[inttostr(i),0] := via1;  
     Grid.Cells[inttostr(i),0] := via2;  
     Grid.Cells[inttostr(i),0] := via3;  
     Grid.Cells[inttostr(i),0] := versao_ibpt;  
     Grid.Cells[inttostr(i),0] := versao_ncm;  
end;

procedure TFrm_ViewERPacertoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPacertoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPacertoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.qtd_acessos := Grid.Cells[1,Grid.row];
    FController.Model.data_instalacao := Grid.Cells[2,Grid.row];
    FController.Model.data_acesso := Grid.Cells[3,Grid.row];
    FController.Model.bloqueio := Grid.Cells[4,Grid.row];
    FController.Model.data_senha := Grid.Cells[5,Grid.row];
    FController.Model.versao := Grid.Cells[6,Grid.row];
    FController.Model.data_backup := Grid.Cells[7,Grid.row];
    FController.Model.chave := Grid.Cells[8,Grid.row];
    FController.Model.reset := Grid.Cells[9,Grid.row];
    FController.Model.hash := Grid.Cells[10,Grid.row];
    FController.Model.via1 := Grid.Cells[11,Grid.row];
    FController.Model.via2 := Grid.Cells[12,Grid.row];
    FController.Model.via3 := Grid.Cells[13,Grid.row];
    FController.Model.versao_ibpt := Grid.Cells[14,Grid.row];
    FController.Model.versao_ncm := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPacertoitem.LimparTela;  
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

procedure TFrm_ViewERPacertoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setqtd_acessos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setdata_instalacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setdata_acesso(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setbloqueio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setdata_senha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setversao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setdata_backup(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setchave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setreset(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Sethash(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setvia1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setvia2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setvia3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setversao_ibpt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoitem.Setversao_ncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
