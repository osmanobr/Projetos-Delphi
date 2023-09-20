
unit View.ERP.ncm_update;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.ncm_update, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPncmupdate = class(TForm) 
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
    FController : TControllerERPncmupdate; 
    Fid : Integer;
    Fchave : indefinido;
    Fserie : indefinido;
    Fnumero_nf : indefinido;
    Fcnpj_cpf : indefinido;
    Frazao_social : indefinido;
    Fie : indefinido;
    Fdata_emissao : TDateTime;
    Ftipo_operacao : indefinido;
    Fvalor : Double;
    Fsituacao_nfe : Integer;
    Fsituacao_manifesto : Integer;
    Fevento : indefinido;
    Finclusao : indefinido;
    Fprotocolo : indefinido;
    Fregistrado : Boolean;
    Ffornecedor : Boolean;
    Fsituacao_nfe_desc : indefinido;
    Fsituacao_manifesto_desc : indefinido;
    Fid_usuario_estoquista : Integer;
    Fobs_estoquista : indefinido;
    Fdata_conferencia : TDateTime;
    Fxml : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setchave(const Value : indefinido);
    procedure Setserie(const Value : indefinido);
    procedure Setnumero_nf(const Value : indefinido);
    procedure Setcnpj_cpf(const Value : indefinido);
    procedure Setrazao_social(const Value : indefinido);
    procedure Setie(const Value : indefinido);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Settipo_operacao(const Value : indefinido);
    procedure Setvalor(const Value : Double);
    procedure Setsituacao_nfe(const Value : Integer);
    procedure Setsituacao_manifesto(const Value : Integer);
    procedure Setevento(const Value : indefinido);
    procedure Setinclusao(const Value : indefinido);
    procedure Setprotocolo(const Value : indefinido);
    procedure Setregistrado(const Value : Boolean);
    procedure Setfornecedor(const Value : Boolean);
    procedure Setsituacao_nfe_desc(const Value : indefinido);
    procedure Setsituacao_manifesto_desc(const Value : indefinido);
    procedure Setid_usuario_estoquista(const Value : Integer);
    procedure Setobs_estoquista(const Value : indefinido);
    procedure Setdata_conferencia(const Value : TDateTime);
    procedure Setxml(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property chave : indefinido         read Fchave    write Fchave;
    property serie : indefinido         read Fserie    write Fserie;
    property numero_nf : indefinido         read Fnumero_nf    write Fnumero_nf;
    property cnpj_cpf : indefinido         read Fcnpj_cpf    write Fcnpj_cpf;
    property razao_social : indefinido         read Frazao_social    write Frazao_social;
    property ie : indefinido         read Fie    write Fie;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property tipo_operacao : indefinido         read Ftipo_operacao    write Ftipo_operacao;
    property valor : Double         read Fvalor    write Fvalor;
    property situacao_nfe : Integer         read Fsituacao_nfe    write Fsituacao_nfe;
    property situacao_manifesto : Integer         read Fsituacao_manifesto    write Fsituacao_manifesto;
    property evento : indefinido         read Fevento    write Fevento;
    property inclusao : indefinido         read Finclusao    write Finclusao;
    property protocolo : indefinido         read Fprotocolo    write Fprotocolo;
    property registrado : Boolean         read Fregistrado    write Fregistrado;
    property fornecedor : Boolean         read Ffornecedor    write Ffornecedor;
    property situacao_nfe_desc : indefinido         read Fsituacao_nfe_desc    write Fsituacao_nfe_desc;
    property situacao_manifesto_desc : indefinido         read Fsituacao_manifesto_desc    write Fsituacao_manifesto_desc;
    property id_usuario_estoquista : Integer         read Fid_usuario_estoquista    write Fid_usuario_estoquista;
    property obs_estoquista : indefinido         read Fobs_estoquista    write Fobs_estoquista;
    property data_conferencia : TDateTime         read Fdata_conferencia    write Fdata_conferencia;
    property xml : indefinido         read Fxml    write Fxml;

  end;

var
  Frm_ViewERPncmupdate : TFrm_ViewERPncmupdate; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 23; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj_cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].razao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao_manifesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].evento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inclusao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registrado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao_nfe_desc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao_manifesto_desc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_estoquista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_estoquista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_conferencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
    end; 
end; 

procedure TFrm_ViewERPncmupdate.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.chave := Edit_chave.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.numero_nf := Edit_numero_nf.text;
      FController.Model.cnpj_cpf := Edit_cnpj_cpf.text;
      FController.Model.razao_social := Edit_razao_social.text;
      FController.Model.ie := Edit_ie.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.tipo_operacao := Edit_tipo_operacao.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.situacao_nfe := Edit_situacao_nfe.text;
      FController.Model.situacao_manifesto := Edit_situacao_manifesto.text;
      FController.Model.evento := Edit_evento.text;
      FController.Model.inclusao := Edit_inclusao.text;
      FController.Model.protocolo := Edit_protocolo.text;
      FController.Model.registrado := Edit_registrado.text;
      FController.Model.fornecedor := Edit_fornecedor.text;
      FController.Model.situacao_nfe_desc := Edit_situacao_nfe_desc.text;
      FController.Model.situacao_manifesto_desc := Edit_situacao_manifesto_desc.text;
      FController.Model.id_usuario_estoquista := Edit_id_usuario_estoquista.text;
      FController.Model.obs_estoquista := Edit_obs_estoquista.text;
      FController.Model.data_conferencia := Edit_data_conferencia.text;
      FController.Model.xml := Edit_xml.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPncmupdate.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPncmupdate.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPncmupdate.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPncmupdate.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPncmupdate.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPncmupdate.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPncmupdate.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 23;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := chave;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := numero_nf;  
     Grid.Cells[inttostr(i),0] := cnpj_cpf;  
     Grid.Cells[inttostr(i),0] := razao_social;  
     Grid.Cells[inttostr(i),0] := ie;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := tipo_operacao;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := situacao_nfe;  
     Grid.Cells[inttostr(i),0] := situacao_manifesto;  
     Grid.Cells[inttostr(i),0] := evento;  
     Grid.Cells[inttostr(i),0] := inclusao;  
     Grid.Cells[inttostr(i),0] := protocolo;  
     Grid.Cells[inttostr(i),0] := registrado;  
     Grid.Cells[inttostr(i),0] := fornecedor;  
     Grid.Cells[inttostr(i),0] := situacao_nfe_desc;  
     Grid.Cells[inttostr(i),0] := situacao_manifesto_desc;  
     Grid.Cells[inttostr(i),0] := id_usuario_estoquista;  
     Grid.Cells[inttostr(i),0] := obs_estoquista;  
     Grid.Cells[inttostr(i),0] := data_conferencia;  
     Grid.Cells[inttostr(i),0] := xml;  
end;

procedure TFrm_ViewERPncmupdate.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPncmupdate.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPncmupdate.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.chave := Grid.Cells[1,Grid.row];
    FController.Model.serie := Grid.Cells[2,Grid.row];
    FController.Model.numero_nf := Grid.Cells[3,Grid.row];
    FController.Model.cnpj_cpf := Grid.Cells[4,Grid.row];
    FController.Model.razao_social := Grid.Cells[5,Grid.row];
    FController.Model.ie := Grid.Cells[6,Grid.row];
    FController.Model.data_emissao := Grid.Cells[7,Grid.row];
    FController.Model.tipo_operacao := Grid.Cells[8,Grid.row];
    FController.Model.valor := Grid.Cells[9,Grid.row];
    FController.Model.situacao_nfe := Grid.Cells[10,Grid.row];
    FController.Model.situacao_manifesto := Grid.Cells[11,Grid.row];
    FController.Model.evento := Grid.Cells[12,Grid.row];
    FController.Model.inclusao := Grid.Cells[13,Grid.row];
    FController.Model.protocolo := Grid.Cells[14,Grid.row];
    FController.Model.registrado := Grid.Cells[15,Grid.row];
    FController.Model.fornecedor := Grid.Cells[16,Grid.row];
    FController.Model.situacao_nfe_desc := Grid.Cells[17,Grid.row];
    FController.Model.situacao_manifesto_desc := Grid.Cells[18,Grid.row];
    FController.Model.id_usuario_estoquista := Grid.Cells[19,Grid.row];
    FController.Model.obs_estoquista := Grid.Cells[20,Grid.row];
    FController.Model.data_conferencia := Grid.Cells[21,Grid.row];
    FController.Model.xml := Grid.Cells[22,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPncmupdate.LimparTela;  
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

procedure TFrm_ViewERPncmupdate.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setchave(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setserie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setnumero_nf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setcnpj_cpf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setrazao_social(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Settipo_operacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setsituacao_nfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setsituacao_manifesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setevento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setinclusao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setprotocolo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setregistrado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setfornecedor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setsituacao_nfe_desc(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setsituacao_manifesto_desc(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setid_usuario_estoquista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setobs_estoquista(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setdata_conferencia(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPncmupdate.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
