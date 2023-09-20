
unit View.ERP.pdv;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pdv, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpdv = class(TForm) 
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
    FController : TControllerERPpdv; 
    Fid : Integer;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fnome_caixa : indefinido;
    Fstatus : indefinido;
    Fdata_abre : TDateTime;
    Fhora_abre : indefinido;
    Fdata_fecha : TDateTime;
    Fhora_fecha : indefinido;
    Fvl_fundo : Double;
    Fvl_sangria : Double;
    Fid_forma1 : Integer;
    Fvl_forma1 : Double;
    Fdg_forma1 : Double;
    Fid_forma2 : Integer;
    Fvl_forma2 : Double;
    Fdg_forma2 : Double;
    Fid_forma3 : Integer;
    Fvl_forma3 : Double;
    Fdg_forma3 : Double;
    Fid_forma4 : Integer;
    Fvl_forma4 : Double;
    Fdg_forma4 : Double;
    Fid_forma5 : Integer;
    Fvl_forma5 : Double;
    Fdg_forma5 : Double;
    Fid_forma6 : Integer;
    Fvl_forma6 : Double;
    Fdg_forma6 : Double;
    Fid_forma7 : Integer;
    Fvl_forma7 : Double;
    Fdg_forma7 : Double;
    Fid_forma8 : Integer;
    Fvl_forma8 : Double;
    Fdg_forma8 : Double;
    Fid_forma9 : Integer;
    Fvl_forma9 : Double;
    Fdg_forma9 : Double;
    Fid_forma10 : Integer;
    Fvl_forma10 : Double;
    Fdg_forma10 : Double;
    Fvenda_bruta : Double;
    Fdg_outros : Double;
    Fdesconto : Double;
    Facrescimos : Double;
    Fvenda_liquida : Double;
    Fdg_total : Double;
    Fdg_diferenca : Double;
    Fcupons : Integer;
    Fitens : Integer;
    Fvl_abre : Double;
    Fcanceladas : Integer;
    Fvl_cancelada : Double;
    Fvl_troco : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setnome_caixa(const Value : indefinido);
    procedure Setstatus(const Value : indefinido);
    procedure Setdata_abre(const Value : TDateTime);
    procedure Sethora_abre(const Value : indefinido);
    procedure Setdata_fecha(const Value : TDateTime);
    procedure Sethora_fecha(const Value : indefinido);
    procedure Setvl_fundo(const Value : Double);
    procedure Setvl_sangria(const Value : Double);
    procedure Setid_forma1(const Value : Integer);
    procedure Setvl_forma1(const Value : Double);
    procedure Setdg_forma1(const Value : Double);
    procedure Setid_forma2(const Value : Integer);
    procedure Setvl_forma2(const Value : Double);
    procedure Setdg_forma2(const Value : Double);
    procedure Setid_forma3(const Value : Integer);
    procedure Setvl_forma3(const Value : Double);
    procedure Setdg_forma3(const Value : Double);
    procedure Setid_forma4(const Value : Integer);
    procedure Setvl_forma4(const Value : Double);
    procedure Setdg_forma4(const Value : Double);
    procedure Setid_forma5(const Value : Integer);
    procedure Setvl_forma5(const Value : Double);
    procedure Setdg_forma5(const Value : Double);
    procedure Setid_forma6(const Value : Integer);
    procedure Setvl_forma6(const Value : Double);
    procedure Setdg_forma6(const Value : Double);
    procedure Setid_forma7(const Value : Integer);
    procedure Setvl_forma7(const Value : Double);
    procedure Setdg_forma7(const Value : Double);
    procedure Setid_forma8(const Value : Integer);
    procedure Setvl_forma8(const Value : Double);
    procedure Setdg_forma8(const Value : Double);
    procedure Setid_forma9(const Value : Integer);
    procedure Setvl_forma9(const Value : Double);
    procedure Setdg_forma9(const Value : Double);
    procedure Setid_forma10(const Value : Integer);
    procedure Setvl_forma10(const Value : Double);
    procedure Setdg_forma10(const Value : Double);
    procedure Setvenda_bruta(const Value : Double);
    procedure Setdg_outros(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Setacrescimos(const Value : Double);
    procedure Setvenda_liquida(const Value : Double);
    procedure Setdg_total(const Value : Double);
    procedure Setdg_diferenca(const Value : Double);
    procedure Setcupons(const Value : Integer);
    procedure Setitens(const Value : Integer);
    procedure Setvl_abre(const Value : Double);
    procedure Setcanceladas(const Value : Integer);
    procedure Setvl_cancelada(const Value : Double);
    procedure Setvl_troco(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property nome_caixa : indefinido         read Fnome_caixa    write Fnome_caixa;
    property status : indefinido         read Fstatus    write Fstatus;
    property data_abre : TDateTime         read Fdata_abre    write Fdata_abre;
    property hora_abre : indefinido         read Fhora_abre    write Fhora_abre;
    property data_fecha : TDateTime         read Fdata_fecha    write Fdata_fecha;
    property hora_fecha : indefinido         read Fhora_fecha    write Fhora_fecha;
    property vl_fundo : Double         read Fvl_fundo    write Fvl_fundo;
    property vl_sangria : Double         read Fvl_sangria    write Fvl_sangria;
    property id_forma1 : Integer         read Fid_forma1    write Fid_forma1;
    property vl_forma1 : Double         read Fvl_forma1    write Fvl_forma1;
    property dg_forma1 : Double         read Fdg_forma1    write Fdg_forma1;
    property id_forma2 : Integer         read Fid_forma2    write Fid_forma2;
    property vl_forma2 : Double         read Fvl_forma2    write Fvl_forma2;
    property dg_forma2 : Double         read Fdg_forma2    write Fdg_forma2;
    property id_forma3 : Integer         read Fid_forma3    write Fid_forma3;
    property vl_forma3 : Double         read Fvl_forma3    write Fvl_forma3;
    property dg_forma3 : Double         read Fdg_forma3    write Fdg_forma3;
    property id_forma4 : Integer         read Fid_forma4    write Fid_forma4;
    property vl_forma4 : Double         read Fvl_forma4    write Fvl_forma4;
    property dg_forma4 : Double         read Fdg_forma4    write Fdg_forma4;
    property id_forma5 : Integer         read Fid_forma5    write Fid_forma5;
    property vl_forma5 : Double         read Fvl_forma5    write Fvl_forma5;
    property dg_forma5 : Double         read Fdg_forma5    write Fdg_forma5;
    property id_forma6 : Integer         read Fid_forma6    write Fid_forma6;
    property vl_forma6 : Double         read Fvl_forma6    write Fvl_forma6;
    property dg_forma6 : Double         read Fdg_forma6    write Fdg_forma6;
    property id_forma7 : Integer         read Fid_forma7    write Fid_forma7;
    property vl_forma7 : Double         read Fvl_forma7    write Fvl_forma7;
    property dg_forma7 : Double         read Fdg_forma7    write Fdg_forma7;
    property id_forma8 : Integer         read Fid_forma8    write Fid_forma8;
    property vl_forma8 : Double         read Fvl_forma8    write Fvl_forma8;
    property dg_forma8 : Double         read Fdg_forma8    write Fdg_forma8;
    property id_forma9 : Integer         read Fid_forma9    write Fid_forma9;
    property vl_forma9 : Double         read Fvl_forma9    write Fvl_forma9;
    property dg_forma9 : Double         read Fdg_forma9    write Fdg_forma9;
    property id_forma10 : Integer         read Fid_forma10    write Fid_forma10;
    property vl_forma10 : Double         read Fvl_forma10    write Fvl_forma10;
    property dg_forma10 : Double         read Fdg_forma10    write Fdg_forma10;
    property venda_bruta : Double         read Fvenda_bruta    write Fvenda_bruta;
    property dg_outros : Double         read Fdg_outros    write Fdg_outros;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property acrescimos : Double         read Facrescimos    write Facrescimos;
    property venda_liquida : Double         read Fvenda_liquida    write Fvenda_liquida;
    property dg_total : Double         read Fdg_total    write Fdg_total;
    property dg_diferenca : Double         read Fdg_diferenca    write Fdg_diferenca;
    property cupons : Integer         read Fcupons    write Fcupons;
    property itens : Integer         read Fitens    write Fitens;
    property vl_abre : Double         read Fvl_abre    write Fvl_abre;
    property canceladas : Integer         read Fcanceladas    write Fcanceladas;
    property vl_cancelada : Double         read Fvl_cancelada    write Fvl_cancelada;
    property vl_troco : Double         read Fvl_troco    write Fvl_troco;

  end;

var
  Frm_ViewERPpdv : TFrm_ViewERPpdv; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 54; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_abre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_abre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_fecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_fecha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_fundo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_sangria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma8); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma8); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma8); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma9); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma9); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma9); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma10); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_forma10); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_forma10); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_bruta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_outros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acrescimos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_liquida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dg_diferenca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_abre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].canceladas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_troco); 
    end; 
end; 

procedure TFrm_ViewERPpdv.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.nome_caixa := Edit_nome_caixa.text;
      FController.Model.status := Edit_status.text;
      FController.Model.data_abre := Edit_data_abre.text;
      FController.Model.hora_abre := Edit_hora_abre.text;
      FController.Model.data_fecha := Edit_data_fecha.text;
      FController.Model.hora_fecha := Edit_hora_fecha.text;
      FController.Model.vl_fundo := Edit_vl_fundo.text;
      FController.Model.vl_sangria := Edit_vl_sangria.text;
      FController.Model.id_forma1 := Edit_id_forma1.text;
      FController.Model.vl_forma1 := Edit_vl_forma1.text;
      FController.Model.dg_forma1 := Edit_dg_forma1.text;
      FController.Model.id_forma2 := Edit_id_forma2.text;
      FController.Model.vl_forma2 := Edit_vl_forma2.text;
      FController.Model.dg_forma2 := Edit_dg_forma2.text;
      FController.Model.id_forma3 := Edit_id_forma3.text;
      FController.Model.vl_forma3 := Edit_vl_forma3.text;
      FController.Model.dg_forma3 := Edit_dg_forma3.text;
      FController.Model.id_forma4 := Edit_id_forma4.text;
      FController.Model.vl_forma4 := Edit_vl_forma4.text;
      FController.Model.dg_forma4 := Edit_dg_forma4.text;
      FController.Model.id_forma5 := Edit_id_forma5.text;
      FController.Model.vl_forma5 := Edit_vl_forma5.text;
      FController.Model.dg_forma5 := Edit_dg_forma5.text;
      FController.Model.id_forma6 := Edit_id_forma6.text;
      FController.Model.vl_forma6 := Edit_vl_forma6.text;
      FController.Model.dg_forma6 := Edit_dg_forma6.text;
      FController.Model.id_forma7 := Edit_id_forma7.text;
      FController.Model.vl_forma7 := Edit_vl_forma7.text;
      FController.Model.dg_forma7 := Edit_dg_forma7.text;
      FController.Model.id_forma8 := Edit_id_forma8.text;
      FController.Model.vl_forma8 := Edit_vl_forma8.text;
      FController.Model.dg_forma8 := Edit_dg_forma8.text;
      FController.Model.id_forma9 := Edit_id_forma9.text;
      FController.Model.vl_forma9 := Edit_vl_forma9.text;
      FController.Model.dg_forma9 := Edit_dg_forma9.text;
      FController.Model.id_forma10 := Edit_id_forma10.text;
      FController.Model.vl_forma10 := Edit_vl_forma10.text;
      FController.Model.dg_forma10 := Edit_dg_forma10.text;
      FController.Model.venda_bruta := Edit_venda_bruta.text;
      FController.Model.dg_outros := Edit_dg_outros.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.acrescimos := Edit_acrescimos.text;
      FController.Model.venda_liquida := Edit_venda_liquida.text;
      FController.Model.dg_total := Edit_dg_total.text;
      FController.Model.dg_diferenca := Edit_dg_diferenca.text;
      FController.Model.cupons := Edit_cupons.text;
      FController.Model.itens := Edit_itens.text;
      FController.Model.vl_abre := Edit_vl_abre.text;
      FController.Model.canceladas := Edit_canceladas.text;
      FController.Model.vl_cancelada := Edit_vl_cancelada.text;
      FController.Model.vl_troco := Edit_vl_troco.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpdv.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpdv.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpdv.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpdv.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpdv.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpdv.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpdv.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 54;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := nome_caixa;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := data_abre;  
     Grid.Cells[inttostr(i),0] := hora_abre;  
     Grid.Cells[inttostr(i),0] := data_fecha;  
     Grid.Cells[inttostr(i),0] := hora_fecha;  
     Grid.Cells[inttostr(i),0] := vl_fundo;  
     Grid.Cells[inttostr(i),0] := vl_sangria;  
     Grid.Cells[inttostr(i),0] := id_forma1;  
     Grid.Cells[inttostr(i),0] := vl_forma1;  
     Grid.Cells[inttostr(i),0] := dg_forma1;  
     Grid.Cells[inttostr(i),0] := id_forma2;  
     Grid.Cells[inttostr(i),0] := vl_forma2;  
     Grid.Cells[inttostr(i),0] := dg_forma2;  
     Grid.Cells[inttostr(i),0] := id_forma3;  
     Grid.Cells[inttostr(i),0] := vl_forma3;  
     Grid.Cells[inttostr(i),0] := dg_forma3;  
     Grid.Cells[inttostr(i),0] := id_forma4;  
     Grid.Cells[inttostr(i),0] := vl_forma4;  
     Grid.Cells[inttostr(i),0] := dg_forma4;  
     Grid.Cells[inttostr(i),0] := id_forma5;  
     Grid.Cells[inttostr(i),0] := vl_forma5;  
     Grid.Cells[inttostr(i),0] := dg_forma5;  
     Grid.Cells[inttostr(i),0] := id_forma6;  
     Grid.Cells[inttostr(i),0] := vl_forma6;  
     Grid.Cells[inttostr(i),0] := dg_forma6;  
     Grid.Cells[inttostr(i),0] := id_forma7;  
     Grid.Cells[inttostr(i),0] := vl_forma7;  
     Grid.Cells[inttostr(i),0] := dg_forma7;  
     Grid.Cells[inttostr(i),0] := id_forma8;  
     Grid.Cells[inttostr(i),0] := vl_forma8;  
     Grid.Cells[inttostr(i),0] := dg_forma8;  
     Grid.Cells[inttostr(i),0] := id_forma9;  
     Grid.Cells[inttostr(i),0] := vl_forma9;  
     Grid.Cells[inttostr(i),0] := dg_forma9;  
     Grid.Cells[inttostr(i),0] := id_forma10;  
     Grid.Cells[inttostr(i),0] := vl_forma10;  
     Grid.Cells[inttostr(i),0] := dg_forma10;  
     Grid.Cells[inttostr(i),0] := venda_bruta;  
     Grid.Cells[inttostr(i),0] := dg_outros;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := acrescimos;  
     Grid.Cells[inttostr(i),0] := venda_liquida;  
     Grid.Cells[inttostr(i),0] := dg_total;  
     Grid.Cells[inttostr(i),0] := dg_diferenca;  
     Grid.Cells[inttostr(i),0] := cupons;  
     Grid.Cells[inttostr(i),0] := itens;  
     Grid.Cells[inttostr(i),0] := vl_abre;  
     Grid.Cells[inttostr(i),0] := canceladas;  
     Grid.Cells[inttostr(i),0] := vl_cancelada;  
     Grid.Cells[inttostr(i),0] := vl_troco;  
end;

procedure TFrm_ViewERPpdv.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpdv.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpdv.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_caixa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.nome_caixa := Grid.Cells[3,Grid.row];
    FController.Model.status := Grid.Cells[4,Grid.row];
    FController.Model.data_abre := Grid.Cells[5,Grid.row];
    FController.Model.hora_abre := Grid.Cells[6,Grid.row];
    FController.Model.data_fecha := Grid.Cells[7,Grid.row];
    FController.Model.hora_fecha := Grid.Cells[8,Grid.row];
    FController.Model.vl_fundo := Grid.Cells[9,Grid.row];
    FController.Model.vl_sangria := Grid.Cells[10,Grid.row];
    FController.Model.id_forma1 := Grid.Cells[11,Grid.row];
    FController.Model.vl_forma1 := Grid.Cells[12,Grid.row];
    FController.Model.dg_forma1 := Grid.Cells[13,Grid.row];
    FController.Model.id_forma2 := Grid.Cells[14,Grid.row];
    FController.Model.vl_forma2 := Grid.Cells[15,Grid.row];
    FController.Model.dg_forma2 := Grid.Cells[16,Grid.row];
    FController.Model.id_forma3 := Grid.Cells[17,Grid.row];
    FController.Model.vl_forma3 := Grid.Cells[18,Grid.row];
    FController.Model.dg_forma3 := Grid.Cells[19,Grid.row];
    FController.Model.id_forma4 := Grid.Cells[20,Grid.row];
    FController.Model.vl_forma4 := Grid.Cells[21,Grid.row];
    FController.Model.dg_forma4 := Grid.Cells[22,Grid.row];
    FController.Model.id_forma5 := Grid.Cells[23,Grid.row];
    FController.Model.vl_forma5 := Grid.Cells[24,Grid.row];
    FController.Model.dg_forma5 := Grid.Cells[25,Grid.row];
    FController.Model.id_forma6 := Grid.Cells[26,Grid.row];
    FController.Model.vl_forma6 := Grid.Cells[27,Grid.row];
    FController.Model.dg_forma6 := Grid.Cells[28,Grid.row];
    FController.Model.id_forma7 := Grid.Cells[29,Grid.row];
    FController.Model.vl_forma7 := Grid.Cells[30,Grid.row];
    FController.Model.dg_forma7 := Grid.Cells[31,Grid.row];
    FController.Model.id_forma8 := Grid.Cells[32,Grid.row];
    FController.Model.vl_forma8 := Grid.Cells[33,Grid.row];
    FController.Model.dg_forma8 := Grid.Cells[34,Grid.row];
    FController.Model.id_forma9 := Grid.Cells[35,Grid.row];
    FController.Model.vl_forma9 := Grid.Cells[36,Grid.row];
    FController.Model.dg_forma9 := Grid.Cells[37,Grid.row];
    FController.Model.id_forma10 := Grid.Cells[38,Grid.row];
    FController.Model.vl_forma10 := Grid.Cells[39,Grid.row];
    FController.Model.dg_forma10 := Grid.Cells[40,Grid.row];
    FController.Model.venda_bruta := Grid.Cells[41,Grid.row];
    FController.Model.dg_outros := Grid.Cells[42,Grid.row];
    FController.Model.desconto := Grid.Cells[43,Grid.row];
    FController.Model.acrescimos := Grid.Cells[44,Grid.row];
    FController.Model.venda_liquida := Grid.Cells[45,Grid.row];
    FController.Model.dg_total := Grid.Cells[46,Grid.row];
    FController.Model.dg_diferenca := Grid.Cells[47,Grid.row];
    FController.Model.cupons := Grid.Cells[48,Grid.row];
    FController.Model.itens := Grid.Cells[49,Grid.row];
    FController.Model.vl_abre := Grid.Cells[50,Grid.row];
    FController.Model.canceladas := Grid.Cells[51,Grid.row];
    FController.Model.vl_cancelada := Grid.Cells[52,Grid.row];
    FController.Model.vl_troco := Grid.Cells[53,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpdv.LimparTela;  
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

procedure TFrm_ViewERPpdv.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setnome_caixa(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdata_abre(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Sethora_abre(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdata_fecha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Sethora_fecha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_fundo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_sangria(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma1(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma2(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma3(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma4(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma5(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma5(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma5(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma6(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma6(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma6(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma7(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma7(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma7(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma8(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma8(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma8(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma9(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma9(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma9(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setid_forma10(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_forma10(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_forma10(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvenda_bruta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_outros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setacrescimos(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvenda_liquida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setdg_diferenca(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setcupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setitens(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_abre(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setcanceladas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_cancelada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpdv.Setvl_troco(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
