
unit View.ERP.orcamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.orcamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPorcamento = class(TForm) 
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
    FController : TControllerERPorcamento; 
    Fid : Integer;
    Fid_empresa : Integer;
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

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
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

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
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

  end;

var
  Frm_ViewERPorcamento : TFrm_ViewERPorcamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
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
    end; 
end; 

procedure TFrm_ViewERPorcamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
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

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPorcamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPorcamento.BBCancelarClick(Sender: TObject); 
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
      {Verifica s� � uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPorcamento.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a grava��o dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
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

procedure TFrm_ViewERPorcamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPorcamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPorcamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPorcamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
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
end;

procedure TFrm_ViewERPorcamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPorcamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPorcamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.id_usuario := Grid.Cells[3,Grid.row];
    FController.Model.id_cliente := Grid.Cells[4,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[5,Grid.row];
    FController.Model.id_forma := Grid.Cells[6,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[7,Grid.row];
    FController.Model.vl_produto := Grid.Cells[8,Grid.row];
    FController.Model.vl_servico := Grid.Cells[9,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[10,Grid.row];
    FController.Model.vl_total := Grid.Cells[11,Grid.row];
    FController.Model.observacao := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPorcamento.LimparTela;  
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

procedure TFrm_ViewERPorcamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPorcamento.Setobservacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
