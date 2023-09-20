
unit View.ERP.tanque;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.tanque, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtanque = class(TForm) 
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
    FController : TControllerERPtanque; 
    Fid : Integer;
    Fncm : indefinido;
    Fex : Integer;
    Ftabela : Integer;
    Faliqnacional : Double;
    Faliqinternacional : Double;
    Fdescricao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setncm(const Value : indefinido);
    procedure Setex(const Value : Integer);
    procedure Settabela(const Value : Integer);
    procedure Setaliqnacional(const Value : Double);
    procedure Setaliqinternacional(const Value : Double);
    procedure Setdescricao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property ncm : indefinido         read Fncm    write Fncm;
    property ex : Integer         read Fex    write Fex;
    property tabela : Integer         read Ftabela    write Ftabela;
    property aliqnacional : Double         read Faliqnacional    write Faliqnacional;
    property aliqinternacional : Double         read Faliqinternacional    write Faliqinternacional;
    property descricao : indefinido         read Fdescricao    write Fdescricao;

  end;

var
  Frm_ViewERPtanque : TFrm_ViewERPtanque; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ex); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tabela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliqnacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliqinternacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
    end; 
end; 

procedure TFrm_ViewERPtanque.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.ex := Edit_ex.text;
      FController.Model.tabela := Edit_tabela.text;
      FController.Model.aliqnacional := Edit_aliqnacional.text;
      FController.Model.aliqinternacional := Edit_aliqinternacional.text;
      FController.Model.descricao := Edit_descricao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtanque.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtanque.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtanque.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtanque.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtanque.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtanque.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtanque.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := ex;  
     Grid.Cells[inttostr(i),0] := tabela;  
     Grid.Cells[inttostr(i),0] := aliqnacional;  
     Grid.Cells[inttostr(i),0] := aliqinternacional;  
     Grid.Cells[inttostr(i),0] := descricao;  
end;

procedure TFrm_ViewERPtanque.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtanque.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtanque.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ncm := Grid.Cells[1,Grid.row];
    FController.Model.ex := Grid.Cells[2,Grid.row];
    FController.Model.tabela := Grid.Cells[3,Grid.row];
    FController.Model.aliqnacional := Grid.Cells[4,Grid.row];
    FController.Model.aliqinternacional := Grid.Cells[5,Grid.row];
    FController.Model.descricao := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtanque.LimparTela;  
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

procedure TFrm_ViewERPtanque.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Setncm(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Setex(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Settabela(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Setaliqnacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Setaliqinternacional(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtanque.Setdescricao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
