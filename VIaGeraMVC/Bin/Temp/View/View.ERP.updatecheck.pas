
unit View.ERP.update;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.update, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPupdate = class(TForm) 
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
    FController : TControllerERPupdate; 
    Fid : Integer;
    Fdata_criacao : indefinido;
    Fchange_update : indefinido;
    Fviaerp : Boolean;
    Fviapdv : Boolean;
    Fviafood : Boolean;
    Fviaposto : Boolean;
    Fviapvd : Boolean;
    Fvianfe : Boolean;
    Fviasped : Boolean;
    Fvianfce : Boolean;
    Fviamdfe : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata_criacao(const Value : indefinido);
    procedure Setchange_update(const Value : indefinido);
    procedure Setviaerp(const Value : Boolean);
    procedure Setviapdv(const Value : Boolean);
    procedure Setviafood(const Value : Boolean);
    procedure Setviaposto(const Value : Boolean);
    procedure Setviapvd(const Value : Boolean);
    procedure Setvianfe(const Value : Boolean);
    procedure Setviasped(const Value : Boolean);
    procedure Setvianfce(const Value : Boolean);
    procedure Setviamdfe(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property data_criacao : indefinido         read Fdata_criacao    write Fdata_criacao;
    property change_update : indefinido         read Fchange_update    write Fchange_update;
    property viaerp : Boolean         read Fviaerp    write Fviaerp;
    property viapdv : Boolean         read Fviapdv    write Fviapdv;
    property viafood : Boolean         read Fviafood    write Fviafood;
    property viaposto : Boolean         read Fviaposto    write Fviaposto;
    property viapvd : Boolean         read Fviapvd    write Fviapvd;
    property vianfe : Boolean         read Fvianfe    write Fvianfe;
    property viasped : Boolean         read Fviasped    write Fviasped;
    property vianfce : Boolean         read Fvianfce    write Fvianfce;
    property viamdfe : Boolean         read Fviamdfe    write Fviamdfe;

  end;

var
  Frm_ViewERPupdate : TFrm_ViewERPupdate; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_criacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].change_update); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viaerp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viapdv); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viafood); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viaposto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viapvd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vianfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viasped); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vianfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viamdfe); 
    end; 
end; 

procedure TFrm_ViewERPupdate.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data_criacao := Edit_data_criacao.text;
      FController.Model.change_update := Edit_change_update.text;
      FController.Model.viaerp := Edit_viaerp.text;
      FController.Model.viapdv := Edit_viapdv.text;
      FController.Model.viafood := Edit_viafood.text;
      FController.Model.viaposto := Edit_viaposto.text;
      FController.Model.viapvd := Edit_viapvd.text;
      FController.Model.vianfe := Edit_vianfe.text;
      FController.Model.viasped := Edit_viasped.text;
      FController.Model.vianfce := Edit_vianfce.text;
      FController.Model.viamdfe := Edit_viamdfe.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPupdate.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPupdate.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPupdate.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPupdate.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPupdate.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPupdate.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPupdate.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data_criacao;  
     Grid.Cells[inttostr(i),0] := change_update;  
     Grid.Cells[inttostr(i),0] := viaerp;  
     Grid.Cells[inttostr(i),0] := viapdv;  
     Grid.Cells[inttostr(i),0] := viafood;  
     Grid.Cells[inttostr(i),0] := viaposto;  
     Grid.Cells[inttostr(i),0] := viapvd;  
     Grid.Cells[inttostr(i),0] := vianfe;  
     Grid.Cells[inttostr(i),0] := viasped;  
     Grid.Cells[inttostr(i),0] := vianfce;  
     Grid.Cells[inttostr(i),0] := viamdfe;  
end;

procedure TFrm_ViewERPupdate.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPupdate.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPupdate.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data_criacao := Grid.Cells[1,Grid.row];
    FController.Model.change_update := Grid.Cells[2,Grid.row];
    FController.Model.viaerp := Grid.Cells[3,Grid.row];
    FController.Model.viapdv := Grid.Cells[4,Grid.row];
    FController.Model.viafood := Grid.Cells[5,Grid.row];
    FController.Model.viaposto := Grid.Cells[6,Grid.row];
    FController.Model.viapvd := Grid.Cells[7,Grid.row];
    FController.Model.vianfe := Grid.Cells[8,Grid.row];
    FController.Model.viasped := Grid.Cells[9,Grid.row];
    FController.Model.vianfce := Grid.Cells[10,Grid.row];
    FController.Model.viamdfe := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPupdate.LimparTela;  
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

procedure TFrm_ViewERPupdate.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setdata_criacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setchange_update(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviaerp(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviapdv(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviafood(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviaposto(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviapvd(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setvianfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviasped(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setvianfce(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPupdate.Setviamdfe(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
