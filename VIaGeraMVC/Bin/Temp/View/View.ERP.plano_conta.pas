
unit View.ERP.plano_celular;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.plano_celular, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPplanocelular = class(TForm) 
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
    FController : TControllerERPplanocelular; 
    Fconta : WideString;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcusto_operacional : Boolean;
    Fdebcre : WideString;
    Fclick : Boolean;
    Finversao_plano_conta : Boolean;
    Fativo : WideString;
    Fdre : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setconta(const Value : WideString);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setcusto_operacional(const Value : Boolean);
    procedure Setdebcre(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setinversao_plano_conta(const Value : Boolean);
    procedure Setativo(const Value : WideString);
    procedure Setdre(const Value : Boolean);

  public

    property conta : WideString         read Fconta    write Fconta;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property custo_operacional : Boolean         read Fcusto_operacional    write Fcusto_operacional;
    property debcre : WideString         read Fdebcre    write Fdebcre;
    property click : Boolean         read Fclick    write Fclick;
    property inversao_plano_conta : Boolean         read Finversao_plano_conta    write Finversao_plano_conta;
    property ativo : WideString         read Fativo    write Fativo;
    property dre : Boolean         read Fdre    write Fdre;

  end;

var
  Frm_ViewERPplanocelular : TFrm_ViewERPplanocelular; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo_operacional); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inversao_plano_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dre); 
    end; 
end; 

procedure TFrm_ViewERPplanocelular.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.conta := Edit_conta.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.custo_operacional := Edit_custo_operacional.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.click := Edit_click.text;
      FController.Model.inversao_plano_conta := Edit_inversao_plano_conta.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.dre := Edit_dre.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPplanocelular.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPplanocelular.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPplanocelular.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPplanocelular.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPplanocelular.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPplanocelular.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPplanocelular.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := custo_operacional;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := inversao_plano_conta;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := dre;  
end;

procedure TFrm_ViewERPplanocelular.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPplanocelular.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPplanocelular.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.conta := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.custo_operacional := Grid.Cells[3,Grid.row];
    FController.Model.debcre := Grid.Cells[4,Grid.row];
    FController.Model.click := Grid.Cells[5,Grid.row];
    FController.Model.inversao_plano_conta := Grid.Cells[6,Grid.row];
    FController.Model.ativo := Grid.Cells[7,Grid.row];
    FController.Model.dre := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPplanocelular.LimparTela;  
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

procedure TFrm_ViewERPplanocelular.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setcusto_operacional(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setdebcre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setinversao_plano_conta(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocelular.Setdre(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
