
unit View.ERP.devolucao_referencia;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.devolucao_referencia, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdevolucaoreferencia = class(TForm) 
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
    FController : TControllerERPdevolucaoreferencia; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_devolucao : Integer;
    Fid_di : Integer;
    Fnumero : WideString;
    Fsequencia : Integer;
    Fcodigo_fabricante : WideString;
    Fdesconto : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_di(const Value : Integer);
    procedure Setnumero(const Value : WideString);
    procedure Setsequencia(const Value : Integer);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setdesconto(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_di : Integer         read Fid_di    write Fid_di;
    property numero : WideString         read Fnumero    write Fnumero;
    property sequencia : Integer         read Fsequencia    write Fsequencia;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property desconto : Double         read Fdesconto    write Fdesconto;

  end;

var
  Frm_ViewERPdevolucaoreferencia : TFrm_ViewERPdevolucaoreferencia; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_di); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sequencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
    end; 
end; 

procedure TFrm_ViewERPdevolucaoreferencia.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_di := Edit_id_di.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.sequencia := Edit_sequencia.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.desconto := Edit_desconto.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdevolucaoreferencia.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdevolucaoreferencia.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdevolucaoreferencia.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdevolucaoreferencia.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdevolucaoreferencia.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdevolucaoreferencia.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdevolucaoreferencia.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_di;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := sequencia;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := desconto;  
end;

procedure TFrm_ViewERPdevolucaoreferencia.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdevolucaoreferencia.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdevolucaoreferencia.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[2,Grid.row];
    FController.Model.id_di := Grid.Cells[3,Grid.row];
    FController.Model.numero := Grid.Cells[4,Grid.row];
    FController.Model.sequencia := Grid.Cells[5,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[6,Grid.row];
    FController.Model.desconto := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdevolucaoreferencia.LimparTela;  
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

procedure TFrm_ViewERPdevolucaoreferencia.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setid_di(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setsequencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoreferencia.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
