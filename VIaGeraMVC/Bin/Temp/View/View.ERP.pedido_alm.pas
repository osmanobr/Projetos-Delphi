
unit View.ERP.pdv_lancamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pdv_lancamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpdvlancamento = class(TForm) 
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
    FController : TControllerERPpdvlancamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_obra : Integer;
    Fid_usuario : Integer;
    Fid_vendedor : Integer;
    Fdata_emissao : indefinido;
    Fdata_saida : indefinido;
    Fnome_cliente : indefinido;
    Fnome_obra : indefinido;
    Fprodutos : Double;
    Fdescontos : Double;
    Ftotal : Double;
    Fclick : Boolean;
    Fgerado : Boolean;
    Faberto : Boolean;
    Fvenda : Boolean;
    Fid_estimativa_obra : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_obra(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setdata_emissao(const Value : indefinido);
    procedure Setdata_saida(const Value : indefinido);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setnome_obra(const Value : indefinido);
    procedure Setprodutos(const Value : Double);
    procedure Setdescontos(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setgerado(const Value : Boolean);
    procedure Setaberto(const Value : Boolean);
    procedure Setvenda(const Value : Boolean);
    procedure Setid_estimativa_obra(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_obra : Integer         read Fid_obra    write Fid_obra;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property data_emissao : indefinido         read Fdata_emissao    write Fdata_emissao;
    property data_saida : indefinido         read Fdata_saida    write Fdata_saida;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property nome_obra : indefinido         read Fnome_obra    write Fnome_obra;
    property produtos : Double         read Fprodutos    write Fprodutos;
    property descontos : Double         read Fdescontos    write Fdescontos;
    property total : Double         read Ftotal    write Ftotal;
    property click : Boolean         read Fclick    write Fclick;
    property gerado : Boolean         read Fgerado    write Fgerado;
    property aberto : Boolean         read Faberto    write Faberto;
    property venda : Boolean         read Fvenda    write Fvenda;
    property id_estimativa_obra : Integer         read Fid_estimativa_obra    write Fid_estimativa_obra;

  end;

var
  Frm_ViewERPpdvlancamento : TFrm_ViewERPpdvlancamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descontos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aberto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_estimativa_obra); 
    end; 
end; 

procedure TFrm_ViewERPpdvlancamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_obra := Edit_id_obra.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_saida := Edit_data_saida.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.nome_obra := Edit_nome_obra.text;
      FController.Model.produtos := Edit_produtos.text;
      FController.Model.descontos := Edit_descontos.text;
      FController.Model.total := Edit_total.text;
      FController.Model.click := Edit_click.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.aberto := Edit_aberto.text;
      FController.Model.venda := Edit_venda.text;
      FController.Model.id_estimativa_obra := Edit_id_estimativa_obra.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpdvlancamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpdvlancamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpdvlancamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpdvlancamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpdvlancamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpdvlancamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpdvlancamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_obra;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_saida;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := nome_obra;  
     Grid.Cells[inttostr(i),0] := produtos;  
     Grid.Cells[inttostr(i),0] := descontos;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := aberto;  
     Grid.Cells[inttostr(i),0] := venda;  
     Grid.Cells[inttostr(i),0] := id_estimativa_obra;  
end;

procedure TFrm_ViewERPpdvlancamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpdvlancamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpdvlancamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_cliente := Grid.Cells[2,Grid.row];
    FController.Model.id_obra := Grid.Cells[3,Grid.row];
    FController.Model.id_usuario := Grid.Cells[4,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[5,Grid.row];
    FController.Model.data_emissao := Grid.Cells[6,Grid.row];
    FController.Model.data_saida := Grid.Cells[7,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[8,Grid.row];
    FController.Model.nome_obra := Grid.Cells[9,Grid.row];
    FController.Model.produtos := Grid.Cells[10,Grid.row];
    FController.Model.descontos := Grid.Cells[11,Grid.row];
    FController.Model.total := Grid.Cells[12,Grid.row];
    FController.Model.click := Grid.Cells[13,Grid.row];
    FController.Model.gerado := Grid.Cells[14,Grid.row];
    FController.Model.aberto := Grid.Cells[15,Grid.row];
    FController.Model.venda := Grid.Cells[16,Grid.row];
    FController.Model.id_estimativa_obra := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpdvlancamento.LimparTela;  
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

procedure TFrm_ViewERPpdvlancamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setdata_emissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setdata_saida(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setnome_obra(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setprodutos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setdescontos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setgerado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setaberto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setvenda(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvlancamento.Setid_estimativa_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
