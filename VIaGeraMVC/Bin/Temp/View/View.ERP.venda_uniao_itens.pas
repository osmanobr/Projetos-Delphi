
unit View.ERP.venda_uniao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_uniao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendauniao = class(TForm) 
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
    FController : TControllerERPvendauniao; 
    Fid : Integer;
    Fid_venda_uniao : Integer;
    Fid_venda : Integer;
    Fnome_cliente : indefinido;
    Fvl_desconto : Double;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_total : Double;
    Fchave_nfce : WideString;
    Fcancelado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda_uniao(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_servico(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setchave_nfce(const Value : WideString);
    procedure Setcancelado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda_uniao : Integer         read Fid_venda_uniao    write Fid_venda_uniao;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property chave_nfce : WideString         read Fchave_nfce    write Fchave_nfce;
    property cancelado : Boolean         read Fcancelado    write Fcancelado;

  end;

var
  Frm_ViewERPvendauniao : TFrm_ViewERPvendauniao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_uniao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chave_nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
    end; 
end; 

procedure TFrm_ViewERPvendauniao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda_uniao := Edit_id_venda_uniao.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.chave_nfce := Edit_chave_nfce.text;
      FController.Model.cancelado := Edit_cancelado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendauniao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendauniao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendauniao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendauniao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendauniao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendauniao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendauniao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda_uniao;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := chave_nfce;  
     Grid.Cells[inttostr(i),0] := cancelado;  
end;

procedure TFrm_ViewERPvendauniao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendauniao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendauniao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda_uniao := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[3,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[4,Grid.row];
    FController.Model.vl_produto := Grid.Cells[5,Grid.row];
    FController.Model.vl_servico := Grid.Cells[6,Grid.row];
    FController.Model.vl_total := Grid.Cells[7,Grid.row];
    FController.Model.chave_nfce := Grid.Cells[8,Grid.row];
    FController.Model.cancelado := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendauniao.LimparTela;  
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

procedure TFrm_ViewERPvendauniao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setid_venda_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setchave_nfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniao.Setcancelado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
