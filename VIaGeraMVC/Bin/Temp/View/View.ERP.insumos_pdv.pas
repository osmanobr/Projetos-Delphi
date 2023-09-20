
unit View.ERP.insumos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.insumos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPinsumos = class(TForm) 
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
    FController : TControllerERPinsumos; 
    Fid : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Fquantidade : Double;
    Ftrib : WideString;
    Fippt : WideString;
    Fiat : WideString;
    Fean : WideString;
    Fcodigo_fabricante : WideString;
    Fid_princial : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Settrib(const Value : WideString);
    procedure Setippt(const Value : WideString);
    procedure Setiat(const Value : WideString);
    procedure Setean(const Value : WideString);
    procedure Setcodigo_fabricante(const Value : WideString);
    procedure Setid_princial(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property unidade : WideString         read Funidade    write Funidade;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property trib : WideString         read Ftrib    write Ftrib;
    property ippt : WideString         read Fippt    write Fippt;
    property iat : WideString         read Fiat    write Fiat;
    property ean : WideString         read Fean    write Fean;
    property codigo_fabricante : WideString         read Fcodigo_fabricante    write Fcodigo_fabricante;
    property id_princial : Integer         read Fid_princial    write Fid_princial;

  end;

var
  Frm_ViewERPinsumos : TFrm_ViewERPinsumos; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].trib); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ippt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iat); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_princial); 
    end; 
end; 

procedure TFrm_ViewERPinsumos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.trib := Edit_trib.text;
      FController.Model.ippt := Edit_ippt.text;
      FController.Model.iat := Edit_iat.text;
      FController.Model.ean := Edit_ean.text;
      FController.Model.codigo_fabricante := Edit_codigo_fabricante.text;
      FController.Model.id_princial := Edit_id_princial.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPinsumos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPinsumos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPinsumos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPinsumos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPinsumos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPinsumos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPinsumos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := trib;  
     Grid.Cells[inttostr(i),0] := ippt;  
     Grid.Cells[inttostr(i),0] := iat;  
     Grid.Cells[inttostr(i),0] := ean;  
     Grid.Cells[inttostr(i),0] := codigo_fabricante;  
     Grid.Cells[inttostr(i),0] := id_princial;  
end;

procedure TFrm_ViewERPinsumos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPinsumos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPinsumos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.unidade := Grid.Cells[2,Grid.row];
    FController.Model.quantidade := Grid.Cells[3,Grid.row];
    FController.Model.trib := Grid.Cells[4,Grid.row];
    FController.Model.ippt := Grid.Cells[5,Grid.row];
    FController.Model.iat := Grid.Cells[6,Grid.row];
    FController.Model.ean := Grid.Cells[7,Grid.row];
    FController.Model.codigo_fabricante := Grid.Cells[8,Grid.row];
    FController.Model.id_princial := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPinsumos.LimparTela;  
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

procedure TFrm_ViewERPinsumos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Settrib(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setippt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setiat(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setcodigo_fabricante(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPinsumos.Setid_princial(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
