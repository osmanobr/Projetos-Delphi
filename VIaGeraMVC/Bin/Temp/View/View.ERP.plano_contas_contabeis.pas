
unit View.ERP.plano_conta_dre;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.plano_conta_dre, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPplanocontadre = class(TForm) 
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
    FController : TControllerERPplanocontadre; 
    Fid : Integer;
    Freg : indefinido;
    Fdt_alt : indefinido;
    Fcod_nat_contas : indefinido;
    Find_cta : indefinido;
    Fnivel : Integer;
    Fcod_cta : indefinido;
    Fnome_cta : indefinido;
    Fcod_cta_ref : indefinido;
    Fcnpj_est : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setreg(const Value : indefinido);
    procedure Setdt_alt(const Value : indefinido);
    procedure Setcod_nat_contas(const Value : indefinido);
    procedure Setind_cta(const Value : indefinido);
    procedure Setnivel(const Value : Integer);
    procedure Setcod_cta(const Value : indefinido);
    procedure Setnome_cta(const Value : indefinido);
    procedure Setcod_cta_ref(const Value : indefinido);
    procedure Setcnpj_est(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property reg : indefinido         read Freg    write Freg;
    property dt_alt : indefinido         read Fdt_alt    write Fdt_alt;
    property cod_nat_contas : indefinido         read Fcod_nat_contas    write Fcod_nat_contas;
    property ind_cta : indefinido         read Find_cta    write Find_cta;
    property nivel : Integer         read Fnivel    write Fnivel;
    property cod_cta : indefinido         read Fcod_cta    write Fcod_cta;
    property nome_cta : indefinido         read Fnome_cta    write Fnome_cta;
    property cod_cta_ref : indefinido         read Fcod_cta_ref    write Fcod_cta_ref;
    property cnpj_est : indefinido         read Fcnpj_est    write Fcnpj_est;

  end;

var
  Frm_ViewERPplanocontadre : TFrm_ViewERPplanocontadre; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].reg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dt_alt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_nat_contas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ind_cta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nivel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cta_ref); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj_est); 
    end; 
end; 

procedure TFrm_ViewERPplanocontadre.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.reg := Edit_reg.text;
      FController.Model.dt_alt := Edit_dt_alt.text;
      FController.Model.cod_nat_contas := Edit_cod_nat_contas.text;
      FController.Model.ind_cta := Edit_ind_cta.text;
      FController.Model.nivel := Edit_nivel.text;
      FController.Model.cod_cta := Edit_cod_cta.text;
      FController.Model.nome_cta := Edit_nome_cta.text;
      FController.Model.cod_cta_ref := Edit_cod_cta_ref.text;
      FController.Model.cnpj_est := Edit_cnpj_est.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPplanocontadre.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPplanocontadre.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPplanocontadre.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPplanocontadre.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPplanocontadre.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPplanocontadre.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPplanocontadre.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := reg;  
     Grid.Cells[inttostr(i),0] := dt_alt;  
     Grid.Cells[inttostr(i),0] := cod_nat_contas;  
     Grid.Cells[inttostr(i),0] := ind_cta;  
     Grid.Cells[inttostr(i),0] := nivel;  
     Grid.Cells[inttostr(i),0] := cod_cta;  
     Grid.Cells[inttostr(i),0] := nome_cta;  
     Grid.Cells[inttostr(i),0] := cod_cta_ref;  
     Grid.Cells[inttostr(i),0] := cnpj_est;  
end;

procedure TFrm_ViewERPplanocontadre.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPplanocontadre.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPplanocontadre.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.reg := Grid.Cells[1,Grid.row];
    FController.Model.dt_alt := Grid.Cells[2,Grid.row];
    FController.Model.cod_nat_contas := Grid.Cells[3,Grid.row];
    FController.Model.ind_cta := Grid.Cells[4,Grid.row];
    FController.Model.nivel := Grid.Cells[5,Grid.row];
    FController.Model.cod_cta := Grid.Cells[6,Grid.row];
    FController.Model.nome_cta := Grid.Cells[7,Grid.row];
    FController.Model.cod_cta_ref := Grid.Cells[8,Grid.row];
    FController.Model.cnpj_est := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPplanocontadre.LimparTela;  
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

procedure TFrm_ViewERPplanocontadre.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setreg(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setdt_alt(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setcod_nat_contas(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setind_cta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setnivel(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setcod_cta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setnome_cta(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setcod_cta_ref(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontadre.Setcnpj_est(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
