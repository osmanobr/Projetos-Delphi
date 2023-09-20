
unit View.ERP.os_acessorio;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os_acessorio, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPosacessorio = class(TForm) 
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
    FController : TControllerERPosacessorio; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fid_funcionario : Integer;
    Ffuncionario : indefinido;
    Fstatus : indefinido;
    Ftempo_gasto : indefinido;
    Fdata_inicio : TDateTime;
    Fdata_final : TDateTime;
    Fencaminhado : indefinido;
    Fservico : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setfuncionario(const Value : indefinido);
    procedure Setstatus(const Value : indefinido);
    procedure Settempo_gasto(const Value : indefinido);
    procedure Setdata_inicio(const Value : TDateTime);
    procedure Setdata_final(const Value : TDateTime);
    procedure Setencaminhado(const Value : indefinido);
    procedure Setservico(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property funcionario : indefinido         read Ffuncionario    write Ffuncionario;
    property status : indefinido         read Fstatus    write Fstatus;
    property tempo_gasto : indefinido         read Ftempo_gasto    write Ftempo_gasto;
    property data_inicio : TDateTime         read Fdata_inicio    write Fdata_inicio;
    property data_final : TDateTime         read Fdata_final    write Fdata_final;
    property encaminhado : indefinido         read Fencaminhado    write Fencaminhado;
    property servico : indefinido         read Fservico    write Fservico;

  end;

var
  Frm_ViewERPosacessorio : TFrm_ViewERPosacessorio; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo_gasto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].encaminhado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].servico); 
    end; 
end; 

procedure TFrm_ViewERPosacessorio.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.funcionario := Edit_funcionario.text;
      FController.Model.status := Edit_status.text;
      FController.Model.tempo_gasto := Edit_tempo_gasto.text;
      FController.Model.data_inicio := Edit_data_inicio.text;
      FController.Model.data_final := Edit_data_final.text;
      FController.Model.encaminhado := Edit_encaminhado.text;
      FController.Model.servico := Edit_servico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPosacessorio.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPosacessorio.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPosacessorio.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPosacessorio.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPosacessorio.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPosacessorio.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPosacessorio.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := funcionario;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := tempo_gasto;  
     Grid.Cells[inttostr(i),0] := data_inicio;  
     Grid.Cells[inttostr(i),0] := data_final;  
     Grid.Cells[inttostr(i),0] := encaminhado;  
     Grid.Cells[inttostr(i),0] := servico;  
end;

procedure TFrm_ViewERPosacessorio.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPosacessorio.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPosacessorio.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_os := Grid.Cells[2,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[3,Grid.row];
    FController.Model.funcionario := Grid.Cells[4,Grid.row];
    FController.Model.status := Grid.Cells[5,Grid.row];
    FController.Model.tempo_gasto := Grid.Cells[6,Grid.row];
    FController.Model.data_inicio := Grid.Cells[7,Grid.row];
    FController.Model.data_final := Grid.Cells[8,Grid.row];
    FController.Model.encaminhado := Grid.Cells[9,Grid.row];
    FController.Model.servico := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPosacessorio.LimparTela;  
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

procedure TFrm_ViewERPosacessorio.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setfuncionario(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setstatus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Settempo_gasto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setdata_inicio(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setdata_final(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setencaminhado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosacessorio.Setservico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
