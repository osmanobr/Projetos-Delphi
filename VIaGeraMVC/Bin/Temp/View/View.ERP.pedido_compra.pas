
unit View.ERP.pedido_carregamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pedido_carregamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpedidocarregamento = class(TForm) 
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
    FController : TControllerERPpedidocarregamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_pedido : TDateTime;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : indefinido;
    Ftotal : Double;
    Fclick : Boolean;
    Fprevisao : TDateTime;
    Fbase_icms : Double;
    Fvalor_icms : Double;
    Fvalor_st : Double;
    Fvalor_ipi : Double;
    Fsituacao : indefinido;
    Ftotal_nota : Double;
    Fbase_st : Double;
    Fnome_representante : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_pedido(const Value : TDateTime);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setnome_fornecedor(const Value : indefinido);
    procedure Settotal(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setprevisao(const Value : TDateTime);
    procedure Setbase_icms(const Value : Double);
    procedure Setvalor_icms(const Value : Double);
    procedure Setvalor_st(const Value : Double);
    procedure Setvalor_ipi(const Value : Double);
    procedure Setsituacao(const Value : indefinido);
    procedure Settotal_nota(const Value : Double);
    procedure Setbase_st(const Value : Double);
    procedure Setnome_representante(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_pedido : TDateTime         read Fdata_pedido    write Fdata_pedido;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property nome_fornecedor : indefinido         read Fnome_fornecedor    write Fnome_fornecedor;
    property total : Double         read Ftotal    write Ftotal;
    property click : Boolean         read Fclick    write Fclick;
    property previsao : TDateTime         read Fprevisao    write Fprevisao;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property valor_icms : Double         read Fvalor_icms    write Fvalor_icms;
    property valor_st : Double         read Fvalor_st    write Fvalor_st;
    property valor_ipi : Double         read Fvalor_ipi    write Fvalor_ipi;
    property situacao : indefinido         read Fsituacao    write Fsituacao;
    property total_nota : Double         read Ftotal_nota    write Ftotal_nota;
    property base_st : Double         read Fbase_st    write Fbase_st;
    property nome_representante : WideString         read Fnome_representante    write Fnome_representante;

  end;

var
  Frm_ViewERPpedidocarregamento : TFrm_ViewERPpedidocarregamento; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].previsao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_representante); 
    end; 
end; 

procedure TFrm_ViewERPpedidocarregamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_pedido := Edit_data_pedido.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.nome_fornecedor := Edit_nome_fornecedor.text;
      FController.Model.total := Edit_total.text;
      FController.Model.click := Edit_click.text;
      FController.Model.previsao := Edit_previsao.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.valor_icms := Edit_valor_icms.text;
      FController.Model.valor_st := Edit_valor_st.text;
      FController.Model.valor_ipi := Edit_valor_ipi.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.total_nota := Edit_total_nota.text;
      FController.Model.base_st := Edit_base_st.text;
      FController.Model.nome_representante := Edit_nome_representante.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpedidocarregamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpedidocarregamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpedidocarregamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpedidocarregamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpedidocarregamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpedidocarregamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpedidocarregamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_pedido;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := nome_fornecedor;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := previsao;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := valor_icms;  
     Grid.Cells[inttostr(i),0] := valor_st;  
     Grid.Cells[inttostr(i),0] := valor_ipi;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := total_nota;  
     Grid.Cells[inttostr(i),0] := base_st;  
     Grid.Cells[inttostr(i),0] := nome_representante;  
end;

procedure TFrm_ViewERPpedidocarregamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpedidocarregamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpedidocarregamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_pedido := Grid.Cells[2,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[3,Grid.row];
    FController.Model.nome_fornecedor := Grid.Cells[4,Grid.row];
    FController.Model.total := Grid.Cells[5,Grid.row];
    FController.Model.click := Grid.Cells[6,Grid.row];
    FController.Model.previsao := Grid.Cells[7,Grid.row];
    FController.Model.base_icms := Grid.Cells[8,Grid.row];
    FController.Model.valor_icms := Grid.Cells[9,Grid.row];
    FController.Model.valor_st := Grid.Cells[10,Grid.row];
    FController.Model.valor_ipi := Grid.Cells[11,Grid.row];
    FController.Model.situacao := Grid.Cells[12,Grid.row];
    FController.Model.total_nota := Grid.Cells[13,Grid.row];
    FController.Model.base_st := Grid.Cells[14,Grid.row];
    FController.Model.nome_representante := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpedidocarregamento.LimparTela;  
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

procedure TFrm_ViewERPpedidocarregamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setdata_pedido(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setnome_fornecedor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setprevisao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setvalor_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setvalor_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setvalor_ipi(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setsituacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Settotal_nota(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setbase_st(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidocarregamento.Setnome_representante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
