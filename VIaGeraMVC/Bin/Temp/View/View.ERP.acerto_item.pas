
unit View.ERP.acerto_insumo_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.acerto_insumo_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPacertoinsumoitem = class(TForm) 
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
    FController : TControllerERPacertoinsumoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_acerto : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fgerado : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_acerto(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : WideString);
    procedure Settam_grade(const Value : WideString);
    procedure Setgerado(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_acerto : Integer         read Fid_acerto    write Fid_acerto;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property tipo : WideString         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : WideString         read Fcor_grade    write Fcor_grade;
    property tam_grade : WideString         read Ftam_grade    write Ftam_grade;
    property gerado : WideString         read Fgerado    write Fgerado;

  end;

var
  Frm_ViewERPacertoinsumoitem : TFrm_ViewERPacertoinsumoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_acerto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
    end; 
end; 

procedure TFrm_ViewERPacertoinsumoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_acerto := Edit_id_acerto.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.gerado := Edit_gerado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPacertoinsumoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPacertoinsumoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPacertoinsumoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPacertoinsumoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPacertoinsumoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPacertoinsumoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPacertoinsumoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_acerto;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := gerado;  
end;

procedure TFrm_ViewERPacertoinsumoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPacertoinsumoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPacertoinsumoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_acerto := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.tipo := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.id_grade := Grid.Cells[7,Grid.row];
    FController.Model.cor_grade := Grid.Cells[8,Grid.row];
    FController.Model.tam_grade := Grid.Cells[9,Grid.row];
    FController.Model.gerado := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPacertoinsumoitem.LimparTela;  
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

procedure TFrm_ViewERPacertoinsumoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setid_acerto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setcor_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Settam_grade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPacertoinsumoitem.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
