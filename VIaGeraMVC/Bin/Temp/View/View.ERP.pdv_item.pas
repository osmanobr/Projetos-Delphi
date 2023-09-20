
unit View.ERP.pdv_duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pdv_duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpdvduplicata = class(TForm) 
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
    FController : TControllerERPpdvduplicata; 
    Fid : Integer;
    Fid_venda : Integer;
    Fitem : Integer;
    Fdata : TDateTime;
    Fcupom : indefinido;
    Fid_caixa : Integer;
    Fid_produto : indefinido;
    Fnome_produto : WideString;
    Fid_grupo : Integer;
    Fid_fornecedor : Integer;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fst : indefinido;
    Ficms : Double;
    Fvl_icms : Double;
    Fcancelada : indefinido;
    Ftransmitida : indefinido;
    Fid_pdvcaixa : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setitem(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setcupom(const Value : indefinido);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_produto(const Value : indefinido);
    procedure Setnome_produto(const Value : WideString);
    procedure Setid_grupo(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);
    procedure Setunidade(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setst(const Value : indefinido);
    procedure Seticms(const Value : Double);
    procedure Setvl_icms(const Value : Double);
    procedure Setcancelada(const Value : indefinido);
    procedure Settransmitida(const Value : indefinido);
    procedure Setid_pdvcaixa(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property item : Integer         read Fitem    write Fitem;
    property data : TDateTime         read Fdata    write Fdata;
    property cupom : indefinido         read Fcupom    write Fcupom;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_produto : indefinido         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;
    property unidade : indefinido         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property st : indefinido         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property cancelada : indefinido         read Fcancelada    write Fcancelada;
    property transmitida : indefinido         read Ftransmitida    write Ftransmitida;
    property id_pdvcaixa : Integer         read Fid_pdvcaixa    write Fid_pdvcaixa;

  end;

var
  Frm_ViewERPpdvduplicata : TFrm_ViewERPpdvduplicata; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 21; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transmitida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pdvcaixa); 
    end; 
end; 

procedure TFrm_ViewERPpdvduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.item := Edit_item.text;
      FController.Model.data := Edit_data.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.transmitida := Edit_transmitida.text;
      FController.Model.id_pdvcaixa := Edit_id_pdvcaixa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpdvduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpdvduplicata.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpdvduplicata.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpdvduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpdvduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpdvduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpdvduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 21;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := transmitida;  
     Grid.Cells[inttostr(i),0] := id_pdvcaixa;  
end;

procedure TFrm_ViewERPpdvduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpdvduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpdvduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda := Grid.Cells[1,Grid.row];
    FController.Model.item := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.cupom := Grid.Cells[4,Grid.row];
    FController.Model.id_caixa := Grid.Cells[5,Grid.row];
    FController.Model.id_produto := Grid.Cells[6,Grid.row];
    FController.Model.nome_produto := Grid.Cells[7,Grid.row];
    FController.Model.id_grupo := Grid.Cells[8,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[9,Grid.row];
    FController.Model.unidade := Grid.Cells[10,Grid.row];
    FController.Model.quantidade := Grid.Cells[11,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[12,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[13,Grid.row];
    FController.Model.vl_total := Grid.Cells[14,Grid.row];
    FController.Model.st := Grid.Cells[15,Grid.row];
    FController.Model.icms := Grid.Cells[16,Grid.row];
    FController.Model.vl_icms := Grid.Cells[17,Grid.row];
    FController.Model.cancelada := Grid.Cells[18,Grid.row];
    FController.Model.transmitida := Grid.Cells[19,Grid.row];
    FController.Model.id_pdvcaixa := Grid.Cells[20,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpdvduplicata.LimparTela;  
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

procedure TFrm_ViewERPpdvduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setcupom(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_produto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setst(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setcancelada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Settransmitida(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdvduplicata.Setid_pdvcaixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
