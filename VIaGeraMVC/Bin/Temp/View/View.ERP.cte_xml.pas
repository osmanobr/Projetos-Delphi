
unit View.ERP.cte_documentos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cte_documentos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPctedocumentos = class(TForm) 
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
    FController : TControllerERPctedocumentos; 
    Fid : Integer;
    Fid_venda : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fcte : WideString;
    Fcte_chave : WideString;
    Fcte_chave_cntg : WideString;
    Fcte_protocolo : WideString;
    Fxml_ret : indefinido;
    Fxml : indefinido;
    Fobs : indefinido;
    Fxml_off : indefinido;
    Fcontingencia : Boolean;
    Fassociacao : Boolean;
    Fcte_protocolo_canc : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setcte(const Value : WideString);
    procedure Setcte_chave(const Value : WideString);
    procedure Setcte_chave_cntg(const Value : WideString);
    procedure Setcte_protocolo(const Value : WideString);
    procedure Setxml_ret(const Value : indefinido);
    procedure Setxml(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setxml_off(const Value : indefinido);
    procedure Setcontingencia(const Value : Boolean);
    procedure Setassociacao(const Value : Boolean);
    procedure Setcte_protocolo_canc(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property cte : WideString         read Fcte    write Fcte;
    property cte_chave : WideString         read Fcte_chave    write Fcte_chave;
    property cte_chave_cntg : WideString         read Fcte_chave_cntg    write Fcte_chave_cntg;
    property cte_protocolo : WideString         read Fcte_protocolo    write Fcte_protocolo;
    property xml_ret : indefinido         read Fxml_ret    write Fxml_ret;
    property xml : indefinido         read Fxml    write Fxml;
    property obs : indefinido         read Fobs    write Fobs;
    property xml_off : indefinido         read Fxml_off    write Fxml_off;
    property contingencia : Boolean         read Fcontingencia    write Fcontingencia;
    property associacao : Boolean         read Fassociacao    write Fassociacao;
    property cte_protocolo_canc : WideString         read Fcte_protocolo_canc    write Fcte_protocolo_canc;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;

  end;

var
  Frm_ViewERPctedocumentos : TFrm_ViewERPctedocumentos; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte_chave_cntg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_ret); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_off); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contingencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].associacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte_protocolo_canc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
    end; 
end; 

procedure TFrm_ViewERPctedocumentos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.cte := Edit_cte.text;
      FController.Model.cte_chave := Edit_cte_chave.text;
      FController.Model.cte_chave_cntg := Edit_cte_chave_cntg.text;
      FController.Model.cte_protocolo := Edit_cte_protocolo.text;
      FController.Model.xml_ret := Edit_xml_ret.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.xml_off := Edit_xml_off.text;
      FController.Model.contingencia := Edit_contingencia.text;
      FController.Model.associacao := Edit_associacao.text;
      FController.Model.cte_protocolo_canc := Edit_cte_protocolo_canc.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPctedocumentos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPctedocumentos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPctedocumentos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPctedocumentos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPctedocumentos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPctedocumentos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPctedocumentos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := cte;  
     Grid.Cells[inttostr(i),0] := cte_chave;  
     Grid.Cells[inttostr(i),0] := cte_chave_cntg;  
     Grid.Cells[inttostr(i),0] := cte_protocolo;  
     Grid.Cells[inttostr(i),0] := xml_ret;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := xml_off;  
     Grid.Cells[inttostr(i),0] := contingencia;  
     Grid.Cells[inttostr(i),0] := associacao;  
     Grid.Cells[inttostr(i),0] := cte_protocolo_canc;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
end;

procedure TFrm_ViewERPctedocumentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPctedocumentos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPctedocumentos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda := Grid.Cells[1,Grid.row];
    FController.Model.id_movimento := Grid.Cells[2,Grid.row];
    FController.Model.id_cupons := Grid.Cells[3,Grid.row];
    FController.Model.cte := Grid.Cells[4,Grid.row];
    FController.Model.cte_chave := Grid.Cells[5,Grid.row];
    FController.Model.cte_chave_cntg := Grid.Cells[6,Grid.row];
    FController.Model.cte_protocolo := Grid.Cells[7,Grid.row];
    FController.Model.xml_ret := Grid.Cells[8,Grid.row];
    FController.Model.xml := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.xml_off := Grid.Cells[11,Grid.row];
    FController.Model.contingencia := Grid.Cells[12,Grid.row];
    FController.Model.associacao := Grid.Cells[13,Grid.row];
    FController.Model.cte_protocolo_canc := Grid.Cells[14,Grid.row];
    FController.Model.id_cliente := Grid.Cells[15,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPctedocumentos.LimparTela;  
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

procedure TFrm_ViewERPctedocumentos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcte_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcte_chave_cntg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcte_protocolo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setxml_ret(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setxml_off(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcontingencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setassociacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setcte_protocolo_canc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPctedocumentos.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
