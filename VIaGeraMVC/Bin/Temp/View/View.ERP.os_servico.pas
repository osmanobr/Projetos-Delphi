
unit View.ERP.os_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPositem = class(TForm) 
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
    FController : TControllerERPositem; 
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fdata : TDateTime;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fid_funcionario : Integer;
    Fid_vendedor : Integer;
    Fvl_comissao_vendedor : Double;
    Funidade : indefinido;
    Fiss : Double;
    Fid_indicador : Integer;
    Fid_servico : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setdata(const Value : TDateTime);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setvl_comissao_vendedor(const Value : Double);
    procedure Setunidade(const Value : indefinido);
    procedure Setiss(const Value : Double);
    procedure Setid_indicador(const Value : Integer);
    procedure Setid_servico(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property data : TDateTime         read Fdata    write Fdata;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property vl_comissao_vendedor : Double         read Fvl_comissao_vendedor    write Fvl_comissao_vendedor;
    property unidade : indefinido         read Funidade    write Funidade;
    property iss : Double         read Fiss    write Fiss;
    property id_indicador : Integer         read Fid_indicador    write Fid_indicador;
    property id_servico : Integer         read Fid_servico    write Fid_servico;

  end;

var
  Frm_ViewERPositem : TFrm_ViewERPositem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_comissao_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_indicador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_servico); 
    end; 
end; 

procedure TFrm_ViewERPositem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.data := Edit_data.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.vl_comissao_vendedor := Edit_vl_comissao_vendedor.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.iss := Edit_iss.text;
      FController.Model.id_indicador := Edit_id_indicador.text;
      FController.Model.id_servico := Edit_id_servico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPositem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPositem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPositem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPositem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPositem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPositem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPositem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := vl_comissao_vendedor;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := iss;  
     Grid.Cells[inttostr(i),0] := id_indicador;  
     Grid.Cells[inttostr(i),0] := id_servico;  
end;

procedure TFrm_ViewERPositem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPositem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPositem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_os := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[6,Grid.row];
    FController.Model.vl_total := Grid.Cells[7,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[8,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[9,Grid.row];
    FController.Model.vl_comissao_vendedor := Grid.Cells[10,Grid.row];
    FController.Model.unidade := Grid.Cells[11,Grid.row];
    FController.Model.iss := Grid.Cells[12,Grid.row];
    FController.Model.id_indicador := Grid.Cells[13,Grid.row];
    FController.Model.id_servico := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPositem.LimparTela;  
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

procedure TFrm_ViewERPositem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setvl_comissao_vendedor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setiss(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_indicador(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPositem.Setid_servico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
