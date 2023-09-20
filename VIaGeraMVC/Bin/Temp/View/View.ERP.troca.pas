
unit View.ERP.tributacoes;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.tributacoes, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtributacoes = class(TForm) 
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
    FController : TControllerERPtributacoes; 
    Fid : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fid_usuario : Integer;
    Fcupom_venda : indefinido;
    Fid_cliente : Integer;
    Fid_caixa : Integer;
    Fid_vendedor : Integer;
    Ftotal_devolvido : Double;
    Ftotal_trocado : Double;
    Ftotal_diferenca : Double;
    Fcredito : indefinido;
    Fgerado : indefinido;
    Fclick : Boolean;
    Fcupom_troca : indefinido;
    Fid_venda : Integer;
    Fid_venda_troca : Integer;
    Fid_devolucao : Integer;
    Fid_credito : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setmotivo(const Value : indefinido);
    procedure Setid_usuario(const Value : Integer);
    procedure Setcupom_venda(const Value : indefinido);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Settotal_devolvido(const Value : Double);
    procedure Settotal_trocado(const Value : Double);
    procedure Settotal_diferenca(const Value : Double);
    procedure Setcredito(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setcupom_troca(const Value : indefinido);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_venda_troca(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_credito(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property motivo : indefinido         read Fmotivo    write Fmotivo;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property cupom_venda : indefinido         read Fcupom_venda    write Fcupom_venda;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property total_devolvido : Double         read Ftotal_devolvido    write Ftotal_devolvido;
    property total_trocado : Double         read Ftotal_trocado    write Ftotal_trocado;
    property total_diferenca : Double         read Ftotal_diferenca    write Ftotal_diferenca;
    property credito : indefinido         read Fcredito    write Fcredito;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property click : Boolean         read Fclick    write Fclick;
    property cupom_troca : indefinido         read Fcupom_troca    write Fcupom_troca;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_venda_troca : Integer         read Fid_venda_troca    write Fid_venda_troca;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_credito : Integer         read Fid_credito    write Fid_credito;

  end;

var
  Frm_ViewERPtributacoes : TFrm_ViewERPtributacoes; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 19; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_devolvido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_trocado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_diferenca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
    end; 
end; 

procedure TFrm_ViewERPtributacoes.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.motivo := Edit_motivo.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.cupom_venda := Edit_cupom_venda.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.total_devolvido := Edit_total_devolvido.text;
      FController.Model.total_trocado := Edit_total_trocado.text;
      FController.Model.total_diferenca := Edit_total_diferenca.text;
      FController.Model.credito := Edit_credito.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.click := Edit_click.text;
      FController.Model.cupom_troca := Edit_cupom_troca.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_venda_troca := Edit_id_venda_troca.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_credito := Edit_id_credito.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtributacoes.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtributacoes.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtributacoes.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtributacoes.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtributacoes.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtributacoes.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtributacoes.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 19;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := motivo;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := cupom_venda;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := total_devolvido;  
     Grid.Cells[inttostr(i),0] := total_trocado;  
     Grid.Cells[inttostr(i),0] := total_diferenca;  
     Grid.Cells[inttostr(i),0] := credito;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := cupom_troca;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_venda_troca;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_credito;  
end;

procedure TFrm_ViewERPtributacoes.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtributacoes.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtributacoes.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.motivo := Grid.Cells[2,Grid.row];
    FController.Model.id_usuario := Grid.Cells[3,Grid.row];
    FController.Model.cupom_venda := Grid.Cells[4,Grid.row];
    FController.Model.id_cliente := Grid.Cells[5,Grid.row];
    FController.Model.id_caixa := Grid.Cells[6,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[7,Grid.row];
    FController.Model.total_devolvido := Grid.Cells[8,Grid.row];
    FController.Model.total_trocado := Grid.Cells[9,Grid.row];
    FController.Model.total_diferenca := Grid.Cells[10,Grid.row];
    FController.Model.credito := Grid.Cells[11,Grid.row];
    FController.Model.gerado := Grid.Cells[12,Grid.row];
    FController.Model.click := Grid.Cells[13,Grid.row];
    FController.Model.cupom_troca := Grid.Cells[14,Grid.row];
    FController.Model.id_venda := Grid.Cells[15,Grid.row];
    FController.Model.id_venda_troca := Grid.Cells[16,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[17,Grid.row];
    FController.Model.id_credito := Grid.Cells[18,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtributacoes.LimparTela;  
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

procedure TFrm_ViewERPtributacoes.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setmotivo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setcupom_venda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Settotal_devolvido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Settotal_trocado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Settotal_diferenca(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setcredito(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setcupom_troca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_venda_troca(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtributacoes.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
