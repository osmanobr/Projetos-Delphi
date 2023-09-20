
unit View.ERP.estoque_balanco;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estoque_balanco, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestoquebalanco = class(TForm) 
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
    FController : TControllerERPestoquebalanco; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Ftipo : WideString;
    Foperacao : WideString;
    Fid_equipamento : Integer;
    Fnome_equipamento : WideString;
    Fquantidade : Double;
    Fquantidade_disponivel : Double;
    Fmotivo_observacao : WideString;
    Fquantidade_anterior : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Settipo(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_equipamento(const Value : Integer);
    procedure Setnome_equipamento(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setquantidade_disponivel(const Value : Double);
    procedure Setmotivo_observacao(const Value : WideString);
    procedure Setquantidade_anterior(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property tipo : WideString         read Ftipo    write Ftipo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_equipamento : Integer         read Fid_equipamento    write Fid_equipamento;
    property nome_equipamento : WideString         read Fnome_equipamento    write Fnome_equipamento;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property quantidade_disponivel : Double         read Fquantidade_disponivel    write Fquantidade_disponivel;
    property motivo_observacao : WideString         read Fmotivo_observacao    write Fmotivo_observacao;
    property quantidade_anterior : Double         read Fquantidade_anterior    write Fquantidade_anterior;

  end;

var
  Frm_ViewERPestoquebalanco : TFrm_ViewERPestoquebalanco; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_disponivel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo_observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_anterior); 
    end; 
end; 

procedure TFrm_ViewERPestoquebalanco.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_equipamento := Edit_id_equipamento.text;
      FController.Model.nome_equipamento := Edit_nome_equipamento.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.quantidade_disponivel := Edit_quantidade_disponivel.text;
      FController.Model.motivo_observacao := Edit_motivo_observacao.text;
      FController.Model.quantidade_anterior := Edit_quantidade_anterior.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestoquebalanco.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestoquebalanco.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestoquebalanco.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestoquebalanco.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestoquebalanco.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestoquebalanco.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestoquebalanco.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_equipamento;  
     Grid.Cells[inttostr(i),0] := nome_equipamento;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := quantidade_disponivel;  
     Grid.Cells[inttostr(i),0] := motivo_observacao;  
     Grid.Cells[inttostr(i),0] := quantidade_anterior;  
end;

procedure TFrm_ViewERPestoquebalanco.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestoquebalanco.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestoquebalanco.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.tipo := Grid.Cells[3,Grid.row];
    FController.Model.operacao := Grid.Cells[4,Grid.row];
    FController.Model.id_equipamento := Grid.Cells[5,Grid.row];
    FController.Model.nome_equipamento := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
    FController.Model.quantidade_disponivel := Grid.Cells[8,Grid.row];
    FController.Model.motivo_observacao := Grid.Cells[9,Grid.row];
    FController.Model.quantidade_anterior := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestoquebalanco.LimparTela;  
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

procedure TFrm_ViewERPestoquebalanco.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setid_equipamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setnome_equipamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setquantidade_disponivel(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setmotivo_observacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquebalanco.Setquantidade_anterior(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
