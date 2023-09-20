
unit View.ERP.locacao_aditivo_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.locacao_aditivo_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlocacaoaditivoitem = class(TForm) 
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
    FController : TControllerERPlocacaoaditivoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_locacao : Integer;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fdata_vencto : TDateTime;
    Fdata : TDateTime;
    Ftaxa_juros : Double;
    Ftotal : Double;
    Fdivida : Double;
    Fjuros_pago : Double;
    Fid_forma : Integer;
    Faprazo : WideString;
    Favista : WideString;
    Fobs : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_locacao(const Value : Integer);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdata(const Value : TDateTime);
    procedure Settaxa_juros(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setdivida(const Value : Double);
    procedure Setjuros_pago(const Value : Double);
    procedure Setid_forma(const Value : Integer);
    procedure Setaprazo(const Value : WideString);
    procedure Setavista(const Value : WideString);
    procedure Setobs(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_locacao : Integer         read Fid_locacao    write Fid_locacao;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property data : TDateTime         read Fdata    write Fdata;
    property taxa_juros : Double         read Ftaxa_juros    write Ftaxa_juros;
    property total : Double         read Ftotal    write Ftotal;
    property divida : Double         read Fdivida    write Fdivida;
    property juros_pago : Double         read Fjuros_pago    write Fjuros_pago;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property aprazo : WideString         read Faprazo    write Faprazo;
    property avista : WideString         read Favista    write Favista;
    property obs : indefinido         read Fobs    write Fobs;

  end;

var
  Frm_ViewERPlocacaoaditivoitem : TFrm_ViewERPlocacaoaditivoitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].divida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].juros_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].avista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
    end; 
end; 

procedure TFrm_ViewERPlocacaoaditivoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_locacao := Edit_id_locacao.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.data := Edit_data.text;
      FController.Model.taxa_juros := Edit_taxa_juros.text;
      FController.Model.total := Edit_total.text;
      FController.Model.divida := Edit_divida.text;
      FController.Model.juros_pago := Edit_juros_pago.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.aprazo := Edit_aprazo.text;
      FController.Model.avista := Edit_avista.text;
      FController.Model.obs := Edit_obs.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlocacaoaditivoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlocacaoaditivoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlocacaoaditivoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlocacaoaditivoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlocacaoaditivoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlocacaoaditivoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlocacaoaditivoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_locacao;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := taxa_juros;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := divida;  
     Grid.Cells[inttostr(i),0] := juros_pago;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := aprazo;  
     Grid.Cells[inttostr(i),0] := avista;  
     Grid.Cells[inttostr(i),0] := obs;  
end;

procedure TFrm_ViewERPlocacaoaditivoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlocacaoaditivoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlocacaoaditivoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_locacao := Grid.Cells[2,Grid.row];
    FController.Model.documento := Grid.Cells[3,Grid.row];
    FController.Model.parcela := Grid.Cells[4,Grid.row];
    FController.Model.data_vencto := Grid.Cells[5,Grid.row];
    FController.Model.data := Grid.Cells[6,Grid.row];
    FController.Model.taxa_juros := Grid.Cells[7,Grid.row];
    FController.Model.total := Grid.Cells[8,Grid.row];
    FController.Model.divida := Grid.Cells[9,Grid.row];
    FController.Model.juros_pago := Grid.Cells[10,Grid.row];
    FController.Model.id_forma := Grid.Cells[11,Grid.row];
    FController.Model.aprazo := Grid.Cells[12,Grid.row];
    FController.Model.avista := Grid.Cells[13,Grid.row];
    FController.Model.obs := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlocacaoaditivoitem.LimparTela;  
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

procedure TFrm_ViewERPlocacaoaditivoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setid_locacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Settaxa_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setdivida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setjuros_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setaprazo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setavista(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivoitem.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
