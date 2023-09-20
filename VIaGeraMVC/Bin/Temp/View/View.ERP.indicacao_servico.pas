
unit View.ERP.impressora_fiscal;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.impressora_fiscal, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimpressorafiscal = class(TForm) 
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
    FController : TControllerERPimpressorafiscal; 
    Fnome : WideString;
    Ffisica : Boolean;
    Fcpf : WideString;
    Fdata_servico : TDateTime;
    Fdata_comissao : TDateTime;
    Fvalor_servico : Double;
    Fcomissao : Double;
    Fvalor_comissao : Double;
    Ffechado : Boolean;
    Fpago : WideString;
    Fid_empresa : Integer;
    Fcnpj : WideString;
    Fid : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setnome(const Value : WideString);
    procedure Setfisica(const Value : Boolean);
    procedure Setcpf(const Value : WideString);
    procedure Setdata_servico(const Value : TDateTime);
    procedure Setdata_comissao(const Value : TDateTime);
    procedure Setvalor_servico(const Value : Double);
    procedure Setcomissao(const Value : Double);
    procedure Setvalor_comissao(const Value : Double);
    procedure Setfechado(const Value : Boolean);
    procedure Setpago(const Value : WideString);
    procedure Setid_empresa(const Value : Integer);
    procedure Setcnpj(const Value : WideString);
    procedure Setid(const Value : Integer);

  public

    property nome : WideString         read Fnome    write Fnome;
    property fisica : Boolean         read Ffisica    write Ffisica;
    property cpf : WideString         read Fcpf    write Fcpf;
    property data_servico : TDateTime         read Fdata_servico    write Fdata_servico;
    property data_comissao : TDateTime         read Fdata_comissao    write Fdata_comissao;
    property valor_servico : Double         read Fvalor_servico    write Fvalor_servico;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property valor_comissao : Double         read Fvalor_comissao    write Fvalor_comissao;
    property fechado : Boolean         read Ffechado    write Ffechado;
    property pago : WideString         read Fpago    write Fpago;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property id : Integer         read Fid    write Fid;

  end;

var
  Frm_ViewERPimpressorafiscal : TFrm_ViewERPimpressorafiscal; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fisica); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
    end; 
end; 

procedure TFrm_ViewERPimpressorafiscal.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.nome := Edit_nome.text;
      FController.Model.fisica := Edit_fisica.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.data_servico := Edit_data_servico.text;
      FController.Model.data_comissao := Edit_data_comissao.text;
      FController.Model.valor_servico := Edit_valor_servico.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.valor_comissao := Edit_valor_comissao.text;
      FController.Model.fechado := Edit_fechado.text;
      FController.Model.pago := Edit_pago.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.id := Edit_id.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimpressorafiscal.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimpressorafiscal.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimpressorafiscal.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimpressorafiscal.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimpressorafiscal.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimpressorafiscal.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimpressorafiscal.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := fisica;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := data_servico;  
     Grid.Cells[inttostr(i),0] := data_comissao;  
     Grid.Cells[inttostr(i),0] := valor_servico;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := valor_comissao;  
     Grid.Cells[inttostr(i),0] := fechado;  
     Grid.Cells[inttostr(i),0] := pago;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := id;  
end;

procedure TFrm_ViewERPimpressorafiscal.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimpressorafiscal.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimpressorafiscal.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.nome := Grid.Cells[0,Grid.row];
    FController.Model.fisica := Grid.Cells[1,Grid.row];
    FController.Model.cpf := Grid.Cells[2,Grid.row];
    FController.Model.data_servico := Grid.Cells[3,Grid.row];
    FController.Model.data_comissao := Grid.Cells[4,Grid.row];
    FController.Model.valor_servico := Grid.Cells[5,Grid.row];
    FController.Model.comissao := Grid.Cells[6,Grid.row];
    FController.Model.valor_comissao := Grid.Cells[7,Grid.row];
    FController.Model.fechado := Grid.Cells[8,Grid.row];
    FController.Model.pago := Grid.Cells[9,Grid.row];
    FController.Model.id_empresa := Grid.Cells[10,Grid.row];
    FController.Model.cnpj := Grid.Cells[11,Grid.row];
    FController.Model.id := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimpressorafiscal.LimparTela;  
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

procedure TFrm_ViewERPimpressorafiscal.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setfisica(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setdata_servico(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setdata_comissao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setvalor_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setvalor_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setfechado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimpressorafiscal.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
