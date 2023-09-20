
unit View.ERP.veiculo_plano_acessorio;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.veiculo_plano_acessorio, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPveiculoplanoacessorio = class(TForm) 
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
    FController : TControllerERPveiculoplanoacessorio; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fplaca : indefinido;
    Fdescricao_modelo : WideString;
    Fkm : indefinido;
    Fcor : indefinido;
    Fnome_cliente : indefinido;
    Frenavam : indefinido;
    Ftprod : Integer;
    Ftpcar : Integer;
    Fuf : WideString;
    Ftara : Integer;
    Fcapkg : Integer;
    Fcapm3 : Integer;
    Fprop_cnpjcpf : WideString;
    Fprop_rntc : WideString;
    Fprop_nome : WideString;
    Fprop_ie : WideString;
    Fprop_uf : WideString;
    Fprop_tpprop : Integer;
    Ffabricante : WideString;
    Fano_fabricacao : WideString;
    Fano_modelo : WideString;
    Fcombustivel : WideString;
    Falienado : Boolean;
    Frastreador : Boolean;
    Fempresa_rastreamento : Integer;
    Fcodigo_fipe : WideString;
    Fvalor_fipe : Double;
    Ftipo_veiculo : WideString;
    Fchassis : WideString;
    Fobs : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setplaca(const Value : indefinido);
    procedure Setdescricao_modelo(const Value : WideString);
    procedure Setkm(const Value : indefinido);
    procedure Setcor(const Value : indefinido);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setrenavam(const Value : indefinido);
    procedure Settprod(const Value : Integer);
    procedure Settpcar(const Value : Integer);
    procedure Setuf(const Value : WideString);
    procedure Settara(const Value : Integer);
    procedure Setcapkg(const Value : Integer);
    procedure Setcapm3(const Value : Integer);
    procedure Setprop_cnpjcpf(const Value : WideString);
    procedure Setprop_rntc(const Value : WideString);
    procedure Setprop_nome(const Value : WideString);
    procedure Setprop_ie(const Value : WideString);
    procedure Setprop_uf(const Value : WideString);
    procedure Setprop_tpprop(const Value : Integer);
    procedure Setfabricante(const Value : WideString);
    procedure Setano_fabricacao(const Value : WideString);
    procedure Setano_modelo(const Value : WideString);
    procedure Setcombustivel(const Value : WideString);
    procedure Setalienado(const Value : Boolean);
    procedure Setrastreador(const Value : Boolean);
    procedure Setempresa_rastreamento(const Value : Integer);
    procedure Setcodigo_fipe(const Value : WideString);
    procedure Setvalor_fipe(const Value : Double);
    procedure Settipo_veiculo(const Value : WideString);
    procedure Setchassis(const Value : WideString);
    procedure Setobs(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property placa : indefinido         read Fplaca    write Fplaca;
    property descricao_modelo : WideString         read Fdescricao_modelo    write Fdescricao_modelo;
    property km : indefinido         read Fkm    write Fkm;
    property cor : indefinido         read Fcor    write Fcor;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property renavam : indefinido         read Frenavam    write Frenavam;
    property tprod : Integer         read Ftprod    write Ftprod;
    property tpcar : Integer         read Ftpcar    write Ftpcar;
    property uf : WideString         read Fuf    write Fuf;
    property tara : Integer         read Ftara    write Ftara;
    property capkg : Integer         read Fcapkg    write Fcapkg;
    property capm3 : Integer         read Fcapm3    write Fcapm3;
    property prop_cnpjcpf : WideString         read Fprop_cnpjcpf    write Fprop_cnpjcpf;
    property prop_rntc : WideString         read Fprop_rntc    write Fprop_rntc;
    property prop_nome : WideString         read Fprop_nome    write Fprop_nome;
    property prop_ie : WideString         read Fprop_ie    write Fprop_ie;
    property prop_uf : WideString         read Fprop_uf    write Fprop_uf;
    property prop_tpprop : Integer         read Fprop_tpprop    write Fprop_tpprop;
    property fabricante : WideString         read Ffabricante    write Ffabricante;
    property ano_fabricacao : WideString         read Fano_fabricacao    write Fano_fabricacao;
    property ano_modelo : WideString         read Fano_modelo    write Fano_modelo;
    property combustivel : WideString         read Fcombustivel    write Fcombustivel;
    property alienado : Boolean         read Falienado    write Falienado;
    property rastreador : Boolean         read Frastreador    write Frastreador;
    property empresa_rastreamento : Integer         read Fempresa_rastreamento    write Fempresa_rastreamento;
    property codigo_fipe : WideString         read Fcodigo_fipe    write Fcodigo_fipe;
    property valor_fipe : Double         read Fvalor_fipe    write Fvalor_fipe;
    property tipo_veiculo : WideString         read Ftipo_veiculo    write Ftipo_veiculo;
    property chassis : WideString         read Fchassis    write Fchassis;
    property obs : indefinido         read Fobs    write Fobs;

  end;

var
  Frm_ViewERPveiculoplanoacessorio : TFrm_ViewERPveiculoplanoacessorio; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 33; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao_modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].km); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].renavam); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tprod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tpcar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tara); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].capkg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].capm3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_cnpjcpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_rntc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_ie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].prop_tpprop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ano_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ano_modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].combustivel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alienado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rastreador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].empresa_rastreamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fipe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_fipe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_veiculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chassis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
    end; 
end; 

procedure TFrm_ViewERPveiculoplanoacessorio.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.descricao_modelo := Edit_descricao_modelo.text;
      FController.Model.km := Edit_km.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.renavam := Edit_renavam.text;
      FController.Model.tprod := Edit_tprod.text;
      FController.Model.tpcar := Edit_tpcar.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.tara := Edit_tara.text;
      FController.Model.capkg := Edit_capkg.text;
      FController.Model.capm3 := Edit_capm3.text;
      FController.Model.prop_cnpjcpf := Edit_prop_cnpjcpf.text;
      FController.Model.prop_rntc := Edit_prop_rntc.text;
      FController.Model.prop_nome := Edit_prop_nome.text;
      FController.Model.prop_ie := Edit_prop_ie.text;
      FController.Model.prop_uf := Edit_prop_uf.text;
      FController.Model.prop_tpprop := Edit_prop_tpprop.text;
      FController.Model.fabricante := Edit_fabricante.text;
      FController.Model.ano_fabricacao := Edit_ano_fabricacao.text;
      FController.Model.ano_modelo := Edit_ano_modelo.text;
      FController.Model.combustivel := Edit_combustivel.text;
      FController.Model.alienado := Edit_alienado.text;
      FController.Model.rastreador := Edit_rastreador.text;
      FController.Model.empresa_rastreamento := Edit_empresa_rastreamento.text;
      FController.Model.codigo_fipe := Edit_codigo_fipe.text;
      FController.Model.valor_fipe := Edit_valor_fipe.text;
      FController.Model.tipo_veiculo := Edit_tipo_veiculo.text;
      FController.Model.chassis := Edit_chassis.text;
      FController.Model.obs := Edit_obs.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPveiculoplanoacessorio.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPveiculoplanoacessorio.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPveiculoplanoacessorio.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPveiculoplanoacessorio.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPveiculoplanoacessorio.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPveiculoplanoacessorio.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPveiculoplanoacessorio.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 33;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := descricao_modelo;  
     Grid.Cells[inttostr(i),0] := km;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := renavam;  
     Grid.Cells[inttostr(i),0] := tprod;  
     Grid.Cells[inttostr(i),0] := tpcar;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := tara;  
     Grid.Cells[inttostr(i),0] := capkg;  
     Grid.Cells[inttostr(i),0] := capm3;  
     Grid.Cells[inttostr(i),0] := prop_cnpjcpf;  
     Grid.Cells[inttostr(i),0] := prop_rntc;  
     Grid.Cells[inttostr(i),0] := prop_nome;  
     Grid.Cells[inttostr(i),0] := prop_ie;  
     Grid.Cells[inttostr(i),0] := prop_uf;  
     Grid.Cells[inttostr(i),0] := prop_tpprop;  
     Grid.Cells[inttostr(i),0] := fabricante;  
     Grid.Cells[inttostr(i),0] := ano_fabricacao;  
     Grid.Cells[inttostr(i),0] := ano_modelo;  
     Grid.Cells[inttostr(i),0] := combustivel;  
     Grid.Cells[inttostr(i),0] := alienado;  
     Grid.Cells[inttostr(i),0] := rastreador;  
     Grid.Cells[inttostr(i),0] := empresa_rastreamento;  
     Grid.Cells[inttostr(i),0] := codigo_fipe;  
     Grid.Cells[inttostr(i),0] := valor_fipe;  
     Grid.Cells[inttostr(i),0] := tipo_veiculo;  
     Grid.Cells[inttostr(i),0] := chassis;  
     Grid.Cells[inttostr(i),0] := obs;  
end;

procedure TFrm_ViewERPveiculoplanoacessorio.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPveiculoplanoacessorio.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPveiculoplanoacessorio.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_cliente := Grid.Cells[2,Grid.row];
    FController.Model.placa := Grid.Cells[3,Grid.row];
    FController.Model.descricao_modelo := Grid.Cells[4,Grid.row];
    FController.Model.km := Grid.Cells[5,Grid.row];
    FController.Model.cor := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.renavam := Grid.Cells[8,Grid.row];
    FController.Model.tprod := Grid.Cells[9,Grid.row];
    FController.Model.tpcar := Grid.Cells[10,Grid.row];
    FController.Model.uf := Grid.Cells[11,Grid.row];
    FController.Model.tara := Grid.Cells[12,Grid.row];
    FController.Model.capkg := Grid.Cells[13,Grid.row];
    FController.Model.capm3 := Grid.Cells[14,Grid.row];
    FController.Model.prop_cnpjcpf := Grid.Cells[15,Grid.row];
    FController.Model.prop_rntc := Grid.Cells[16,Grid.row];
    FController.Model.prop_nome := Grid.Cells[17,Grid.row];
    FController.Model.prop_ie := Grid.Cells[18,Grid.row];
    FController.Model.prop_uf := Grid.Cells[19,Grid.row];
    FController.Model.prop_tpprop := Grid.Cells[20,Grid.row];
    FController.Model.fabricante := Grid.Cells[21,Grid.row];
    FController.Model.ano_fabricacao := Grid.Cells[22,Grid.row];
    FController.Model.ano_modelo := Grid.Cells[23,Grid.row];
    FController.Model.combustivel := Grid.Cells[24,Grid.row];
    FController.Model.alienado := Grid.Cells[25,Grid.row];
    FController.Model.rastreador := Grid.Cells[26,Grid.row];
    FController.Model.empresa_rastreamento := Grid.Cells[27,Grid.row];
    FController.Model.codigo_fipe := Grid.Cells[28,Grid.row];
    FController.Model.valor_fipe := Grid.Cells[29,Grid.row];
    FController.Model.tipo_veiculo := Grid.Cells[30,Grid.row];
    FController.Model.chassis := Grid.Cells[31,Grid.row];
    FController.Model.obs := Grid.Cells[32,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPveiculoplanoacessorio.LimparTela;  
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

procedure TFrm_ViewERPveiculoplanoacessorio.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setplaca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setdescricao_modelo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setkm(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setcor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setrenavam(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Settprod(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Settpcar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Settara(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setcapkg(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setcapm3(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_cnpjcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_rntc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_nome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_ie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_uf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setprop_tpprop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setfabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setano_fabricacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setano_modelo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setcombustivel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setalienado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setrastreador(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setempresa_rastreamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setcodigo_fipe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setvalor_fipe(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Settipo_veiculo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setchassis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculoplanoacessorio.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
