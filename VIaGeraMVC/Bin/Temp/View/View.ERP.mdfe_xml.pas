
unit View.ERP.mdfe_documentos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.mdfe_documentos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmdfedocumentos = class(TForm) 
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
    FController : TControllerERPmdfedocumentos; 
    Fid : Integer;
    Fserie : Integer;
    Fid_venda : Integer;
    Fnum_mdfe : WideString;
    Fdata_emissao : indefinido;
    Fuf_ini : WideString;
    Fuf_per : WideString;
    Fuf_fim : WideString;
    Fmdfe_chave : WideString;
    Fmdfe_protocolo : WideString;
    Fsituacao : WideString;
    Fxml : indefinido;
    Fcontingencia : Boolean;
    Fmdfe_protocolo_canc : WideString;
    Fmdfe_protocolo_ence : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_empresa : Integer;
    Fplaca : WideString;
    Fativo : indefinido;
    Fxml_encerramento : indefinido;
    Ftipo_carga : WideString;
    Fprod_predominante : WideString;
    Fean : WideString;
    Fncm : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setserie(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setnum_mdfe(const Value : WideString);
    procedure Setdata_emissao(const Value : indefinido);
    procedure Setuf_ini(const Value : WideString);
    procedure Setuf_per(const Value : WideString);
    procedure Setuf_fim(const Value : WideString);
    procedure Setmdfe_chave(const Value : WideString);
    procedure Setmdfe_protocolo(const Value : WideString);
    procedure Setsituacao(const Value : WideString);
    procedure Setxml(const Value : indefinido);
    procedure Setcontingencia(const Value : Boolean);
    procedure Setmdfe_protocolo_canc(const Value : WideString);
    procedure Setmdfe_protocolo_ence(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_empresa(const Value : Integer);
    procedure Setplaca(const Value : WideString);
    procedure Setativo(const Value : indefinido);
    procedure Setxml_encerramento(const Value : indefinido);
    procedure Settipo_carga(const Value : WideString);
    procedure Setprod_predominante(const Value : WideString);
    procedure Setean(const Value : WideString);
    procedure Setncm(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property serie : Integer         read Fserie    write Fserie;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property num_mdfe : WideString         read Fnum_mdfe    write Fnum_mdfe;
    property data_emissao : indefinido         read Fdata_emissao    write Fdata_emissao;
    property uf_ini : WideString         read Fuf_ini    write Fuf_ini;
    property uf_per : WideString         read Fuf_per    write Fuf_per;
    property uf_fim : WideString         read Fuf_fim    write Fuf_fim;
    property mdfe_chave : WideString         read Fmdfe_chave    write Fmdfe_chave;
    property mdfe_protocolo : WideString         read Fmdfe_protocolo    write Fmdfe_protocolo;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property xml : indefinido         read Fxml    write Fxml;
    property contingencia : Boolean         read Fcontingencia    write Fcontingencia;
    property mdfe_protocolo_canc : WideString         read Fmdfe_protocolo_canc    write Fmdfe_protocolo_canc;
    property mdfe_protocolo_ence : WideString         read Fmdfe_protocolo_ence    write Fmdfe_protocolo_ence;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property placa : WideString         read Fplaca    write Fplaca;
    property ativo : indefinido         read Fativo    write Fativo;
    property xml_encerramento : indefinido         read Fxml_encerramento    write Fxml_encerramento;
    property tipo_carga : WideString         read Ftipo_carga    write Ftipo_carga;
    property prod_predominante : WideString         read Fprod_predominante    write Fprod_predominante;
    property ean : WideString         read Fean    write Fean;
    property ncm : WideString         read Fncm    write Fncm;

  end;

var
  Frm_ViewERPmdfedocumentos : TFrm_ViewERPmdfedocumentos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 25; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].num_mdfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_ini); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_per); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_fim); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mdfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mdfe_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contingencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mdfe_protocolo_canc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mdfe_protocolo_ence); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_encerramento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prod_predominante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
    end; 
end; 

procedure TFrm_ViewERPmdfedocumentos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.num_mdfe := Edit_num_mdfe.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.uf_ini := Edit_uf_ini.text;
      FController.Model.uf_per := Edit_uf_per.text;
      FController.Model.uf_fim := Edit_uf_fim.text;
      FController.Model.mdfe_chave := Edit_mdfe_chave.text;
      FController.Model.mdfe_protocolo := Edit_mdfe_protocolo.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.contingencia := Edit_contingencia.text;
      FController.Model.mdfe_protocolo_canc := Edit_mdfe_protocolo_canc.text;
      FController.Model.mdfe_protocolo_ence := Edit_mdfe_protocolo_ence.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.xml_encerramento := Edit_xml_encerramento.text;
      FController.Model.tipo_carga := Edit_tipo_carga.text;
      FController.Model.prod_predominante := Edit_prod_predominante.text;
      FController.Model.ean := Edit_ean.text;
      FController.Model.ncm := Edit_ncm.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmdfedocumentos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmdfedocumentos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmdfedocumentos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmdfedocumentos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmdfedocumentos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmdfedocumentos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmdfedocumentos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 25;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := num_mdfe;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := uf_ini;  
     Grid.Cells[inttostr(i),0] := uf_per;  
     Grid.Cells[inttostr(i),0] := uf_fim;  
     Grid.Cells[inttostr(i),0] := mdfe_chave;  
     Grid.Cells[inttostr(i),0] := mdfe_protocolo;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := contingencia;  
     Grid.Cells[inttostr(i),0] := mdfe_protocolo_canc;  
     Grid.Cells[inttostr(i),0] := mdfe_protocolo_ence;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := xml_encerramento;  
     Grid.Cells[inttostr(i),0] := tipo_carga;  
     Grid.Cells[inttostr(i),0] := prod_predominante;  
     Grid.Cells[inttostr(i),0] := ean;  
     Grid.Cells[inttostr(i),0] := ncm;  
end;

procedure TFrm_ViewERPmdfedocumentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmdfedocumentos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmdfedocumentos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.serie := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.num_mdfe := Grid.Cells[3,Grid.row];
    FController.Model.data_emissao := Grid.Cells[4,Grid.row];
    FController.Model.uf_ini := Grid.Cells[5,Grid.row];
    FController.Model.uf_per := Grid.Cells[6,Grid.row];
    FController.Model.uf_fim := Grid.Cells[7,Grid.row];
    FController.Model.mdfe_chave := Grid.Cells[8,Grid.row];
    FController.Model.mdfe_protocolo := Grid.Cells[9,Grid.row];
    FController.Model.situacao := Grid.Cells[10,Grid.row];
    FController.Model.xml := Grid.Cells[11,Grid.row];
    FController.Model.contingencia := Grid.Cells[12,Grid.row];
    FController.Model.mdfe_protocolo_canc := Grid.Cells[13,Grid.row];
    FController.Model.mdfe_protocolo_ence := Grid.Cells[14,Grid.row];
    FController.Model.id_cliente := Grid.Cells[15,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[16,Grid.row];
    FController.Model.id_empresa := Grid.Cells[17,Grid.row];
    FController.Model.placa := Grid.Cells[18,Grid.row];
    FController.Model.ativo := Grid.Cells[19,Grid.row];
    FController.Model.xml_encerramento := Grid.Cells[20,Grid.row];
    FController.Model.tipo_carga := Grid.Cells[21,Grid.row];
    FController.Model.prod_predominante := Grid.Cells[22,Grid.row];
    FController.Model.ean := Grid.Cells[23,Grid.row];
    FController.Model.ncm := Grid.Cells[24,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmdfedocumentos.LimparTela;  
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

procedure TFrm_ViewERPmdfedocumentos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setnum_mdfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setdata_emissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setuf_ini(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setuf_per(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setuf_fim(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setmdfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setmdfe_protocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setcontingencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setmdfe_protocolo_canc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setmdfe_protocolo_ence(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setplaca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setativo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setxml_encerramento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Settipo_carga(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setprod_predominante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmdfedocumentos.Setncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
