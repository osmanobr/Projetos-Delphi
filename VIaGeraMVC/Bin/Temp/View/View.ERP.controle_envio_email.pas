
unit View.ERP.controle_entrega_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.controle_entrega_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontroleentregaitem = class(TForm) 
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
    FController : TControllerERPcontroleentregaitem; 
    Fid : Integer;
    Fid_lote : Integer;
    Fid_fixa : Integer;
    Fid_cliente : Integer;
    Fid_conta_receber : Integer;
    Fnome_cliente : WideString;
    Fenviado : Boolean;
    Fdata_geracao : TDateTime;
    Fmensagem : indefinido;
    Fdata_envio : indefinido;
    Fclick : Boolean;
    Femail : WideString;
    Fendereco_cli : WideString;
    Fcpf_cnpj_cli : WideString;
    Forigen : WideString;
    Fnfe_chave : WideString;
    Fcupon_fiscal : WideString;
    Fdata_saida_venda : indefinido;
    Fvalor_total : Double;
    Fparcela : WideString;
    Fnfe : WideString;
    Fdescricao_email : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_lote(const Value : Integer);
    procedure Setid_fixa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setenviado(const Value : Boolean);
    procedure Setdata_geracao(const Value : TDateTime);
    procedure Setmensagem(const Value : indefinido);
    procedure Setdata_envio(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setemail(const Value : WideString);
    procedure Setendereco_cli(const Value : WideString);
    procedure Setcpf_cnpj_cli(const Value : WideString);
    procedure Setorigen(const Value : WideString);
    procedure Setnfe_chave(const Value : WideString);
    procedure Setcupon_fiscal(const Value : WideString);
    procedure Setdata_saida_venda(const Value : indefinido);
    procedure Setvalor_total(const Value : Double);
    procedure Setparcela(const Value : WideString);
    procedure Setnfe(const Value : WideString);
    procedure Setdescricao_email(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_lote : Integer         read Fid_lote    write Fid_lote;
    property id_fixa : Integer         read Fid_fixa    write Fid_fixa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property enviado : Boolean         read Fenviado    write Fenviado;
    property data_geracao : TDateTime         read Fdata_geracao    write Fdata_geracao;
    property mensagem : indefinido         read Fmensagem    write Fmensagem;
    property data_envio : indefinido         read Fdata_envio    write Fdata_envio;
    property click : Boolean         read Fclick    write Fclick;
    property email : WideString         read Femail    write Femail;
    property endereco_cli : WideString         read Fendereco_cli    write Fendereco_cli;
    property cpf_cnpj_cli : WideString         read Fcpf_cnpj_cli    write Fcpf_cnpj_cli;
    property origen : WideString         read Forigen    write Forigen;
    property nfe_chave : WideString         read Fnfe_chave    write Fnfe_chave;
    property cupon_fiscal : WideString         read Fcupon_fiscal    write Fcupon_fiscal;
    property data_saida_venda : indefinido         read Fdata_saida_venda    write Fdata_saida_venda;
    property valor_total : Double         read Fvalor_total    write Fvalor_total;
    property parcela : WideString         read Fparcela    write Fparcela;
    property nfe : WideString         read Fnfe    write Fnfe;
    property descricao_email : indefinido         read Fdescricao_email    write Fdescricao_email;

  end;

var
  Frm_ViewERPcontroleentregaitem : TFrm_ViewERPcontroleentregaitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 22; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_geracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_envio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco_cli); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf_cnpj_cli); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].origen); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupon_fiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_saida_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao_email); 
    end; 
end; 

procedure TFrm_ViewERPcontroleentregaitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_lote := Edit_id_lote.text;
      FController.Model.id_fixa := Edit_id_fixa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.enviado := Edit_enviado.text;
      FController.Model.data_geracao := Edit_data_geracao.text;
      FController.Model.mensagem := Edit_mensagem.text;
      FController.Model.data_envio := Edit_data_envio.text;
      FController.Model.click := Edit_click.text;
      FController.Model.email := Edit_email.text;
      FController.Model.endereco_cli := Edit_endereco_cli.text;
      FController.Model.cpf_cnpj_cli := Edit_cpf_cnpj_cli.text;
      FController.Model.origen := Edit_origen.text;
      FController.Model.nfe_chave := Edit_nfe_chave.text;
      FController.Model.cupon_fiscal := Edit_cupon_fiscal.text;
      FController.Model.data_saida_venda := Edit_data_saida_venda.text;
      FController.Model.valor_total := Edit_valor_total.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.descricao_email := Edit_descricao_email.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontroleentregaitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontroleentregaitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontroleentregaitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontroleentregaitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontroleentregaitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontroleentregaitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontroleentregaitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 22;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_lote;  
     Grid.Cells[inttostr(i),0] := id_fixa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := enviado;  
     Grid.Cells[inttostr(i),0] := data_geracao;  
     Grid.Cells[inttostr(i),0] := mensagem;  
     Grid.Cells[inttostr(i),0] := data_envio;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := endereco_cli;  
     Grid.Cells[inttostr(i),0] := cpf_cnpj_cli;  
     Grid.Cells[inttostr(i),0] := origen;  
     Grid.Cells[inttostr(i),0] := nfe_chave;  
     Grid.Cells[inttostr(i),0] := cupon_fiscal;  
     Grid.Cells[inttostr(i),0] := data_saida_venda;  
     Grid.Cells[inttostr(i),0] := valor_total;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := descricao_email;  
end;

procedure TFrm_ViewERPcontroleentregaitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontroleentregaitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontroleentregaitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_lote := Grid.Cells[1,Grid.row];
    FController.Model.id_fixa := Grid.Cells[2,Grid.row];
    FController.Model.id_cliente := Grid.Cells[3,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[4,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[5,Grid.row];
    FController.Model.enviado := Grid.Cells[6,Grid.row];
    FController.Model.data_geracao := Grid.Cells[7,Grid.row];
    FController.Model.mensagem := Grid.Cells[8,Grid.row];
    FController.Model.data_envio := Grid.Cells[9,Grid.row];
    FController.Model.click := Grid.Cells[10,Grid.row];
    FController.Model.email := Grid.Cells[11,Grid.row];
    FController.Model.endereco_cli := Grid.Cells[12,Grid.row];
    FController.Model.cpf_cnpj_cli := Grid.Cells[13,Grid.row];
    FController.Model.origen := Grid.Cells[14,Grid.row];
    FController.Model.nfe_chave := Grid.Cells[15,Grid.row];
    FController.Model.cupon_fiscal := Grid.Cells[16,Grid.row];
    FController.Model.data_saida_venda := Grid.Cells[17,Grid.row];
    FController.Model.valor_total := Grid.Cells[18,Grid.row];
    FController.Model.parcela := Grid.Cells[19,Grid.row];
    FController.Model.nfe := Grid.Cells[20,Grid.row];
    FController.Model.descricao_email := Grid.Cells[21,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontroleentregaitem.LimparTela;  
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

procedure TFrm_ViewERPcontroleentregaitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setid_fixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setenviado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setdata_geracao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setmensagem(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setdata_envio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setendereco_cli(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setcpf_cnpj_cli(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setorigen(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setnfe_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setcupon_fiscal(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setdata_saida_venda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setvalor_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleentregaitem.Setdescricao_email(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
