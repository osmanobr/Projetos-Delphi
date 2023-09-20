
unit View.ERP.registro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.registro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPregistro = class(TForm) 
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
    FController : TControllerERPregistro; 
    Fid : Integer;
    Fid_cupons : Integer;
    Fcoo : WideString;
    Fccf : WideString;
    Fcodfin : WideString;
    Fnsu : WideString;
    Fnsuhost : WideString;
    Fdata : indefinido;
    Fvalor : Double;
    Fmodalxxnn : WideString;
    Fmodaltexto : WideString;
    Fprimeiravia : indefinido;
    Fsegundavia : indefinido;
    Frede : WideString;
    Fimpresso : Boolean;
    Fbandeira : WideString;
    Fbin : WideString;
    Festorno : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setcoo(const Value : WideString);
    procedure Setccf(const Value : WideString);
    procedure Setcodfin(const Value : WideString);
    procedure Setnsu(const Value : WideString);
    procedure Setnsuhost(const Value : WideString);
    procedure Setdata(const Value : indefinido);
    procedure Setvalor(const Value : Double);
    procedure Setmodalxxnn(const Value : WideString);
    procedure Setmodaltexto(const Value : WideString);
    procedure Setprimeiravia(const Value : indefinido);
    procedure Setsegundavia(const Value : indefinido);
    procedure Setrede(const Value : WideString);
    procedure Setimpresso(const Value : Boolean);
    procedure Setbandeira(const Value : WideString);
    procedure Setbin(const Value : WideString);
    procedure Setestorno(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property coo : WideString         read Fcoo    write Fcoo;
    property ccf : WideString         read Fccf    write Fccf;
    property codfin : WideString         read Fcodfin    write Fcodfin;
    property nsu : WideString         read Fnsu    write Fnsu;
    property nsuhost : WideString         read Fnsuhost    write Fnsuhost;
    property data : indefinido         read Fdata    write Fdata;
    property valor : Double         read Fvalor    write Fvalor;
    property modalxxnn : WideString         read Fmodalxxnn    write Fmodalxxnn;
    property modaltexto : WideString         read Fmodaltexto    write Fmodaltexto;
    property primeiravia : indefinido         read Fprimeiravia    write Fprimeiravia;
    property segundavia : indefinido         read Fsegundavia    write Fsegundavia;
    property rede : WideString         read Frede    write Frede;
    property impresso : Boolean         read Fimpresso    write Fimpresso;
    property bandeira : WideString         read Fbandeira    write Fbandeira;
    property bin : WideString         read Fbin    write Fbin;
    property estorno : Boolean         read Festorno    write Festorno;

  end;

var
  Frm_ViewERPregistro : TFrm_ViewERPregistro; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ccf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codfin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nsu); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nsuhost); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modalxxnn); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modaltexto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].primeiravia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].segundavia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rede); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].impresso); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bandeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bin); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estorno); 
    end; 
end; 

procedure TFrm_ViewERPregistro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.coo := Edit_coo.text;
      FController.Model.ccf := Edit_ccf.text;
      FController.Model.codfin := Edit_codfin.text;
      FController.Model.nsu := Edit_nsu.text;
      FController.Model.nsuhost := Edit_nsuhost.text;
      FController.Model.data := Edit_data.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.modalxxnn := Edit_modalxxnn.text;
      FController.Model.modaltexto := Edit_modaltexto.text;
      FController.Model.primeiravia := Edit_primeiravia.text;
      FController.Model.segundavia := Edit_segundavia.text;
      FController.Model.rede := Edit_rede.text;
      FController.Model.impresso := Edit_impresso.text;
      FController.Model.bandeira := Edit_bandeira.text;
      FController.Model.bin := Edit_bin.text;
      FController.Model.estorno := Edit_estorno.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPregistro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPregistro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPregistro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPregistro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPregistro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPregistro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPregistro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := coo;  
     Grid.Cells[inttostr(i),0] := ccf;  
     Grid.Cells[inttostr(i),0] := codfin;  
     Grid.Cells[inttostr(i),0] := nsu;  
     Grid.Cells[inttostr(i),0] := nsuhost;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := modalxxnn;  
     Grid.Cells[inttostr(i),0] := modaltexto;  
     Grid.Cells[inttostr(i),0] := primeiravia;  
     Grid.Cells[inttostr(i),0] := segundavia;  
     Grid.Cells[inttostr(i),0] := rede;  
     Grid.Cells[inttostr(i),0] := impresso;  
     Grid.Cells[inttostr(i),0] := bandeira;  
     Grid.Cells[inttostr(i),0] := bin;  
     Grid.Cells[inttostr(i),0] := estorno;  
end;

procedure TFrm_ViewERPregistro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPregistro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPregistro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cupons := Grid.Cells[1,Grid.row];
    FController.Model.coo := Grid.Cells[2,Grid.row];
    FController.Model.ccf := Grid.Cells[3,Grid.row];
    FController.Model.codfin := Grid.Cells[4,Grid.row];
    FController.Model.nsu := Grid.Cells[5,Grid.row];
    FController.Model.nsuhost := Grid.Cells[6,Grid.row];
    FController.Model.data := Grid.Cells[7,Grid.row];
    FController.Model.valor := Grid.Cells[8,Grid.row];
    FController.Model.modalxxnn := Grid.Cells[9,Grid.row];
    FController.Model.modaltexto := Grid.Cells[10,Grid.row];
    FController.Model.primeiravia := Grid.Cells[11,Grid.row];
    FController.Model.segundavia := Grid.Cells[12,Grid.row];
    FController.Model.rede := Grid.Cells[13,Grid.row];
    FController.Model.impresso := Grid.Cells[14,Grid.row];
    FController.Model.bandeira := Grid.Cells[15,Grid.row];
    FController.Model.bin := Grid.Cells[16,Grid.row];
    FController.Model.estorno := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPregistro.LimparTela;  
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

procedure TFrm_ViewERPregistro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setcoo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setccf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setcodfin(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setnsu(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setnsuhost(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setmodalxxnn(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setmodaltexto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setprimeiravia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setsegundavia(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setrede(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setimpresso(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setbandeira(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setbin(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPregistro.Setestorno(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
