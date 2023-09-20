
unit View.ERP.venda_servico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_servico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaservico = class(TForm) 
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
    FController : TControllerERPvendaservico; 
    Fid : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fobservacao : indefinido;
    Fid_cfop : Integer;
    Fid_venda : Integer;
    Fcancelada : Boolean;
    Fmodalidade : indefinido;
    Fstatus : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_servico(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setobservacao(const Value : indefinido);
    procedure Setid_cfop(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setcancelada(const Value : Boolean);
    procedure Setmodalidade(const Value : indefinido);
    procedure Setstatus(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property observacao : indefinido         read Fobservacao    write Fobservacao;
    property id_cfop : Integer         read Fid_cfop    write Fid_cfop;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property cancelada : Boolean         read Fcancelada    write Fcancelada;
    property modalidade : indefinido         read Fmodalidade    write Fmodalidade;
    property status : indefinido         read Fstatus    write Fstatus;

  end;

var
  Frm_ViewERPvendaservico : TFrm_ViewERPvendaservico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 17; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cfop); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
    end; 
end; 

procedure TFrm_ViewERPvendaservico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.id_cfop := Edit_id_cfop.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.modalidade := Edit_modalidade.text;
      FController.Model.status := Edit_status.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaservico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaservico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaservico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaservico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaservico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaservico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaservico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := id_cfop;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := modalidade;  
     Grid.Cells[inttostr(i),0] := status;  
end;

procedure TFrm_ViewERPvendaservico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaservico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaservico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.id_cliente := Grid.Cells[3,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[4,Grid.row];
    FController.Model.id_forma := Grid.Cells[5,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[6,Grid.row];
    FController.Model.vl_produto := Grid.Cells[7,Grid.row];
    FController.Model.vl_servico := Grid.Cells[8,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[9,Grid.row];
    FController.Model.vl_total := Grid.Cells[10,Grid.row];
    FController.Model.observacao := Grid.Cells[11,Grid.row];
    FController.Model.id_cfop := Grid.Cells[12,Grid.row];
    FController.Model.id_venda := Grid.Cells[13,Grid.row];
    FController.Model.cancelada := Grid.Cells[14,Grid.row];
    FController.Model.modalidade := Grid.Cells[15,Grid.row];
    FController.Model.status := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaservico.LimparTela;  
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

procedure TFrm_ViewERPvendaservico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setobservacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_cfop(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setcancelada(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setmodalidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaservico.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
