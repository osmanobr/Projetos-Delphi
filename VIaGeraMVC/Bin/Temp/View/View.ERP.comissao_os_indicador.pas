
unit View.ERP.comissao_os;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.comissao_os, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomissaoos = class(TForm) 
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
    FController : TControllerERPcomissaoos; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fid_indicador : Integer;
    Fdata : TDateTime;
    Fnome_servico : WideString;
    Fquntidade : Integer;
    Fvalor_unitario : Double;
    Ftotal_servico : Double;
    Fporcentagem_comissao : Double;
    Fvalor_comissao : Double;
    Fpago : WideString;
    Fclik : Boolean;
    Fid_funcionario : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_indicador(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setnome_servico(const Value : WideString);
    procedure Setquntidade(const Value : Integer);
    procedure Setvalor_unitario(const Value : Double);
    procedure Settotal_servico(const Value : Double);
    procedure Setporcentagem_comissao(const Value : Double);
    procedure Setvalor_comissao(const Value : Double);
    procedure Setpago(const Value : WideString);
    procedure Setclik(const Value : Boolean);
    procedure Setid_funcionario(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_indicador : Integer         read Fid_indicador    write Fid_indicador;
    property data : TDateTime         read Fdata    write Fdata;
    property nome_servico : WideString         read Fnome_servico    write Fnome_servico;
    property quntidade : Integer         read Fquntidade    write Fquntidade;
    property valor_unitario : Double         read Fvalor_unitario    write Fvalor_unitario;
    property total_servico : Double         read Ftotal_servico    write Ftotal_servico;
    property porcentagem_comissao : Double         read Fporcentagem_comissao    write Fporcentagem_comissao;
    property valor_comissao : Double         read Fvalor_comissao    write Fvalor_comissao;
    property pago : WideString         read Fpago    write Fpago;
    property clik : Boolean         read Fclik    write Fclik;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;

  end;

var
  Frm_ViewERPcomissaoos : TFrm_ViewERPcomissaoos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_indicador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quntidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porcentagem_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].clik); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
    end; 
end; 

procedure TFrm_ViewERPcomissaoos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_indicador := Edit_id_indicador.text;
      FController.Model.data := Edit_data.text;
      FController.Model.nome_servico := Edit_nome_servico.text;
      FController.Model.quntidade := Edit_quntidade.text;
      FController.Model.valor_unitario := Edit_valor_unitario.text;
      FController.Model.total_servico := Edit_total_servico.text;
      FController.Model.porcentagem_comissao := Edit_porcentagem_comissao.text;
      FController.Model.valor_comissao := Edit_valor_comissao.text;
      FController.Model.pago := Edit_pago.text;
      FController.Model.clik := Edit_clik.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomissaoos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomissaoos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomissaoos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomissaoos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomissaoos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomissaoos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomissaoos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_indicador;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := nome_servico;  
     Grid.Cells[inttostr(i),0] := quntidade;  
     Grid.Cells[inttostr(i),0] := valor_unitario;  
     Grid.Cells[inttostr(i),0] := total_servico;  
     Grid.Cells[inttostr(i),0] := porcentagem_comissao;  
     Grid.Cells[inttostr(i),0] := valor_comissao;  
     Grid.Cells[inttostr(i),0] := pago;  
     Grid.Cells[inttostr(i),0] := clik;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
end;

procedure TFrm_ViewERPcomissaoos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomissaoos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomissaoos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_os := Grid.Cells[2,Grid.row];
    FController.Model.id_indicador := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.nome_servico := Grid.Cells[5,Grid.row];
    FController.Model.quntidade := Grid.Cells[6,Grid.row];
    FController.Model.valor_unitario := Grid.Cells[7,Grid.row];
    FController.Model.total_servico := Grid.Cells[8,Grid.row];
    FController.Model.porcentagem_comissao := Grid.Cells[9,Grid.row];
    FController.Model.valor_comissao := Grid.Cells[10,Grid.row];
    FController.Model.pago := Grid.Cells[11,Grid.row];
    FController.Model.clik := Grid.Cells[12,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomissaoos.LimparTela;  
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

procedure TFrm_ViewERPcomissaoos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setid_indicador(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setnome_servico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setquntidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setvalor_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Settotal_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setporcentagem_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setvalor_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setclik(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaoos.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
