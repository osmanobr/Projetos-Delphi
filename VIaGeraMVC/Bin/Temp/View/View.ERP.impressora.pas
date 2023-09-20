
unit View.ERP.import_vendedor;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_vendedor, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportvendedor = class(TForm) 
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
    FController : TControllerERPimportvendedor; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fimpressao_dos : WideString;
    Fimpressao_win : WideString;
    Fcaminho : WideString;
    Fcolunas : WideString;
    Forcamento : indefinido;
    Fexpedicao : indefinido;
    Fwindows : indefinido;
    Fpapel : WideString;
    Fnfiscal : Boolean;
    Fmodelo : indefinido;
    Fentrega_windows : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setimpressao_dos(const Value : WideString);
    procedure Setimpressao_win(const Value : WideString);
    procedure Setcaminho(const Value : WideString);
    procedure Setcolunas(const Value : WideString);
    procedure Setorcamento(const Value : indefinido);
    procedure Setexpedicao(const Value : indefinido);
    procedure Setwindows(const Value : indefinido);
    procedure Setpapel(const Value : WideString);
    procedure Setnfiscal(const Value : Boolean);
    procedure Setmodelo(const Value : indefinido);
    procedure Setentrega_windows(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property impressao_dos : WideString         read Fimpressao_dos    write Fimpressao_dos;
    property impressao_win : WideString         read Fimpressao_win    write Fimpressao_win;
    property caminho : WideString         read Fcaminho    write Fcaminho;
    property colunas : WideString         read Fcolunas    write Fcolunas;
    property orcamento : indefinido         read Forcamento    write Forcamento;
    property expedicao : indefinido         read Fexpedicao    write Fexpedicao;
    property windows : indefinido         read Fwindows    write Fwindows;
    property papel : WideString         read Fpapel    write Fpapel;
    property nfiscal : Boolean         read Fnfiscal    write Fnfiscal;
    property modelo : indefinido         read Fmodelo    write Fmodelo;
    property entrega_windows : Boolean         read Fentrega_windows    write Fentrega_windows;

  end;

var
  Frm_ViewERPimportvendedor : TFrm_ViewERPimportvendedor; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impressao_dos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impressao_win); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caminho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].colunas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].orcamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].expedicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].windows); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].papel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].entrega_windows); 
    end; 
end; 

procedure TFrm_ViewERPimportvendedor.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.impressao_dos := Edit_impressao_dos.text;
      FController.Model.impressao_win := Edit_impressao_win.text;
      FController.Model.caminho := Edit_caminho.text;
      FController.Model.colunas := Edit_colunas.text;
      FController.Model.orcamento := Edit_orcamento.text;
      FController.Model.expedicao := Edit_expedicao.text;
      FController.Model.windows := Edit_windows.text;
      FController.Model.papel := Edit_papel.text;
      FController.Model.nfiscal := Edit_nfiscal.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.entrega_windows := Edit_entrega_windows.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportvendedor.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportvendedor.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportvendedor.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportvendedor.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportvendedor.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportvendedor.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportvendedor.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := impressao_dos;  
     Grid.Cells[inttostr(i),0] := impressao_win;  
     Grid.Cells[inttostr(i),0] := caminho;  
     Grid.Cells[inttostr(i),0] := colunas;  
     Grid.Cells[inttostr(i),0] := orcamento;  
     Grid.Cells[inttostr(i),0] := expedicao;  
     Grid.Cells[inttostr(i),0] := windows;  
     Grid.Cells[inttostr(i),0] := papel;  
     Grid.Cells[inttostr(i),0] := nfiscal;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := entrega_windows;  
end;

procedure TFrm_ViewERPimportvendedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportvendedor.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportvendedor.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.impressao_dos := Grid.Cells[3,Grid.row];
    FController.Model.impressao_win := Grid.Cells[4,Grid.row];
    FController.Model.caminho := Grid.Cells[5,Grid.row];
    FController.Model.colunas := Grid.Cells[6,Grid.row];
    FController.Model.orcamento := Grid.Cells[7,Grid.row];
    FController.Model.expedicao := Grid.Cells[8,Grid.row];
    FController.Model.windows := Grid.Cells[9,Grid.row];
    FController.Model.papel := Grid.Cells[10,Grid.row];
    FController.Model.nfiscal := Grid.Cells[11,Grid.row];
    FController.Model.modelo := Grid.Cells[12,Grid.row];
    FController.Model.entrega_windows := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportvendedor.LimparTela;  
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

procedure TFrm_ViewERPimportvendedor.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setimpressao_dos(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setimpressao_win(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setcaminho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setcolunas(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setorcamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setexpedicao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setwindows(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setpapel(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setnfiscal(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setmodelo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportvendedor.Setentrega_windows(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
