
unit View.ERP.palmitem;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.palmitem, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpalmitem = class(TForm) 
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
    FController : TControllerERPpalmitem; 
    Fidpedido : Integer;
    Fnumero : Integer;
    Fcliente : Integer;
    Fnome_cliente : indefinido;
    Fvendedor : Integer;
    Fdata : TDateTime;
    Fdtentrega : TDateTime;
    Fcondpagto : indefinido;
    Fvlsubtotal : Double;
    Fvldesconto : Double;
    Fvltotal : Double;
    Fgerado : indefinido;
    Fclick : Boolean;
    Fvenda : indefinido;
    Fobs : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setidpedido(const Value : Integer);
    procedure Setnumero(const Value : Integer);
    procedure Setcliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setvendedor(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setdtentrega(const Value : TDateTime);
    procedure Setcondpagto(const Value : indefinido);
    procedure Setvlsubtotal(const Value : Double);
    procedure Setvldesconto(const Value : Double);
    procedure Setvltotal(const Value : Double);
    procedure Setgerado(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setvenda(const Value : indefinido);
    procedure Setobs(const Value : indefinido);

  public

    property idpedido : Integer         read Fidpedido    write Fidpedido;
    property numero : Integer         read Fnumero    write Fnumero;
    property cliente : Integer         read Fcliente    write Fcliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property vendedor : Integer         read Fvendedor    write Fvendedor;
    property data : TDateTime         read Fdata    write Fdata;
    property dtentrega : TDateTime         read Fdtentrega    write Fdtentrega;
    property condpagto : indefinido         read Fcondpagto    write Fcondpagto;
    property vlsubtotal : Double         read Fvlsubtotal    write Fvlsubtotal;
    property vldesconto : Double         read Fvldesconto    write Fvldesconto;
    property vltotal : Double         read Fvltotal    write Fvltotal;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property click : Boolean         read Fclick    write Fclick;
    property venda : indefinido         read Fvenda    write Fvenda;
    property obs : indefinido         read Fobs    write Fobs;

  end;

var
  Frm_ViewERPpalmitem : TFrm_ViewERPpalmitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 15; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].idpedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dtentrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condpagto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vlsubtotal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vldesconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vltotal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
    end; 
end; 

procedure TFrm_ViewERPpalmitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.idpedido := Edit_idpedido.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.cliente := Edit_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.vendedor := Edit_vendedor.text;
      FController.Model.data := Edit_data.text;
      FController.Model.dtentrega := Edit_dtentrega.text;
      FController.Model.condpagto := Edit_condpagto.text;
      FController.Model.vlsubtotal := Edit_vlsubtotal.text;
      FController.Model.vldesconto := Edit_vldesconto.text;
      FController.Model.vltotal := Edit_vltotal.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.click := Edit_click.text;
      FController.Model.venda := Edit_venda.text;
      FController.Model.obs := Edit_obs.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpalmitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpalmitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpalmitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpalmitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpalmitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpalmitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpalmitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := idpedido;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := vendedor;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := dtentrega;  
     Grid.Cells[inttostr(i),0] := condpagto;  
     Grid.Cells[inttostr(i),0] := vlsubtotal;  
     Grid.Cells[inttostr(i),0] := vldesconto;  
     Grid.Cells[inttostr(i),0] := vltotal;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := venda;  
     Grid.Cells[inttostr(i),0] := obs;  
end;

procedure TFrm_ViewERPpalmitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpalmitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpalmitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.idpedido := Grid.Cells[0,Grid.row];
    FController.Model.numero := Grid.Cells[1,Grid.row];
    FController.Model.cliente := Grid.Cells[2,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[3,Grid.row];
    FController.Model.vendedor := Grid.Cells[4,Grid.row];
    FController.Model.data := Grid.Cells[5,Grid.row];
    FController.Model.dtentrega := Grid.Cells[6,Grid.row];
    FController.Model.condpagto := Grid.Cells[7,Grid.row];
    FController.Model.vlsubtotal := Grid.Cells[8,Grid.row];
    FController.Model.vldesconto := Grid.Cells[9,Grid.row];
    FController.Model.vltotal := Grid.Cells[10,Grid.row];
    FController.Model.gerado := Grid.Cells[11,Grid.row];
    FController.Model.click := Grid.Cells[12,Grid.row];
    FController.Model.venda := Grid.Cells[13,Grid.row];
    FController.Model.obs := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpalmitem.LimparTela;  
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

procedure TFrm_ViewERPpalmitem.Setidpedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setnumero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setcliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setvendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setdtentrega(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setcondpagto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setvlsubtotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setvldesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setvltotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setvenda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpalmitem.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
