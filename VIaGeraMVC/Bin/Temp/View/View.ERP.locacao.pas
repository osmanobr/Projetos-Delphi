
unit View.ERP.lmc_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lmc_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlmcitem = class(TForm) 
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
    FController : TControllerERPlmcitem; 
    Fid : Integer;
    Fdata : TDateTime;
    Fstatus : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Finicio : TDateTime;
    Fdevolucao : TDateTime;
    Ftipo : WideString;
    Flocalizacao : indefinido;
    Fobs : indefinido;
    Fvl_equipamento : Double;
    Fvl_desconto : Double;
    Fvl_acrescimo : Double;
    Fvl_total : Double;
    Fid_forma : Integer;
    Fparcelas : Integer;
    Fdata_vencto : TDateTime;
    Fevento : indefinido;
    Ffinanceiro : WideString;
    Fdevolvido : WideString;
    Fdias : Integer;
    Fclick : Boolean;
    Faditivo : WideString;
    Finicio_aditivo : TDateTime;
    Fdevolucao_aditivo : TDateTime;
    Ftipo_aditivo : WideString;
    Fdias_aditivo : Integer;
    Fresponsavel : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Ftelefone : WideString;
    Ffrete : Double;
    Fbusca : WideString;
    Fvalor_aluguel : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setstatus(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setinicio(const Value : TDateTime);
    procedure Setdevolucao(const Value : TDateTime);
    procedure Settipo(const Value : WideString);
    procedure Setlocalizacao(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setvl_equipamento(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_acrescimo(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setid_forma(const Value : Integer);
    procedure Setparcelas(const Value : Integer);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setevento(const Value : indefinido);
    procedure Setfinanceiro(const Value : WideString);
    procedure Setdevolvido(const Value : WideString);
    procedure Setdias(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setaditivo(const Value : WideString);
    procedure Setinicio_aditivo(const Value : TDateTime);
    procedure Setdevolucao_aditivo(const Value : TDateTime);
    procedure Settipo_aditivo(const Value : WideString);
    procedure Setdias_aditivo(const Value : Integer);
    procedure Setresponsavel(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setfrete(const Value : Double);
    procedure Setbusca(const Value : WideString);
    procedure Setvalor_aluguel(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property status : WideString         read Fstatus    write Fstatus;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property inicio : TDateTime         read Finicio    write Finicio;
    property devolucao : TDateTime         read Fdevolucao    write Fdevolucao;
    property tipo : WideString         read Ftipo    write Ftipo;
    property localizacao : indefinido         read Flocalizacao    write Flocalizacao;
    property obs : indefinido         read Fobs    write Fobs;
    property vl_equipamento : Double         read Fvl_equipamento    write Fvl_equipamento;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_acrescimo : Double         read Fvl_acrescimo    write Fvl_acrescimo;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property evento : indefinido         read Fevento    write Fevento;
    property financeiro : WideString         read Ffinanceiro    write Ffinanceiro;
    property devolvido : WideString         read Fdevolvido    write Fdevolvido;
    property dias : Integer         read Fdias    write Fdias;
    property click : Boolean         read Fclick    write Fclick;
    property aditivo : WideString         read Faditivo    write Faditivo;
    property inicio_aditivo : TDateTime         read Finicio_aditivo    write Finicio_aditivo;
    property devolucao_aditivo : TDateTime         read Fdevolucao_aditivo    write Fdevolucao_aditivo;
    property tipo_aditivo : WideString         read Ftipo_aditivo    write Ftipo_aditivo;
    property dias_aditivo : Integer         read Fdias_aditivo    write Fdias_aditivo;
    property responsavel : WideString         read Fresponsavel    write Fresponsavel;
    property cpf : WideString         read Fcpf    write Fcpf;
    property rg : WideString         read Frg    write Frg;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property frete : Double         read Ffrete    write Ffrete;
    property busca : WideString         read Fbusca    write Fbusca;
    property valor_aluguel : Double         read Fvalor_aluguel    write Fvalor_aluguel;

  end;

var
  Frm_ViewERPlmcitem : TFrm_ViewERPlmcitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 34; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].localizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_acrescimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].evento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolvido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].busca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_aluguel); 
    end; 
end; 

procedure TFrm_ViewERPlmcitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.status := Edit_status.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.inicio := Edit_inicio.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.localizacao := Edit_localizacao.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.vl_equipamento := Edit_vl_equipamento.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_acrescimo := Edit_vl_acrescimo.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.evento := Edit_evento.text;
      FController.Model.financeiro := Edit_financeiro.text;
      FController.Model.devolvido := Edit_devolvido.text;
      FController.Model.dias := Edit_dias.text;
      FController.Model.click := Edit_click.text;
      FController.Model.aditivo := Edit_aditivo.text;
      FController.Model.inicio_aditivo := Edit_inicio_aditivo.text;
      FController.Model.devolucao_aditivo := Edit_devolucao_aditivo.text;
      FController.Model.tipo_aditivo := Edit_tipo_aditivo.text;
      FController.Model.dias_aditivo := Edit_dias_aditivo.text;
      FController.Model.responsavel := Edit_responsavel.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.frete := Edit_frete.text;
      FController.Model.busca := Edit_busca.text;
      FController.Model.valor_aluguel := Edit_valor_aluguel.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlmcitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlmcitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlmcitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlmcitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlmcitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlmcitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlmcitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 34;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := inicio;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := localizacao;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := vl_equipamento;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_acrescimo;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := evento;  
     Grid.Cells[inttostr(i),0] := financeiro;  
     Grid.Cells[inttostr(i),0] := devolvido;  
     Grid.Cells[inttostr(i),0] := dias;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := aditivo;  
     Grid.Cells[inttostr(i),0] := inicio_aditivo;  
     Grid.Cells[inttostr(i),0] := devolucao_aditivo;  
     Grid.Cells[inttostr(i),0] := tipo_aditivo;  
     Grid.Cells[inttostr(i),0] := dias_aditivo;  
     Grid.Cells[inttostr(i),0] := responsavel;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := frete;  
     Grid.Cells[inttostr(i),0] := busca;  
     Grid.Cells[inttostr(i),0] := valor_aluguel;  
end;

procedure TFrm_ViewERPlmcitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlmcitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlmcitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.status := Grid.Cells[2,Grid.row];
    FController.Model.id_cliente := Grid.Cells[3,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[4,Grid.row];
    FController.Model.inicio := Grid.Cells[5,Grid.row];
    FController.Model.devolucao := Grid.Cells[6,Grid.row];
    FController.Model.tipo := Grid.Cells[7,Grid.row];
    FController.Model.localizacao := Grid.Cells[8,Grid.row];
    FController.Model.obs := Grid.Cells[9,Grid.row];
    FController.Model.vl_equipamento := Grid.Cells[10,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[11,Grid.row];
    FController.Model.vl_acrescimo := Grid.Cells[12,Grid.row];
    FController.Model.vl_total := Grid.Cells[13,Grid.row];
    FController.Model.id_forma := Grid.Cells[14,Grid.row];
    FController.Model.parcelas := Grid.Cells[15,Grid.row];
    FController.Model.data_vencto := Grid.Cells[16,Grid.row];
    FController.Model.evento := Grid.Cells[17,Grid.row];
    FController.Model.financeiro := Grid.Cells[18,Grid.row];
    FController.Model.devolvido := Grid.Cells[19,Grid.row];
    FController.Model.dias := Grid.Cells[20,Grid.row];
    FController.Model.click := Grid.Cells[21,Grid.row];
    FController.Model.aditivo := Grid.Cells[22,Grid.row];
    FController.Model.inicio_aditivo := Grid.Cells[23,Grid.row];
    FController.Model.devolucao_aditivo := Grid.Cells[24,Grid.row];
    FController.Model.tipo_aditivo := Grid.Cells[25,Grid.row];
    FController.Model.dias_aditivo := Grid.Cells[26,Grid.row];
    FController.Model.responsavel := Grid.Cells[27,Grid.row];
    FController.Model.cpf := Grid.Cells[28,Grid.row];
    FController.Model.rg := Grid.Cells[29,Grid.row];
    FController.Model.telefone := Grid.Cells[30,Grid.row];
    FController.Model.frete := Grid.Cells[31,Grid.row];
    FController.Model.busca := Grid.Cells[32,Grid.row];
    FController.Model.valor_aluguel := Grid.Cells[33,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlmcitem.LimparTela;  
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

procedure TFrm_ViewERPlmcitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setinicio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdevolucao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setlocalizacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setvl_equipamento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setvl_acrescimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setevento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setfinanceiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdevolvido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setaditivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setinicio_aditivo(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdevolucao_aditivo(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Settipo_aditivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setdias_aditivo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setresponsavel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setfrete(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setbusca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlmcitem.Setvalor_aluguel(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
