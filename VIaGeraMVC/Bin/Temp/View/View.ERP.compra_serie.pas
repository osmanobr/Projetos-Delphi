
unit View.ERP.compra_kit;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.compra_kit, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomprakit = class(TForm) 
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
    FController : TControllerERPcomprakit; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnf : WideString;
    Fid_compra : Integer;
    Fid_produto : Integer;
    Fnro_serie_1 : WideString;
    Fnro_serie_2 : WideString;
    Fnro_serie_3 : WideString;
    Fvenda : WideString;
    Fnro_serie_4 : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnf(const Value : WideString);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnro_serie_1(const Value : WideString);
    procedure Setnro_serie_2(const Value : WideString);
    procedure Setnro_serie_3(const Value : WideString);
    procedure Setvenda(const Value : WideString);
    procedure Setnro_serie_4(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nf : WideString         read Fnf    write Fnf;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nro_serie_1 : WideString         read Fnro_serie_1    write Fnro_serie_1;
    property nro_serie_2 : WideString         read Fnro_serie_2    write Fnro_serie_2;
    property nro_serie_3 : WideString         read Fnro_serie_3    write Fnro_serie_3;
    property venda : WideString         read Fvenda    write Fvenda;
    property nro_serie_4 : WideString         read Fnro_serie_4    write Fnro_serie_4;

  end;

var
  Frm_ViewERPcomprakit : TFrm_ViewERPcomprakit; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_serie_1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_serie_2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_serie_3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nro_serie_4); 
    end; 
end; 

procedure TFrm_ViewERPcomprakit.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nf := Edit_nf.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nro_serie_1 := Edit_nro_serie_1.text;
      FController.Model.nro_serie_2 := Edit_nro_serie_2.text;
      FController.Model.nro_serie_3 := Edit_nro_serie_3.text;
      FController.Model.venda := Edit_venda.text;
      FController.Model.nro_serie_4 := Edit_nro_serie_4.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomprakit.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomprakit.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomprakit.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomprakit.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomprakit.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomprakit.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomprakit.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nf;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nro_serie_1;  
     Grid.Cells[inttostr(i),0] := nro_serie_2;  
     Grid.Cells[inttostr(i),0] := nro_serie_3;  
     Grid.Cells[inttostr(i),0] := venda;  
     Grid.Cells[inttostr(i),0] := nro_serie_4;  
end;

procedure TFrm_ViewERPcomprakit.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomprakit.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomprakit.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nf := Grid.Cells[2,Grid.row];
    FController.Model.id_compra := Grid.Cells[3,Grid.row];
    FController.Model.id_produto := Grid.Cells[4,Grid.row];
    FController.Model.nro_serie_1 := Grid.Cells[5,Grid.row];
    FController.Model.nro_serie_2 := Grid.Cells[6,Grid.row];
    FController.Model.nro_serie_3 := Grid.Cells[7,Grid.row];
    FController.Model.venda := Grid.Cells[8,Grid.row];
    FController.Model.nro_serie_4 := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomprakit.LimparTela;  
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

procedure TFrm_ViewERPcomprakit.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setnf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setnro_serie_1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setnro_serie_2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setnro_serie_3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setvenda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomprakit.Setnro_serie_4(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
