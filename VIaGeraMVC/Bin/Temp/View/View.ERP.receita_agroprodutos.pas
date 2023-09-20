
unit View.ERP.receita_agro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.receita_agro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPreceitaagro = class(TForm) 
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
    FController : TControllerERPreceitaagro; 
    Fid : Integer;
    Fid_receita_agro : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_cultura : Integer;
    Fcultura : indefinido;
    Ftipo_produto : indefinido;
    Ftipo_aplicacao : indefinido;
    Fdosagem_sugerida : Double;
    Fdose : Double;
    Ftaxa_aplicacao : Double;
    Fquantidade : Double;
    Fnumero_aplicacoes : Double;
    Farea_aplicacao : Double;
    Fid_diagnostico : Integer;
    Fdiagnostico : indefinido;
    Fpre_diagnostico : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_receita_agro(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setid_cultura(const Value : Integer);
    procedure Setcultura(const Value : indefinido);
    procedure Settipo_produto(const Value : indefinido);
    procedure Settipo_aplicacao(const Value : indefinido);
    procedure Setdosagem_sugerida(const Value : Double);
    procedure Setdose(const Value : Double);
    procedure Settaxa_aplicacao(const Value : Double);
    procedure Setquantidade(const Value : Double);
    procedure Setnumero_aplicacoes(const Value : Double);
    procedure Setarea_aplicacao(const Value : Double);
    procedure Setid_diagnostico(const Value : Integer);
    procedure Setdiagnostico(const Value : indefinido);
    procedure Setpre_diagnostico(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_receita_agro : Integer         read Fid_receita_agro    write Fid_receita_agro;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property id_cultura : Integer         read Fid_cultura    write Fid_cultura;
    property cultura : indefinido         read Fcultura    write Fcultura;
    property tipo_produto : indefinido         read Ftipo_produto    write Ftipo_produto;
    property tipo_aplicacao : indefinido         read Ftipo_aplicacao    write Ftipo_aplicacao;
    property dosagem_sugerida : Double         read Fdosagem_sugerida    write Fdosagem_sugerida;
    property dose : Double         read Fdose    write Fdose;
    property taxa_aplicacao : Double         read Ftaxa_aplicacao    write Ftaxa_aplicacao;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property numero_aplicacoes : Double         read Fnumero_aplicacoes    write Fnumero_aplicacoes;
    property area_aplicacao : Double         read Farea_aplicacao    write Farea_aplicacao;
    property id_diagnostico : Integer         read Fid_diagnostico    write Fid_diagnostico;
    property diagnostico : indefinido         read Fdiagnostico    write Fdiagnostico;
    property pre_diagnostico : indefinido         read Fpre_diagnostico    write Fpre_diagnostico;

  end;

var
  Frm_ViewERPreceitaagro : TFrm_ViewERPreceitaagro; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_receita_agro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cultura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cultura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dosagem_sugerida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dose); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].taxa_aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_aplicacoes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].area_aplicacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_diagnostico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].diagnostico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pre_diagnostico); 
    end; 
end; 

procedure TFrm_ViewERPreceitaagro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_receita_agro := Edit_id_receita_agro.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.id_cultura := Edit_id_cultura.text;
      FController.Model.cultura := Edit_cultura.text;
      FController.Model.tipo_produto := Edit_tipo_produto.text;
      FController.Model.tipo_aplicacao := Edit_tipo_aplicacao.text;
      FController.Model.dosagem_sugerida := Edit_dosagem_sugerida.text;
      FController.Model.dose := Edit_dose.text;
      FController.Model.taxa_aplicacao := Edit_taxa_aplicacao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.numero_aplicacoes := Edit_numero_aplicacoes.text;
      FController.Model.area_aplicacao := Edit_area_aplicacao.text;
      FController.Model.id_diagnostico := Edit_id_diagnostico.text;
      FController.Model.diagnostico := Edit_diagnostico.text;
      FController.Model.pre_diagnostico := Edit_pre_diagnostico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPreceitaagro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPreceitaagro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPreceitaagro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPreceitaagro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPreceitaagro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPreceitaagro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPreceitaagro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_receita_agro;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := id_cultura;  
     Grid.Cells[inttostr(i),0] := cultura;  
     Grid.Cells[inttostr(i),0] := tipo_produto;  
     Grid.Cells[inttostr(i),0] := tipo_aplicacao;  
     Grid.Cells[inttostr(i),0] := dosagem_sugerida;  
     Grid.Cells[inttostr(i),0] := dose;  
     Grid.Cells[inttostr(i),0] := taxa_aplicacao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := numero_aplicacoes;  
     Grid.Cells[inttostr(i),0] := area_aplicacao;  
     Grid.Cells[inttostr(i),0] := id_diagnostico;  
     Grid.Cells[inttostr(i),0] := diagnostico;  
     Grid.Cells[inttostr(i),0] := pre_diagnostico;  
end;

procedure TFrm_ViewERPreceitaagro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPreceitaagro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPreceitaagro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_receita_agro := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.id_cultura := Grid.Cells[4,Grid.row];
    FController.Model.cultura := Grid.Cells[5,Grid.row];
    FController.Model.tipo_produto := Grid.Cells[6,Grid.row];
    FController.Model.tipo_aplicacao := Grid.Cells[7,Grid.row];
    FController.Model.dosagem_sugerida := Grid.Cells[8,Grid.row];
    FController.Model.dose := Grid.Cells[9,Grid.row];
    FController.Model.taxa_aplicacao := Grid.Cells[10,Grid.row];
    FController.Model.quantidade := Grid.Cells[11,Grid.row];
    FController.Model.numero_aplicacoes := Grid.Cells[12,Grid.row];
    FController.Model.area_aplicacao := Grid.Cells[13,Grid.row];
    FController.Model.id_diagnostico := Grid.Cells[14,Grid.row];
    FController.Model.diagnostico := Grid.Cells[15,Grid.row];
    FController.Model.pre_diagnostico := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPreceitaagro.LimparTela;  
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

procedure TFrm_ViewERPreceitaagro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setid_receita_agro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setid_cultura(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setcultura(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Settipo_produto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Settipo_aplicacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setdosagem_sugerida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setdose(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Settaxa_aplicacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setnumero_aplicacoes(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setarea_aplicacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setid_diagnostico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setdiagnostico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagro.Setpre_diagnostico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
