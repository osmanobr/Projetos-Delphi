
unit View.ERP.receita_agroprodutos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.receita_agroprodutos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPreceitaagroprodutos = class(TForm) 
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
    FController : TControllerERPreceitaagroprodutos; 
    Fid : Integer;
    Fid_cli : Integer;
    Fid_for : Integer;
    Fdata_emissao : indefinido;
    Fnro_doc : WideString;
    Fcorrespondente : WideString;
    Fvalor : Double;
    Fdata_pgto : indefinido;
    Fobs : indefinido;
    Fcpf : WideString;
    Fcnpj : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cli(const Value : Integer);
    procedure Setid_for(const Value : Integer);
    procedure Setdata_emissao(const Value : indefinido);
    procedure Setnro_doc(const Value : WideString);
    procedure Setcorrespondente(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setdata_pgto(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setcpf(const Value : WideString);
    procedure Setcnpj(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_cli : Integer         read Fid_cli    write Fid_cli;
    property id_for : Integer         read Fid_for    write Fid_for;
    property data_emissao : indefinido         read Fdata_emissao    write Fdata_emissao;
    property nro_doc : WideString         read Fnro_doc    write Fnro_doc;
    property correspondente : WideString         read Fcorrespondente    write Fcorrespondente;
    property valor : Double         read Fvalor    write Fvalor;
    property data_pgto : indefinido         read Fdata_pgto    write Fdata_pgto;
    property obs : indefinido         read Fobs    write Fobs;
    property cpf : WideString         read Fcpf    write Fcpf;
    property cnpj : WideString         read Fcnpj    write Fcnpj;

  end;

var
  Frm_ViewERPreceitaagroprodutos : TFrm_ViewERPreceitaagroprodutos; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cli); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_for); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_doc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].correspondente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
    end; 
end; 

procedure TFrm_ViewERPreceitaagroprodutos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cli := Edit_id_cli.text;
      FController.Model.id_for := Edit_id_for.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.nro_doc := Edit_nro_doc.text;
      FController.Model.correspondente := Edit_correspondente.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.data_pgto := Edit_data_pgto.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.cnpj := Edit_cnpj.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPreceitaagroprodutos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPreceitaagroprodutos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPreceitaagroprodutos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPreceitaagroprodutos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPreceitaagroprodutos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPreceitaagroprodutos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPreceitaagroprodutos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cli;  
     Grid.Cells[inttostr(i),0] := id_for;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := nro_doc;  
     Grid.Cells[inttostr(i),0] := correspondente;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := data_pgto;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := cnpj;  
end;

procedure TFrm_ViewERPreceitaagroprodutos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPreceitaagroprodutos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPreceitaagroprodutos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cli := Grid.Cells[1,Grid.row];
    FController.Model.id_for := Grid.Cells[2,Grid.row];
    FController.Model.data_emissao := Grid.Cells[3,Grid.row];
    FController.Model.nro_doc := Grid.Cells[4,Grid.row];
    FController.Model.correspondente := Grid.Cells[5,Grid.row];
    FController.Model.valor := Grid.Cells[6,Grid.row];
    FController.Model.data_pgto := Grid.Cells[7,Grid.row];
    FController.Model.obs := Grid.Cells[8,Grid.row];
    FController.Model.cpf := Grid.Cells[9,Grid.row];
    FController.Model.cnpj := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPreceitaagroprodutos.LimparTela;  
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

procedure TFrm_ViewERPreceitaagroprodutos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setid_cli(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setid_for(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setdata_emissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setnro_doc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setcorrespondente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setdata_pgto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPreceitaagroprodutos.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
