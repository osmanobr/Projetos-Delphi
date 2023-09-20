
unit View.ERP.lote_controlado;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lote_controlado, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlotecontrolado = class(TForm) 
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
    FController : TControllerERPlotecontrolado; 
    Fid : Integer;
    Fid_produto : Integer;
    Fdata : TDateTime;
    Fdata_fabricacao : TDateTime;
    Fdata_validade : TDateTime;
    Fnome_produto : WideString;
    Festoque : indefinido;
    Foperacao : indefinido;
    Fquantidade : indefinido;
    Fid_operacao : Integer;
    Fnota : indefinido;
    Fid_empresa : Integer;
    Flote : WideString;
    Fcontrole : indefinido;
    Faviso_dias : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setdata_fabricacao(const Value : TDateTime);
    procedure Setdata_validade(const Value : TDateTime);
    procedure Setnome_produto(const Value : WideString);
    procedure Setestoque(const Value : indefinido);
    procedure Setoperacao(const Value : indefinido);
    procedure Setquantidade(const Value : indefinido);
    procedure Setid_operacao(const Value : Integer);
    procedure Setnota(const Value : indefinido);
    procedure Setid_empresa(const Value : Integer);
    procedure Setlote(const Value : WideString);
    procedure Setcontrole(const Value : indefinido);
    procedure Setaviso_dias(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property data : TDateTime         read Fdata    write Fdata;
    property data_fabricacao : TDateTime         read Fdata_fabricacao    write Fdata_fabricacao;
    property data_validade : TDateTime         read Fdata_validade    write Fdata_validade;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property estoque : indefinido         read Festoque    write Festoque;
    property operacao : indefinido         read Foperacao    write Foperacao;
    property quantidade : indefinido         read Fquantidade    write Fquantidade;
    property id_operacao : Integer         read Fid_operacao    write Fid_operacao;
    property nota : indefinido         read Fnota    write Fnota;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property lote : WideString         read Flote    write Flote;
    property controle : indefinido         read Fcontrole    write Fcontrole;
    property aviso_dias : Integer         read Faviso_dias    write Faviso_dias;

  end;

var
  Frm_ViewERPlotecontrolado : TFrm_ViewERPlotecontrolado; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].controle); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aviso_dias); 
    end; 
end; 

procedure TFrm_ViewERPlotecontrolado.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.data := Edit_data.text;
      FController.Model.data_fabricacao := Edit_data_fabricacao.text;
      FController.Model.data_validade := Edit_data_validade.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.id_operacao := Edit_id_operacao.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.controle := Edit_controle.text;
      FController.Model.aviso_dias := Edit_aviso_dias.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlotecontrolado.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlotecontrolado.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlotecontrolado.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlotecontrolado.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlotecontrolado.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlotecontrolado.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlotecontrolado.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := data_fabricacao;  
     Grid.Cells[inttostr(i),0] := data_validade;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := id_operacao;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := controle;  
     Grid.Cells[inttostr(i),0] := aviso_dias;  
end;

procedure TFrm_ViewERPlotecontrolado.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlotecontrolado.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlotecontrolado.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.data_fabricacao := Grid.Cells[3,Grid.row];
    FController.Model.data_validade := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.estoque := Grid.Cells[6,Grid.row];
    FController.Model.operacao := Grid.Cells[7,Grid.row];
    FController.Model.quantidade := Grid.Cells[8,Grid.row];
    FController.Model.id_operacao := Grid.Cells[9,Grid.row];
    FController.Model.nota := Grid.Cells[10,Grid.row];
    FController.Model.id_empresa := Grid.Cells[11,Grid.row];
    FController.Model.lote := Grid.Cells[12,Grid.row];
    FController.Model.controle := Grid.Cells[13,Grid.row];
    FController.Model.aviso_dias := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlotecontrolado.LimparTela;  
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

procedure TFrm_ViewERPlotecontrolado.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setdata_fabricacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setdata_validade(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setestoque(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setoperacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setquantidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setnota(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setlote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setcontrole(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontrolado.Setaviso_dias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
