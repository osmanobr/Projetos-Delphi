
unit View.ERP.import_produtos_grupos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_produtos_grupos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportprodutosgrupos = class(TForm) 
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
    FController : TControllerERPimportprodutosgrupos; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdesconto : Double;
    Fobservacao : indefinido;
    Fsenha : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setcomissao_avista(const Value : Double);
    procedure Setcomissao_aprazo(const Value : Double);
    procedure Setcomissao_servico(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Setobservacao(const Value : indefinido);
    procedure Setsenha(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property comissao_avista : Double         read Fcomissao_avista    write Fcomissao_avista;
    property comissao_aprazo : Double         read Fcomissao_aprazo    write Fcomissao_aprazo;
    property comissao_servico : Double         read Fcomissao_servico    write Fcomissao_servico;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property observacao : indefinido         read Fobservacao    write Fobservacao;
    property senha : WideString         read Fsenha    write Fsenha;

  end;

var
  Frm_ViewERPimportprodutosgrupos : TFrm_ViewERPimportprodutosgrupos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_avista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha); 
    end; 
end; 

procedure TFrm_ViewERPimportprodutosgrupos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.comissao_avista := Edit_comissao_avista.text;
      FController.Model.comissao_aprazo := Edit_comissao_aprazo.text;
      FController.Model.comissao_servico := Edit_comissao_servico.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.senha := Edit_senha.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportprodutosgrupos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportprodutosgrupos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportprodutosgrupos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportprodutosgrupos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportprodutosgrupos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportprodutosgrupos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportprodutosgrupos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := comissao_avista;  
     Grid.Cells[inttostr(i),0] := comissao_aprazo;  
     Grid.Cells[inttostr(i),0] := comissao_servico;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := senha;  
end;

procedure TFrm_ViewERPimportprodutosgrupos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportprodutosgrupos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportprodutosgrupos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.comissao_avista := Grid.Cells[3,Grid.row];
    FController.Model.comissao_aprazo := Grid.Cells[4,Grid.row];
    FController.Model.comissao_servico := Grid.Cells[5,Grid.row];
    FController.Model.desconto := Grid.Cells[6,Grid.row];
    FController.Model.observacao := Grid.Cells[7,Grid.row];
    FController.Model.senha := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportprodutosgrupos.LimparTela;  
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

procedure TFrm_ViewERPimportprodutosgrupos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setcomissao_avista(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setcomissao_aprazo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setcomissao_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setobservacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportprodutosgrupos.Setsenha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
