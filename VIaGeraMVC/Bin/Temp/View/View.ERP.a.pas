
unit View.ERP.a;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.a, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPa = class(TForm) 
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
    FController : TControllerERPa; 
    Fid : Integer;
    Fid_a100 : Integer;
    Fitem : Integer;
    Fid_produto : Integer;
    Fdescricao : indefinido;
    Fvalor : Double;
    Fdesconto : Double;
    Fcod_nt_bc_cred : Integer;
    Fcst_pis : WideString;
    Fvl_bc_pis : Double;
    Faliq_pis : Double;
    Fvl_pis : Double;
    Fcst_cofins : WideString;
    Fvl_bc_cofins : Double;
    Faliq_cofins : Double;
    Fvl_cofins : Double;
    Fquantidade : Integer;
    Funitario : Double;
    Fvl_issqn_p : Double;
    Fvl_issqn : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_a100(const Value : Integer);
    procedure Setitem(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setdescricao(const Value : indefinido);
    procedure Setvalor(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Setcod_nt_bc_cred(const Value : Integer);
    procedure Setcst_pis(const Value : WideString);
    procedure Setvl_bc_pis(const Value : Double);
    procedure Setaliq_pis(const Value : Double);
    procedure Setvl_pis(const Value : Double);
    procedure Setcst_cofins(const Value : WideString);
    procedure Setvl_bc_cofins(const Value : Double);
    procedure Setaliq_cofins(const Value : Double);
    procedure Setvl_cofins(const Value : Double);
    procedure Setquantidade(const Value : Integer);
    procedure Setunitario(const Value : Double);
    procedure Setvl_issqn_p(const Value : Double);
    procedure Setvl_issqn(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_a100 : Integer         read Fid_a100    write Fid_a100;
    property item : Integer         read Fitem    write Fitem;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property valor : Double         read Fvalor    write Fvalor;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property cod_nt_bc_cred : Integer         read Fcod_nt_bc_cred    write Fcod_nt_bc_cred;
    property cst_pis : WideString         read Fcst_pis    write Fcst_pis;
    property vl_bc_pis : Double         read Fvl_bc_pis    write Fvl_bc_pis;
    property aliq_pis : Double         read Faliq_pis    write Faliq_pis;
    property vl_pis : Double         read Fvl_pis    write Fvl_pis;
    property cst_cofins : WideString         read Fcst_cofins    write Fcst_cofins;
    property vl_bc_cofins : Double         read Fvl_bc_cofins    write Fvl_bc_cofins;
    property aliq_cofins : Double         read Faliq_cofins    write Faliq_cofins;
    property vl_cofins : Double         read Fvl_cofins    write Fvl_cofins;
    property quantidade : Integer         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property vl_issqn_p : Double         read Fvl_issqn_p    write Fvl_issqn_p;
    property vl_issqn : Double         read Fvl_issqn    write Fvl_issqn;

  end;

var
  Frm_ViewERPa : TFrm_ViewERPa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 20; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_a100); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_nt_bc_cred); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_bc_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_issqn_p); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_issqn); 
    end; 
end; 

procedure TFrm_ViewERPa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_a100 := Edit_id_a100.text;
      FController.Model.item := Edit_item.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.cod_nt_bc_cred := Edit_cod_nt_bc_cred.text;
      FController.Model.cst_pis := Edit_cst_pis.text;
      FController.Model.vl_bc_pis := Edit_vl_bc_pis.text;
      FController.Model.aliq_pis := Edit_aliq_pis.text;
      FController.Model.vl_pis := Edit_vl_pis.text;
      FController.Model.cst_cofins := Edit_cst_cofins.text;
      FController.Model.vl_bc_cofins := Edit_vl_bc_cofins.text;
      FController.Model.aliq_cofins := Edit_aliq_cofins.text;
      FController.Model.vl_cofins := Edit_vl_cofins.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.vl_issqn_p := Edit_vl_issqn_p.text;
      FController.Model.vl_issqn := Edit_vl_issqn.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 20;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_a100;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := cod_nt_bc_cred;  
     Grid.Cells[inttostr(i),0] := cst_pis;  
     Grid.Cells[inttostr(i),0] := vl_bc_pis;  
     Grid.Cells[inttostr(i),0] := aliq_pis;  
     Grid.Cells[inttostr(i),0] := vl_pis;  
     Grid.Cells[inttostr(i),0] := cst_cofins;  
     Grid.Cells[inttostr(i),0] := vl_bc_cofins;  
     Grid.Cells[inttostr(i),0] := aliq_cofins;  
     Grid.Cells[inttostr(i),0] := vl_cofins;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := vl_issqn_p;  
     Grid.Cells[inttostr(i),0] := vl_issqn;  
end;

procedure TFrm_ViewERPa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_a100 := Grid.Cells[1,Grid.row];
    FController.Model.item := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.descricao := Grid.Cells[4,Grid.row];
    FController.Model.valor := Grid.Cells[5,Grid.row];
    FController.Model.desconto := Grid.Cells[6,Grid.row];
    FController.Model.cod_nt_bc_cred := Grid.Cells[7,Grid.row];
    FController.Model.cst_pis := Grid.Cells[8,Grid.row];
    FController.Model.vl_bc_pis := Grid.Cells[9,Grid.row];
    FController.Model.aliq_pis := Grid.Cells[10,Grid.row];
    FController.Model.vl_pis := Grid.Cells[11,Grid.row];
    FController.Model.cst_cofins := Grid.Cells[12,Grid.row];
    FController.Model.vl_bc_cofins := Grid.Cells[13,Grid.row];
    FController.Model.aliq_cofins := Grid.Cells[14,Grid.row];
    FController.Model.vl_cofins := Grid.Cells[15,Grid.row];
    FController.Model.quantidade := Grid.Cells[16,Grid.row];
    FController.Model.unitario := Grid.Cells[17,Grid.row];
    FController.Model.vl_issqn_p := Grid.Cells[18,Grid.row];
    FController.Model.vl_issqn := Grid.Cells[19,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPa.LimparTela;  
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

procedure TFrm_ViewERPa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setid_a100(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setcod_nt_bc_cred(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setcst_pis(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_bc_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setaliq_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_pis(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setcst_cofins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_bc_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setaliq_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_cofins(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setquantidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_issqn_p(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPa.Setvl_issqn(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
