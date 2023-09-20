
unit View.ERP.locacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.locacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlocacao = class(TForm) 
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
    FController : TControllerERPlocacao; 
    Fid : Integer;
    Fid_locacao : Integer;
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_locacao(const Value : Integer);
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

  public

    property id : Integer         read Fid    write Fid;
    property id_locacao : Integer         read Fid_locacao    write Fid_locacao;
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

  end;

var
  Frm_ViewERPlocacao : TFrm_ViewERPlocacao; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_locacao); 
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
    end; 
end; 

procedure TFrm_ViewERPlocacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_locacao := Edit_id_locacao.text;
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

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlocacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlocacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlocacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlocacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlocacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlocacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlocacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 23;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_locacao;  
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
end;

procedure TFrm_ViewERPlocacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlocacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlocacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_locacao := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.status := Grid.Cells[3,Grid.row];
    FController.Model.id_cliente := Grid.Cells[4,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[5,Grid.row];
    FController.Model.inicio := Grid.Cells[6,Grid.row];
    FController.Model.devolucao := Grid.Cells[7,Grid.row];
    FController.Model.tipo := Grid.Cells[8,Grid.row];
    FController.Model.localizacao := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.vl_equipamento := Grid.Cells[11,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[12,Grid.row];
    FController.Model.vl_acrescimo := Grid.Cells[13,Grid.row];
    FController.Model.vl_total := Grid.Cells[14,Grid.row];
    FController.Model.id_forma := Grid.Cells[15,Grid.row];
    FController.Model.parcelas := Grid.Cells[16,Grid.row];
    FController.Model.data_vencto := Grid.Cells[17,Grid.row];
    FController.Model.evento := Grid.Cells[18,Grid.row];
    FController.Model.financeiro := Grid.Cells[19,Grid.row];
    FController.Model.devolvido := Grid.Cells[20,Grid.row];
    FController.Model.dias := Grid.Cells[21,Grid.row];
    FController.Model.click := Grid.Cells[22,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlocacao.LimparTela;  
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

procedure TFrm_ViewERPlocacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setid_locacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setinicio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setdevolucao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setlocalizacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setvl_equipamento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setvl_acrescimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setevento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setfinanceiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setdevolvido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setdias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacao.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
