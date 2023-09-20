
unit View.ERP.plano_contas_contabeis;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.plano_contas_contabeis, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPplanocontascontabeis = class(TForm) 
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
    FController : TControllerERPplanocontascontabeis; 
    Fid : Integer;
    Fuf : WideString;
    Fgac : Double;
    Fgap : Double;
    Fdiesel_s10 : Double;
    Foleo_diesel : Double;
    Fgpl_p13 : Double;
    Fgpl : Double;
    Fqav : Double;
    Faehc : Double;
    Fgnv : Double;
    Fgni : Double;
    Foleo_combustivel : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setuf(const Value : WideString);
    procedure Setgac(const Value : Double);
    procedure Setgap(const Value : Double);
    procedure Setdiesel_s10(const Value : Double);
    procedure Setoleo_diesel(const Value : Double);
    procedure Setgpl_p13(const Value : Double);
    procedure Setgpl(const Value : Double);
    procedure Setqav(const Value : Double);
    procedure Setaehc(const Value : Double);
    procedure Setgnv(const Value : Double);
    procedure Setgni(const Value : Double);
    procedure Setoleo_combustivel(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property uf : WideString         read Fuf    write Fuf;
    property gac : Double         read Fgac    write Fgac;
    property gap : Double         read Fgap    write Fgap;
    property diesel_s10 : Double         read Fdiesel_s10    write Fdiesel_s10;
    property oleo_diesel : Double         read Foleo_diesel    write Foleo_diesel;
    property gpl_p13 : Double         read Fgpl_p13    write Fgpl_p13;
    property gpl : Double         read Fgpl    write Fgpl;
    property qav : Double         read Fqav    write Fqav;
    property aehc : Double         read Faehc    write Faehc;
    property gnv : Double         read Fgnv    write Fgnv;
    property gni : Double         read Fgni    write Fgni;
    property oleo_combustivel : Double         read Foleo_combustivel    write Foleo_combustivel;

  end;

var
  Frm_ViewERPplanocontascontabeis : TFrm_ViewERPplanocontascontabeis; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gac); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gap); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].diesel_s10); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].oleo_diesel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gpl_p13); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gpl); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qav); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aehc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gnv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gni); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].oleo_combustivel); 
    end; 
end; 

procedure TFrm_ViewERPplanocontascontabeis.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.gac := Edit_gac.text;
      FController.Model.gap := Edit_gap.text;
      FController.Model.diesel_s10 := Edit_diesel_s10.text;
      FController.Model.oleo_diesel := Edit_oleo_diesel.text;
      FController.Model.gpl_p13 := Edit_gpl_p13.text;
      FController.Model.gpl := Edit_gpl.text;
      FController.Model.qav := Edit_qav.text;
      FController.Model.aehc := Edit_aehc.text;
      FController.Model.gnv := Edit_gnv.text;
      FController.Model.gni := Edit_gni.text;
      FController.Model.oleo_combustivel := Edit_oleo_combustivel.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPplanocontascontabeis.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPplanocontascontabeis.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPplanocontascontabeis.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPplanocontascontabeis.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPplanocontascontabeis.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPplanocontascontabeis.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPplanocontascontabeis.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := gac;  
     Grid.Cells[inttostr(i),0] := gap;  
     Grid.Cells[inttostr(i),0] := diesel_s10;  
     Grid.Cells[inttostr(i),0] := oleo_diesel;  
     Grid.Cells[inttostr(i),0] := gpl_p13;  
     Grid.Cells[inttostr(i),0] := gpl;  
     Grid.Cells[inttostr(i),0] := qav;  
     Grid.Cells[inttostr(i),0] := aehc;  
     Grid.Cells[inttostr(i),0] := gnv;  
     Grid.Cells[inttostr(i),0] := gni;  
     Grid.Cells[inttostr(i),0] := oleo_combustivel;  
end;

procedure TFrm_ViewERPplanocontascontabeis.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPplanocontascontabeis.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPplanocontascontabeis.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.uf := Grid.Cells[1,Grid.row];
    FController.Model.gac := Grid.Cells[2,Grid.row];
    FController.Model.gap := Grid.Cells[3,Grid.row];
    FController.Model.diesel_s10 := Grid.Cells[4,Grid.row];
    FController.Model.oleo_diesel := Grid.Cells[5,Grid.row];
    FController.Model.gpl_p13 := Grid.Cells[6,Grid.row];
    FController.Model.gpl := Grid.Cells[7,Grid.row];
    FController.Model.qav := Grid.Cells[8,Grid.row];
    FController.Model.aehc := Grid.Cells[9,Grid.row];
    FController.Model.gnv := Grid.Cells[10,Grid.row];
    FController.Model.gni := Grid.Cells[11,Grid.row];
    FController.Model.oleo_combustivel := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPplanocontascontabeis.LimparTela;  
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

procedure TFrm_ViewERPplanocontascontabeis.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgac(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgap(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setdiesel_s10(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setoleo_diesel(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgpl_p13(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgpl(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setqav(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setaehc(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgnv(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setgni(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPplanocontascontabeis.Setoleo_combustivel(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
