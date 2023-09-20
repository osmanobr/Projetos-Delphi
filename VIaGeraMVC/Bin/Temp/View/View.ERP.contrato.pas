
unit View.ERP.contas_fixas_geradas_controle;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.contas_fixas_geradas_controle, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontasfixasgeradascontrole = class(TForm) 
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
    FController : TControllerERPcontasfixasgeradascontrole; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_contrato : TDateTime;
    Fvalor : Double;
    Fdia_vencimento : WideString;
    Fdata_rescisao : TDateTime;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fcobra_maodeobra : WideString;
    Fcobra_peca : WideString;
    Fgera_comissao : WideString;
    Fbloqueado : WideString;
    Fdata_bloqueio : TDateTime;
    Fmotivo_bloqueio : WideString;
    Fservico : WideString;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_contrato(const Value : TDateTime);
    procedure Setvalor(const Value : Double);
    procedure Setdia_vencimento(const Value : WideString);
    procedure Setdata_rescisao(const Value : TDateTime);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setcobra_maodeobra(const Value : WideString);
    procedure Setcobra_peca(const Value : WideString);
    procedure Setgera_comissao(const Value : WideString);
    procedure Setbloqueado(const Value : WideString);
    procedure Setdata_bloqueio(const Value : TDateTime);
    procedure Setmotivo_bloqueio(const Value : WideString);
    procedure Setservico(const Value : WideString);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_contrato : TDateTime         read Fdata_contrato    write Fdata_contrato;
    property valor : Double         read Fvalor    write Fvalor;
    property dia_vencimento : WideString         read Fdia_vencimento    write Fdia_vencimento;
    property data_rescisao : TDateTime         read Fdata_rescisao    write Fdata_rescisao;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property cobra_maodeobra : WideString         read Fcobra_maodeobra    write Fcobra_maodeobra;
    property cobra_peca : WideString         read Fcobra_peca    write Fcobra_peca;
    property gera_comissao : WideString         read Fgera_comissao    write Fgera_comissao;
    property bloqueado : WideString         read Fbloqueado    write Fbloqueado;
    property data_bloqueio : TDateTime         read Fdata_bloqueio    write Fdata_bloqueio;
    property motivo_bloqueio : WideString         read Fmotivo_bloqueio    write Fmotivo_bloqueio;
    property servico : WideString         read Fservico    write Fservico;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcontasfixasgeradascontrole : TFrm_ViewERPcontasfixasgeradascontrole; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_contrato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia_vencimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_rescisao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cobra_maodeobra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cobra_peca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_bloqueio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo_bloqueio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcontasfixasgeradascontrole.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_contrato := Edit_data_contrato.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.dia_vencimento := Edit_dia_vencimento.text;
      FController.Model.data_rescisao := Edit_data_rescisao.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.cobra_maodeobra := Edit_cobra_maodeobra.text;
      FController.Model.cobra_peca := Edit_cobra_peca.text;
      FController.Model.gera_comissao := Edit_gera_comissao.text;
      FController.Model.bloqueado := Edit_bloqueado.text;
      FController.Model.data_bloqueio := Edit_data_bloqueio.text;
      FController.Model.motivo_bloqueio := Edit_motivo_bloqueio.text;
      FController.Model.servico := Edit_servico.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontasfixasgeradascontrole.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontasfixasgeradascontrole.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontasfixasgeradascontrole.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontasfixasgeradascontrole.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontasfixasgeradascontrole.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontasfixasgeradascontrole.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontasfixasgeradascontrole.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_contrato;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := dia_vencimento;  
     Grid.Cells[inttostr(i),0] := data_rescisao;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := cobra_maodeobra;  
     Grid.Cells[inttostr(i),0] := cobra_peca;  
     Grid.Cells[inttostr(i),0] := gera_comissao;  
     Grid.Cells[inttostr(i),0] := bloqueado;  
     Grid.Cells[inttostr(i),0] := data_bloqueio;  
     Grid.Cells[inttostr(i),0] := motivo_bloqueio;  
     Grid.Cells[inttostr(i),0] := servico;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcontasfixasgeradascontrole.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontasfixasgeradascontrole.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontasfixasgeradascontrole.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_contrato := Grid.Cells[2,Grid.row];
    FController.Model.valor := Grid.Cells[3,Grid.row];
    FController.Model.dia_vencimento := Grid.Cells[4,Grid.row];
    FController.Model.data_rescisao := Grid.Cells[5,Grid.row];
    FController.Model.id_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.cobra_maodeobra := Grid.Cells[8,Grid.row];
    FController.Model.cobra_peca := Grid.Cells[9,Grid.row];
    FController.Model.gera_comissao := Grid.Cells[10,Grid.row];
    FController.Model.bloqueado := Grid.Cells[11,Grid.row];
    FController.Model.data_bloqueio := Grid.Cells[12,Grid.row];
    FController.Model.motivo_bloqueio := Grid.Cells[13,Grid.row];
    FController.Model.servico := Grid.Cells[14,Grid.row];
    FController.Model.click := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontasfixasgeradascontrole.LimparTela;  
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

procedure TFrm_ViewERPcontasfixasgeradascontrole.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setdata_contrato(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setdia_vencimento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setdata_rescisao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setcobra_maodeobra(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setcobra_peca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setgera_comissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setbloqueado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setdata_bloqueio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setmotivo_bloqueio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setservico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixasgeradascontrole.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
