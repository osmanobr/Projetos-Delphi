
unit View.ERP.telefone_parceiro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.telefone_parceiro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtelefoneparceiro = class(TForm) 
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
    FController : TControllerERPtelefoneparceiro; 
    Fid : Integer;
    Fnome : indefinido;
    Fcodigo_fabricante : indefinido;
    Funidade : indefinido;
    Fpreco_venda : Double;
    Fpreco_venda2 : Double;
    Ftam : indefinido;
    Fcor : indefinido;
    Fid_grade : Integer;
    Freferencia : indefinido;
    Fpreco_atacado : Double;
    Fnf : Integer;
    Fdatanf : TDateTime;
    Fvalor_parcelas : Double;
    Fquantidade_parcela : Integer;
    Fvalor_embalagem : Double;
    Fquantidade_itens_embalagem : Double;
    Fpreco_promocao : Double;
    Fdata_compra : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setcodigo_fabricante(const Value : indefinido);
    procedure Setunidade(const Value : indefinido);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_venda2(const Value : Double);
    procedure Settam(const Value : indefinido);
    procedure Setcor(const Value : indefinido);
    procedure Setid_grade(const Value : Integer);
    procedure Setreferencia(const Value : indefinido);
    procedure Setpreco_atacado(const Value : Double);
    procedure Setnf(const Value : Integer);
    procedure Setdatanf(const Value : TDateTime);
    procedure Setvalor_parcelas(const Value : Double);
    procedure Setquantidade_parcela(const Value : Integer);
    procedure Setvalor_embalagem(const Value : Double);
    procedure Setquantidade_itens_embalagem(const Value : Double);
    procedure Setpreco_promocao(const Value : Double);
    procedure Setdata_compra(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property nome : indefinido         read Fnome    write Fnome;
    property codigo_fabricante : indefinido         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property unidade : indefinido         read Funidade    write Funidade;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_venda2 : Double         read Fpreco_venda2    write Fpreco_venda2;
    property tam : indefinido         read Ftam    write Ftam;
    property cor : indefinido         read Fcor    write Fcor;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property referencia : indefinido         read Freferencia    write Freferencia;
    property preco_atacado : Double         read Fpreco_atacado    write Fpreco_atacado;
    property nf : Integer         read Fnf    write Fnf;
    property datanf : TDateTime         read Fdatanf    write Fdatanf;
    property valor_parcelas : Double         read Fvalor_parcelas    write Fvalor_parcelas;
    property quantidade_parcela : Integer         read Fquantidade_parcela    write Fquantidade_parcela;
    property valor_embalagem : Double         read Fvalor_embalagem    write Fvalor_embalagem;
    property quantidade_itens_embalagem : Double         read Fquantidade_itens_embalagem    write Fquantidade_itens_embalagem;
    property preco_promocao : Double         read Fpreco_promocao    write Fpreco_promocao;
    property data_compra : indefinido         read Fdata_compra    write Fdata_compra;

  end;

var
  Frm_ViewERPtelefoneparceiro : TFrm_ViewERPtelefoneparceiro; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datanf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_itens_embalagem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_compra); 
    end; 
end; 

procedure TFrm_ViewERPtelefoneparceiro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_venda2 := Edit_preco_venda2.text;
      FController.Model.tam := Edit_tam.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.referencia := Edit_referencia.text;
      FController.Model.preco_atacado := Edit_preco_atacado.text;
      FController.Model.nf := Edit_nf.text;
      FController.Model.datanf := Edit_datanf.text;
      FController.Model.valor_parcelas := Edit_valor_parcelas.text;
      FController.Model.quantidade_parcela := Edit_quantidade_parcela.text;
      FController.Model.valor_embalagem := Edit_valor_embalagem.text;
      FController.Model.quantidade_itens_embalagem := Edit_quantidade_itens_embalagem.text;
      FController.Model.preco_promocao := Edit_preco_promocao.text;
      FController.Model.data_compra := Edit_data_compra.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtelefoneparceiro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtelefoneparceiro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtelefoneparceiro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtelefoneparceiro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtelefoneparceiro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtelefoneparceiro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtelefoneparceiro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 19;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_venda2;  
     Grid.Cells[inttostr(i),0] := tam;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := referencia;  
     Grid.Cells[inttostr(i),0] := preco_atacado;  
     Grid.Cells[inttostr(i),0] := nf;  
     Grid.Cells[inttostr(i),0] := datanf;  
     Grid.Cells[inttostr(i),0] := valor_parcelas;  
     Grid.Cells[inttostr(i),0] := quantidade_parcela;  
     Grid.Cells[inttostr(i),0] := valor_embalagem;  
     Grid.Cells[inttostr(i),0] := quantidade_itens_embalagem;  
     Grid.Cells[inttostr(i),0] := preco_promocao;  
     Grid.Cells[inttostr(i),0] := data_compra;  
end;

procedure TFrm_ViewERPtelefoneparceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtelefoneparceiro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtelefoneparceiro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[2,Grid.row];
    FController.Model.unidade := Grid.Cells[3,Grid.row];
    FController.Model.preco_venda := Grid.Cells[4,Grid.row];
    FController.Model.preco_venda2 := Grid.Cells[5,Grid.row];
    FController.Model.tam := Grid.Cells[6,Grid.row];
    FController.Model.cor := Grid.Cells[7,Grid.row];
    FController.Model.id_grade := Grid.Cells[8,Grid.row];
    FController.Model.referencia := Grid.Cells[9,Grid.row];
    FController.Model.preco_atacado := Grid.Cells[10,Grid.row];
    FController.Model.nf := Grid.Cells[11,Grid.row];
    FController.Model.datanf := Grid.Cells[12,Grid.row];
    FController.Model.valor_parcelas := Grid.Cells[13,Grid.row];
    FController.Model.quantidade_parcela := Grid.Cells[14,Grid.row];
    FController.Model.valor_embalagem := Grid.Cells[15,Grid.row];
    FController.Model.quantidade_itens_embalagem := Grid.Cells[16,Grid.row];
    FController.Model.preco_promocao := Grid.Cells[17,Grid.row];
    FController.Model.data_compra := Grid.Cells[18,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtelefoneparceiro.LimparTela;  
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

procedure TFrm_ViewERPtelefoneparceiro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setcodigo_fabricante(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setpreco_venda2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Settam(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setcor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setreferencia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setpreco_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setnf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setdatanf(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setvalor_parcelas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setquantidade_parcela(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setvalor_embalagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setquantidade_itens_embalagem(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setpreco_promocao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtelefoneparceiro.Setdata_compra(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
