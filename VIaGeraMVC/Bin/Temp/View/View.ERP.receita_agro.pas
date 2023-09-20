
unit View.ERP.reajuste_preco_itens;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.reajuste_preco_itens, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPreajusteprecoitens = class(TForm) 
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
    FController : TControllerERPreajusteprecoitens; 
    Fid : Integer;
    Fdata_emissao : TDateTime;
    Fart : indefinido;
    Fvisto : indefinido;
    Fuf : indefinido;
    Fid_venda : Integer;
    Fnfe : indefinido;
    Fserie : indefinido;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Flocal_aplicacao : indefinido;
    Funidade_recebimento : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata_emissao(const Value : TDateTime);
    procedure Setart(const Value : indefinido);
    procedure Setvisto(const Value : indefinido);
    procedure Setuf(const Value : indefinido);
    procedure Setid_venda(const Value : Integer);
    procedure Setnfe(const Value : indefinido);
    procedure Setserie(const Value : indefinido);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setlocal_aplicacao(const Value : indefinido);
    procedure Setunidade_recebimento(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property data_emissao : TDateTime         read Fdata_emissao    write Fdata_emissao;
    property art : indefinido         read Fart    write Fart;
    property visto : indefinido         read Fvisto    write Fvisto;
    property uf : indefinido         read Fuf    write Fuf;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property nfe : indefinido         read Fnfe    write Fnfe;
    property serie : indefinido         read Fserie    write Fserie;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property local_aplicacao : indefinido         read Flocal_aplicacao    write Flocal_aplicacao;
    property unidade_recebimento : indefinido         read Funidade_recebimento    write Funidade_recebimento;

  end;

var
  Frm_ViewERPreajusteprecoitens : TFrm_ViewERPreajusteprecoitens; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].art); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].visto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].local_aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade_recebimento); 
    end; 
end; 

procedure TFrm_ViewERPreajusteprecoitens.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.art := Edit_art.text;
      FController.Model.visto := Edit_visto.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.local_aplicacao := Edit_local_aplicacao.text;
      FController.Model.unidade_recebimento := Edit_unidade_recebimento.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPreajusteprecoitens.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPreajusteprecoitens.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPreajusteprecoitens.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPreajusteprecoitens.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPreajusteprecoitens.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPreajusteprecoitens.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPreajusteprecoitens.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := art;  
     Grid.Cells[inttostr(i),0] := visto;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := local_aplicacao;  
     Grid.Cells[inttostr(i),0] := unidade_recebimento;  
end;

procedure TFrm_ViewERPreajusteprecoitens.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPreajusteprecoitens.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPreajusteprecoitens.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data_emissao := Grid.Cells[1,Grid.row];
    FController.Model.art := Grid.Cells[2,Grid.row];
    FController.Model.visto := Grid.Cells[3,Grid.row];
    FController.Model.uf := Grid.Cells[4,Grid.row];
    FController.Model.id_venda := Grid.Cells[5,Grid.row];
    FController.Model.nfe := Grid.Cells[6,Grid.row];
    FController.Model.serie := Grid.Cells[7,Grid.row];
    FController.Model.id_cliente := Grid.Cells[8,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[9,Grid.row];
    FController.Model.local_aplicacao := Grid.Cells[10,Grid.row];
    FController.Model.unidade_recebimento := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPreajusteprecoitens.LimparTela;  
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

procedure TFrm_ViewERPreajusteprecoitens.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setdata_emissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setart(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setvisto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setuf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setnfe(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setserie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setlocal_aplicacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreajusteprecoitens.Setunidade_recebimento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
