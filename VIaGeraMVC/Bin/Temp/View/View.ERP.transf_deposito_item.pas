
unit View.ERP.transf_deposito;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.transf_deposito, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtransfdeposito = class(TForm) 
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
    FController : TControllerERPtransfdeposito; 
    Fid : Integer;
    Fid_transf_deposito : Integer;
    Fid_produto_origem : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fgerado : indefinido;
    Fid_empresa : Integer;
    Fid_produto_destino : Integer;
    Fcancelado : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_transf_deposito(const Value : Integer);
    procedure Setid_produto_origem(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Settipo(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : indefinido);
    procedure Settam_grade(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto_destino(const Value : Integer);
    procedure Setcancelado(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_transf_deposito : Integer         read Fid_transf_deposito    write Fid_transf_deposito;
    property id_produto_origem : Integer         read Fid_produto_origem    write Fid_produto_origem;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : indefinido         read Fcor_grade    write Fcor_grade;
    property tam_grade : indefinido         read Ftam_grade    write Ftam_grade;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto_destino : Integer         read Fid_produto_destino    write Fid_produto_destino;
    property cancelado : indefinido         read Fcancelado    write Fcancelado;

  end;

var
  Frm_ViewERPtransfdeposito : TFrm_ViewERPtransfdeposito; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transf_deposito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto_destino); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
    end; 
end; 

procedure TFrm_ViewERPtransfdeposito.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_transf_deposito := Edit_id_transf_deposito.text;
      FController.Model.id_produto_origem := Edit_id_produto_origem.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto_destino := Edit_id_produto_destino.text;
      FController.Model.cancelado := Edit_cancelado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtransfdeposito.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtransfdeposito.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtransfdeposito.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtransfdeposito.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtransfdeposito.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtransfdeposito.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtransfdeposito.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_transf_deposito;  
     Grid.Cells[inttostr(i),0] := id_produto_origem;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto_destino;  
     Grid.Cells[inttostr(i),0] := cancelado;  
end;

procedure TFrm_ViewERPtransfdeposito.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtransfdeposito.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtransfdeposito.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_transf_deposito := Grid.Cells[1,Grid.row];
    FController.Model.id_produto_origem := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.tipo := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.id_grade := Grid.Cells[6,Grid.row];
    FController.Model.cor_grade := Grid.Cells[7,Grid.row];
    FController.Model.tam_grade := Grid.Cells[8,Grid.row];
    FController.Model.gerado := Grid.Cells[9,Grid.row];
    FController.Model.id_empresa := Grid.Cells[10,Grid.row];
    FController.Model.id_produto_destino := Grid.Cells[11,Grid.row];
    FController.Model.cancelado := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtransfdeposito.LimparTela;  
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

procedure TFrm_ViewERPtransfdeposito.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setid_transf_deposito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setid_produto_origem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setcor_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Settam_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setid_produto_destino(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransfdeposito.Setcancelado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
