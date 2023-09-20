
unit View.ERP.carga_pdv_historico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.carga_pdv_historico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcargapdvhistorico = class(TForm) 
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
    FController : TControllerERPcargapdvhistorico; 
    Fid : Integer;
    Fid_carga : Integer;
    Fid_venda : Integer;
    Fnota : Integer;
    Fid_rota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_vendedor : Integer;
    Fdata : TDateTime;
    Fid_forma : Integer;
    Fcobranca : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvalor : Double;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_carga(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setnota(const Value : Integer);
    procedure Setid_rota(const Value : Integer);
    procedure Setcupom(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_forma(const Value : Integer);
    procedure Setcobranca(const Value : WideString);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setvalor(const Value : Double);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_carga : Integer         read Fid_carga    write Fid_carga;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property nota : Integer         read Fnota    write Fnota;
    property id_rota : Integer         read Fid_rota    write Fid_rota;
    property cupom : Integer         read Fcupom    write Fcupom;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property data : TDateTime         read Fdata    write Fdata;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property cobranca : WideString         read Fcobranca    write Fcobranca;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property valor : Double         read Fvalor    write Fvalor;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcargapdvhistorico : TFrm_ViewERPcargapdvhistorico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_rota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcargapdvhistorico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_carga := Edit_id_carga.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.id_rota := Edit_id_rota.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.cobranca := Edit_cobranca.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcargapdvhistorico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcargapdvhistorico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcargapdvhistorico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcargapdvhistorico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcargapdvhistorico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcargapdvhistorico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcargapdvhistorico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_carga;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := id_rota;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := cobranca;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcargapdvhistorico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcargapdvhistorico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcargapdvhistorico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_carga := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.nota := Grid.Cells[3,Grid.row];
    FController.Model.id_rota := Grid.Cells[4,Grid.row];
    FController.Model.cupom := Grid.Cells[5,Grid.row];
    FController.Model.id_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[8,Grid.row];
    FController.Model.data := Grid.Cells[9,Grid.row];
    FController.Model.id_forma := Grid.Cells[10,Grid.row];
    FController.Model.cobranca := Grid.Cells[11,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[12,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[13,Grid.row];
    FController.Model.valor := Grid.Cells[14,Grid.row];
    FController.Model.click := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcargapdvhistorico.LimparTela;  
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

procedure TFrm_ViewERPcargapdvhistorico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_carga(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setnota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_rota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setcupom(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setcobranca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcargapdvhistorico.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
