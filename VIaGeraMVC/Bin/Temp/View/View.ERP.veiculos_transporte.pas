
unit View.ERP.veiculos_planos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.veiculos_planos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPveiculosplanos = class(TForm) 
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
    FController : TControllerERPveiculosplanos; 
    Fid : Integer;
    Fid_empresas : Integer;
    Fnome : indefinido;
    Fplaca : indefinido;
    Fcor : indefinido;
    Fcarga_maxima : Double;
    Ftempo_carga : indefinido;
    Fcarroceria : indefinido;
    Frenavam : WideString;
    Ftprod : Integer;
    Ftpcar : Integer;
    Fuf : WideString;
    Ftara : Integer;
    Fcapkg : Integer;
    Fcapm3 : Integer;
    Fid_motorista : Integer;
    Fproprietario : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresas(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setplaca(const Value : indefinido);
    procedure Setcor(const Value : indefinido);
    procedure Setcarga_maxima(const Value : Double);
    procedure Settempo_carga(const Value : indefinido);
    procedure Setcarroceria(const Value : indefinido);
    procedure Setrenavam(const Value : WideString);
    procedure Settprod(const Value : Integer);
    procedure Settpcar(const Value : Integer);
    procedure Setuf(const Value : WideString);
    procedure Settara(const Value : Integer);
    procedure Setcapkg(const Value : Integer);
    procedure Setcapm3(const Value : Integer);
    procedure Setid_motorista(const Value : Integer);
    procedure Setproprietario(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresas : Integer         read Fid_empresas    write Fid_empresas;
    property nome : indefinido         read Fnome    write Fnome;
    property placa : indefinido         read Fplaca    write Fplaca;
    property cor : indefinido         read Fcor    write Fcor;
    property carga_maxima : Double         read Fcarga_maxima    write Fcarga_maxima;
    property tempo_carga : indefinido         read Ftempo_carga    write Ftempo_carga;
    property carroceria : indefinido         read Fcarroceria    write Fcarroceria;
    property renavam : WideString         read Frenavam    write Frenavam;
    property tprod : Integer         read Ftprod    write Ftprod;
    property tpcar : Integer         read Ftpcar    write Ftpcar;
    property uf : WideString         read Fuf    write Fuf;
    property tara : Integer         read Ftara    write Ftara;
    property capkg : Integer         read Fcapkg    write Fcapkg;
    property capm3 : Integer         read Fcapm3    write Fcapm3;
    property id_motorista : Integer         read Fid_motorista    write Fid_motorista;
    property proprietario : Boolean         read Fproprietario    write Fproprietario;

  end;

var
  Frm_ViewERPveiculosplanos : TFrm_ViewERPveiculosplanos; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carga_maxima); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tempo_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carroceria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].renavam); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tprod); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tpcar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tara); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].capkg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].capm3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].proprietario); 
    end; 
end; 

procedure TFrm_ViewERPveiculosplanos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresas := Edit_id_empresas.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.cor := Edit_cor.text;
      FController.Model.carga_maxima := Edit_carga_maxima.text;
      FController.Model.tempo_carga := Edit_tempo_carga.text;
      FController.Model.carroceria := Edit_carroceria.text;
      FController.Model.renavam := Edit_renavam.text;
      FController.Model.tprod := Edit_tprod.text;
      FController.Model.tpcar := Edit_tpcar.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.tara := Edit_tara.text;
      FController.Model.capkg := Edit_capkg.text;
      FController.Model.capm3 := Edit_capm3.text;
      FController.Model.id_motorista := Edit_id_motorista.text;
      FController.Model.proprietario := Edit_proprietario.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPveiculosplanos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPveiculosplanos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPveiculosplanos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPveiculosplanos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPveiculosplanos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPveiculosplanos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPveiculosplanos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresas;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := cor;  
     Grid.Cells[inttostr(i),0] := carga_maxima;  
     Grid.Cells[inttostr(i),0] := tempo_carga;  
     Grid.Cells[inttostr(i),0] := carroceria;  
     Grid.Cells[inttostr(i),0] := renavam;  
     Grid.Cells[inttostr(i),0] := tprod;  
     Grid.Cells[inttostr(i),0] := tpcar;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := tara;  
     Grid.Cells[inttostr(i),0] := capkg;  
     Grid.Cells[inttostr(i),0] := capm3;  
     Grid.Cells[inttostr(i),0] := id_motorista;  
     Grid.Cells[inttostr(i),0] := proprietario;  
end;

procedure TFrm_ViewERPveiculosplanos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPveiculosplanos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPveiculosplanos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresas := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.placa := Grid.Cells[3,Grid.row];
    FController.Model.cor := Grid.Cells[4,Grid.row];
    FController.Model.carga_maxima := Grid.Cells[5,Grid.row];
    FController.Model.tempo_carga := Grid.Cells[6,Grid.row];
    FController.Model.carroceria := Grid.Cells[7,Grid.row];
    FController.Model.renavam := Grid.Cells[8,Grid.row];
    FController.Model.tprod := Grid.Cells[9,Grid.row];
    FController.Model.tpcar := Grid.Cells[10,Grid.row];
    FController.Model.uf := Grid.Cells[11,Grid.row];
    FController.Model.tara := Grid.Cells[12,Grid.row];
    FController.Model.capkg := Grid.Cells[13,Grid.row];
    FController.Model.capm3 := Grid.Cells[14,Grid.row];
    FController.Model.id_motorista := Grid.Cells[15,Grid.row];
    FController.Model.proprietario := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPveiculosplanos.LimparTela;  
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

procedure TFrm_ViewERPveiculosplanos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setid_empresas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setplaca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setcor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setcarga_maxima(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Settempo_carga(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setcarroceria(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setrenavam(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Settprod(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Settpcar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Settara(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setcapkg(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setcapm3(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setid_motorista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPveiculosplanos.Setproprietario(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
