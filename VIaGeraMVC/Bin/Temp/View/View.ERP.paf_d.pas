
unit View.ERP.paf_d;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.paf_d, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpafd = class(TForm) 
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
    FController : TControllerERPpafd; 
    Ftipo : indefinido;
    Fnumero_dav : indefinido;
    Fdata_alteracao : TDateTime;
    Fhora_alteracao : indefinido;
    Fcodigo_produto : indefinido;
    Fdescricao : indefinido;
    Fquantidade : Double;
    Funidade : indefinido;
    Funitario : Double;
    Fdesconto : Double;
    Facrescimo : Double;
    Fvalor : Double;
    Ftrib : indefinido;
    Faliquota : Double;
    Fcancelamento : indefinido;
    Fdecimais_quantidade : Integer;
    Fdecimais_unitario : Integer;
    Ftipo_alteracao : indefinido;
    Fhash : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Settipo(const Value : indefinido);
    procedure Setnumero_dav(const Value : indefinido);
    procedure Setdata_alteracao(const Value : TDateTime);
    procedure Sethora_alteracao(const Value : indefinido);
    procedure Setcodigo_produto(const Value : indefinido);
    procedure Setdescricao(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setunidade(const Value : indefinido);
    procedure Setunitario(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Setacrescimo(const Value : Double);
    procedure Setvalor(const Value : Double);
    procedure Settrib(const Value : indefinido);
    procedure Setaliquota(const Value : Double);
    procedure Setcancelamento(const Value : indefinido);
    procedure Setdecimais_quantidade(const Value : Integer);
    procedure Setdecimais_unitario(const Value : Integer);
    procedure Settipo_alteracao(const Value : indefinido);
    procedure Sethash(const Value : indefinido);

  public

    property tipo : indefinido         read Ftipo    write Ftipo;
    property numero_dav : indefinido         read Fnumero_dav    write Fnumero_dav;
    property data_alteracao : TDateTime         read Fdata_alteracao    write Fdata_alteracao;
    property hora_alteracao : indefinido         read Fhora_alteracao    write Fhora_alteracao;
    property codigo_produto : indefinido         read Fcodigo_produto    write Fcodigo_produto;
    property descricao : indefinido         read Fdescricao    write Fdescricao;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unidade : indefinido         read Funidade    write Funidade;
    property unitario : Double         read Funitario    write Funitario;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property acrescimo : Double         read Facrescimo    write Facrescimo;
    property valor : Double         read Fvalor    write Fvalor;
    property trib : indefinido         read Ftrib    write Ftrib;
    property aliquota : Double         read Faliquota    write Faliquota;
    property cancelamento : indefinido         read Fcancelamento    write Fcancelamento;
    property decimais_quantidade : Integer         read Fdecimais_quantidade    write Fdecimais_quantidade;
    property decimais_unitario : Integer         read Fdecimais_unitario    write Fdecimais_unitario;
    property tipo_alteracao : indefinido         read Ftipo_alteracao    write Ftipo_alteracao;
    property hash : indefinido         read Fhash    write Fhash;

  end;

var
  Frm_ViewERPpafd : TFrm_ViewERPpafd; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_dav); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora_alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acrescimo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].trib); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliquota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].decimais_quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].decimais_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash); 
    end; 
end; 

procedure TFrm_ViewERPpafd.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.numero_dav := Edit_numero_dav.text;
      FController.Model.data_alteracao := Edit_data_alteracao.text;
      FController.Model.hora_alteracao := Edit_hora_alteracao.text;
      FController.Model.codigo_produto := Edit_codigo_produto.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.acrescimo := Edit_acrescimo.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.trib := Edit_trib.text;
      FController.Model.aliquota := Edit_aliquota.text;
      FController.Model.cancelamento := Edit_cancelamento.text;
      FController.Model.decimais_quantidade := Edit_decimais_quantidade.text;
      FController.Model.decimais_unitario := Edit_decimais_unitario.text;
      FController.Model.tipo_alteracao := Edit_tipo_alteracao.text;
      FController.Model.hash := Edit_hash.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpafd.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpafd.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpafd.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpafd.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpafd.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpafd.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpafd.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 19;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := numero_dav;  
     Grid.Cells[inttostr(i),0] := data_alteracao;  
     Grid.Cells[inttostr(i),0] := hora_alteracao;  
     Grid.Cells[inttostr(i),0] := codigo_produto;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := acrescimo;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := trib;  
     Grid.Cells[inttostr(i),0] := aliquota;  
     Grid.Cells[inttostr(i),0] := cancelamento;  
     Grid.Cells[inttostr(i),0] := decimais_quantidade;  
     Grid.Cells[inttostr(i),0] := decimais_unitario;  
     Grid.Cells[inttostr(i),0] := tipo_alteracao;  
     Grid.Cells[inttostr(i),0] := hash;  
end;

procedure TFrm_ViewERPpafd.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpafd.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpafd.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.tipo := Grid.Cells[0,Grid.row];
    FController.Model.numero_dav := Grid.Cells[1,Grid.row];
    FController.Model.data_alteracao := Grid.Cells[2,Grid.row];
    FController.Model.hora_alteracao := Grid.Cells[3,Grid.row];
    FController.Model.codigo_produto := Grid.Cells[4,Grid.row];
    FController.Model.descricao := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.unidade := Grid.Cells[7,Grid.row];
    FController.Model.unitario := Grid.Cells[8,Grid.row];
    FController.Model.desconto := Grid.Cells[9,Grid.row];
    FController.Model.acrescimo := Grid.Cells[10,Grid.row];
    FController.Model.valor := Grid.Cells[11,Grid.row];
    FController.Model.trib := Grid.Cells[12,Grid.row];
    FController.Model.aliquota := Grid.Cells[13,Grid.row];
    FController.Model.cancelamento := Grid.Cells[14,Grid.row];
    FController.Model.decimais_quantidade := Grid.Cells[15,Grid.row];
    FController.Model.decimais_unitario := Grid.Cells[16,Grid.row];
    FController.Model.tipo_alteracao := Grid.Cells[17,Grid.row];
    FController.Model.hash := Grid.Cells[18,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpafd.LimparTela;  
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

procedure TFrm_ViewERPpafd.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setnumero_dav(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdata_alteracao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Sethora_alteracao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setcodigo_produto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setacrescimo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Settrib(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setaliquota(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setcancelamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdecimais_quantidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdecimais_unitario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Settipo_alteracao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Sethash(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
