
unit View.ERP.maquinas_agricolas;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.maquinas_agricolas, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmaquinasagricolas = class(TForm) 
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
    FController : TControllerERPmaquinasagricolas; 
    Fid : Integer;
    Fid_mdfe : Integer;
    Fcod_mun : Integer;
    Fnome_mun : WideString;
    Finf_chave : WideString;
    Ftipo : WideString;
    Fvalor : Double;
    Fpeso : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_mdfe(const Value : Integer);
    procedure Setcod_mun(const Value : Integer);
    procedure Setnome_mun(const Value : WideString);
    procedure Setinf_chave(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setpeso(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_mdfe : Integer         read Fid_mdfe    write Fid_mdfe;
    property cod_mun : Integer         read Fcod_mun    write Fcod_mun;
    property nome_mun : WideString         read Fnome_mun    write Fnome_mun;
    property inf_chave : WideString         read Finf_chave    write Finf_chave;
    property tipo : WideString         read Ftipo    write Ftipo;
    property valor : Double         read Fvalor    write Fvalor;
    property peso : Double         read Fpeso    write Fpeso;

  end;

var
  Frm_ViewERPmaquinasagricolas : TFrm_ViewERPmaquinasagricolas; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_mdfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_mun); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_mun); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inf_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso); 
    end; 
end; 

procedure TFrm_ViewERPmaquinasagricolas.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_mdfe := Edit_id_mdfe.text;
      FController.Model.cod_mun := Edit_cod_mun.text;
      FController.Model.nome_mun := Edit_nome_mun.text;
      FController.Model.inf_chave := Edit_inf_chave.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.peso := Edit_peso.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmaquinasagricolas.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmaquinasagricolas.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmaquinasagricolas.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmaquinasagricolas.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmaquinasagricolas.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmaquinasagricolas.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmaquinasagricolas.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_mdfe;  
     Grid.Cells[inttostr(i),0] := cod_mun;  
     Grid.Cells[inttostr(i),0] := nome_mun;  
     Grid.Cells[inttostr(i),0] := inf_chave;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := peso;  
end;

procedure TFrm_ViewERPmaquinasagricolas.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmaquinasagricolas.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmaquinasagricolas.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_mdfe := Grid.Cells[1,Grid.row];
    FController.Model.cod_mun := Grid.Cells[2,Grid.row];
    FController.Model.nome_mun := Grid.Cells[3,Grid.row];
    FController.Model.inf_chave := Grid.Cells[4,Grid.row];
    FController.Model.tipo := Grid.Cells[5,Grid.row];
    FController.Model.valor := Grid.Cells[6,Grid.row];
    FController.Model.peso := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmaquinasagricolas.LimparTela;  
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

procedure TFrm_ViewERPmaquinasagricolas.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setid_mdfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setcod_mun(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setnome_mun(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setinf_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmaquinasagricolas.Setpeso(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
