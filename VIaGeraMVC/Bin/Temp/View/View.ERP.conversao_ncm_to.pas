
unit View.ERP.controle_validade;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.controle_validade, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontrolevalidade = class(TForm) 
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
    FController : TControllerERPcontrolevalidade; 
    Fid : Integer;
    Fncm : WideString;
    Fmva_4 : Double;
    Fmva_7 : Double;
    Fmva_12 : Double;
    Facumulativo : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setncm(const Value : WideString);
    procedure Setmva_4(const Value : Double);
    procedure Setmva_7(const Value : Double);
    procedure Setmva_12(const Value : Double);
    procedure Setacumulativo(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property ncm : WideString         read Fncm    write Fncm;
    property mva_4 : Double         read Fmva_4    write Fmva_4;
    property mva_7 : Double         read Fmva_7    write Fmva_7;
    property mva_12 : Double         read Fmva_12    write Fmva_12;
    property acumulativo : Double         read Facumulativo    write Facumulativo;

  end;

var
  Frm_ViewERPcontrolevalidade : TFrm_ViewERPcontrolevalidade; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mva_4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mva_7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mva_12); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].acumulativo); 
    end; 
end; 

procedure TFrm_ViewERPcontrolevalidade.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ncm := Edit_ncm.text;
      FController.Model.mva_4 := Edit_mva_4.text;
      FController.Model.mva_7 := Edit_mva_7.text;
      FController.Model.mva_12 := Edit_mva_12.text;
      FController.Model.acumulativo := Edit_acumulativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontrolevalidade.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontrolevalidade.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontrolevalidade.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontrolevalidade.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontrolevalidade.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontrolevalidade.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontrolevalidade.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ncm;  
     Grid.Cells[inttostr(i),0] := mva_4;  
     Grid.Cells[inttostr(i),0] := mva_7;  
     Grid.Cells[inttostr(i),0] := mva_12;  
     Grid.Cells[inttostr(i),0] := acumulativo;  
end;

procedure TFrm_ViewERPcontrolevalidade.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontrolevalidade.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontrolevalidade.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ncm := Grid.Cells[1,Grid.row];
    FController.Model.mva_4 := Grid.Cells[2,Grid.row];
    FController.Model.mva_7 := Grid.Cells[3,Grid.row];
    FController.Model.mva_12 := Grid.Cells[4,Grid.row];
    FController.Model.acumulativo := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontrolevalidade.LimparTela;  
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

procedure TFrm_ViewERPcontrolevalidade.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolevalidade.Setncm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolevalidade.Setmva_4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolevalidade.Setmva_7(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolevalidade.Setmva_12(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrolevalidade.Setacumulativo(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
