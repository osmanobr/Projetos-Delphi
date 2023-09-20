
unit View.ERP.dados_boleto;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.dados_boleto, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdadosboleto = class(TForm) 
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
    FController : TControllerERPdadosboleto; 
    Fid : Integer;
    Fid_devolucao : Integer;
    Fid_empresa : Integer;
    Fnumero : WideString;
    Fdata : TDateTime;
    Flocal_desembarque : WideString;
    Fuf_desembarque : WideString;
    Fdata_desembarque : TDateTime;
    Fcodigo_exportador : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnumero(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setlocal_desembarque(const Value : WideString);
    procedure Setuf_desembarque(const Value : WideString);
    procedure Setdata_desembarque(const Value : TDateTime);
    procedure Setcodigo_exportador(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property numero : WideString         read Fnumero    write Fnumero;
    property data : TDateTime         read Fdata    write Fdata;
    property local_desembarque : WideString         read Flocal_desembarque    write Flocal_desembarque;
    property uf_desembarque : WideString         read Fuf_desembarque    write Fuf_desembarque;
    property data_desembarque : TDateTime         read Fdata_desembarque    write Fdata_desembarque;
    property codigo_exportador : WideString         read Fcodigo_exportador    write Fcodigo_exportador;

  end;

var
  Frm_ViewERPdadosboleto : TFrm_ViewERPdadosboleto; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].local_desembarque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf_desembarque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_desembarque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_exportador); 
    end; 
end; 

procedure TFrm_ViewERPdadosboleto.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.data := Edit_data.text;
      FController.Model.local_desembarque := Edit_local_desembarque.text;
      FController.Model.uf_desembarque := Edit_uf_desembarque.text;
      FController.Model.data_desembarque := Edit_data_desembarque.text;
      FController.Model.codigo_exportador := Edit_codigo_exportador.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdadosboleto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdadosboleto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdadosboleto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdadosboleto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdadosboleto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdadosboleto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdadosboleto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := local_desembarque;  
     Grid.Cells[inttostr(i),0] := uf_desembarque;  
     Grid.Cells[inttostr(i),0] := data_desembarque;  
     Grid.Cells[inttostr(i),0] := codigo_exportador;  
end;

procedure TFrm_ViewERPdadosboleto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdadosboleto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdadosboleto.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.numero := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.local_desembarque := Grid.Cells[5,Grid.row];
    FController.Model.uf_desembarque := Grid.Cells[6,Grid.row];
    FController.Model.data_desembarque := Grid.Cells[7,Grid.row];
    FController.Model.codigo_exportador := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdadosboleto.LimparTela;  
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

procedure TFrm_ViewERPdadosboleto.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setlocal_desembarque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setuf_desembarque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setdata_desembarque(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdadosboleto.Setcodigo_exportador(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
