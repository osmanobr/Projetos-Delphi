
unit View.ERP.os_classificacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os_classificacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPosclassificacao = class(TForm) 
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
    FController : TControllerERPosclassificacao; 
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fdata_vencto : TDateTime;
    Ftaxa_juros : Double;
    Fvl_total : Double;
    Fvl_divida : Double;
    Fjuros_pago : Double;
    Fid_forma : Integer;
    Favista : indefinido;
    Faprazo : indefinido;
    Fobs : indefinido;
    Fnomeforma : indefinido;
    Fidforma : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setdocumento(const Value : indefinido);
    procedure Setparcela(const Value : indefinido);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Settaxa_juros(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_divida(const Value : Double);
    procedure Setjuros_pago(const Value : Double);
    procedure Setid_forma(const Value : Integer);
    procedure Setavista(const Value : indefinido);
    procedure Setaprazo(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setnomeforma(const Value : indefinido);
    procedure Setidforma(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property documento : indefinido         read Fdocumento    write Fdocumento;
    property parcela : indefinido         read Fparcela    write Fparcela;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property taxa_juros : Double         read Ftaxa_juros    write Ftaxa_juros;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_divida : Double         read Fvl_divida    write Fvl_divida;
    property juros_pago : Double         read Fjuros_pago    write Fjuros_pago;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property avista : indefinido         read Favista    write Favista;
    property aprazo : indefinido         read Faprazo    write Faprazo;
    property obs : indefinido         read Fobs    write Fobs;
    property nomeforma : indefinido         read Fnomeforma    write Fnomeforma;
    property idforma : Integer         read Fidforma    write Fidforma;

  end;

var
  Frm_ViewERPosclassificacao : TFrm_ViewERPosclassificacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 17; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_divida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].avista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nomeforma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].idforma); 
    end; 
end; 

procedure TFrm_ViewERPosclassificacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.taxa_juros := Edit_taxa_juros.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_divida := Edit_vl_divida.text;
      FController.Model.juros_pago := Edit_juros_pago.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.avista := Edit_avista.text;
      FController.Model.aprazo := Edit_aprazo.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.nomeforma := Edit_nomeforma.text;
      FController.Model.idforma := Edit_idforma.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPosclassificacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPosclassificacao.BBCancelarClick(Sender: TObject); 
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
      {Verifica s� � uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPosclassificacao.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a grava��o dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
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

procedure TFrm_ViewERPosclassificacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPosclassificacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPosclassificacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPosclassificacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := taxa_juros;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_divida;  
     Grid.Cells[inttostr(i),0] := juros_pago;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := avista;  
     Grid.Cells[inttostr(i),0] := aprazo;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := nomeforma;  
     Grid.Cells[inttostr(i),0] := idforma;  
end;

procedure TFrm_ViewERPosclassificacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPosclassificacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPosclassificacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_os := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.documento := Grid.Cells[4,Grid.row];
    FController.Model.parcela := Grid.Cells[5,Grid.row];
    FController.Model.data_vencto := Grid.Cells[6,Grid.row];
    FController.Model.taxa_juros := Grid.Cells[7,Grid.row];
    FController.Model.vl_total := Grid.Cells[8,Grid.row];
    FController.Model.vl_divida := Grid.Cells[9,Grid.row];
    FController.Model.juros_pago := Grid.Cells[10,Grid.row];
    FController.Model.id_forma := Grid.Cells[11,Grid.row];
    FController.Model.avista := Grid.Cells[12,Grid.row];
    FController.Model.aprazo := Grid.Cells[13,Grid.row];
    FController.Model.obs := Grid.Cells[14,Grid.row];
    FController.Model.nomeforma := Grid.Cells[15,Grid.row];
    FController.Model.idforma := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPosclassificacao.LimparTela;  
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

procedure TFrm_ViewERPosclassificacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setdocumento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setparcela(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Settaxa_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setvl_divida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setjuros_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setavista(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setaprazo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setnomeforma(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosclassificacao.Setidforma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.