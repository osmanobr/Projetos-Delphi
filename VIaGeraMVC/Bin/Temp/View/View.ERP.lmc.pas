
unit View.ERP.licenca;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.licenca, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlicenca = class(TForm) 
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
    FController : TControllerERPlicenca; 
    Fid : Integer;
    Fdata : TDateTime;
    Fpagina : Integer;
    Fid_produto : Integer;
    Fid_bico : Integer;
    Fid_tanque : Integer;
    Fdescricao : WideString;
    Festoq_abert : Double;
    Fvol_entr : Double;
    Fvol_disp : Double;
    Fvol_saidas : Double;
    Festoq_escr : Double;
    Fval_aj_perda : Double;
    Fval_aj_ganho : Double;
    Ffech_fisico : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setpagina(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setid_bico(const Value : Integer);
    procedure Setid_tanque(const Value : Integer);
    procedure Setdescricao(const Value : WideString);
    procedure Setestoq_abert(const Value : Double);
    procedure Setvol_entr(const Value : Double);
    procedure Setvol_disp(const Value : Double);
    procedure Setvol_saidas(const Value : Double);
    procedure Setestoq_escr(const Value : Double);
    procedure Setval_aj_perda(const Value : Double);
    procedure Setval_aj_ganho(const Value : Double);
    procedure Setfech_fisico(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property pagina : Integer         read Fpagina    write Fpagina;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property id_bico : Integer         read Fid_bico    write Fid_bico;
    property id_tanque : Integer         read Fid_tanque    write Fid_tanque;
    property descricao : WideString         read Fdescricao    write Fdescricao;
    property estoq_abert : Double         read Festoq_abert    write Festoq_abert;
    property vol_entr : Double         read Fvol_entr    write Fvol_entr;
    property vol_disp : Double         read Fvol_disp    write Fvol_disp;
    property vol_saidas : Double         read Fvol_saidas    write Fvol_saidas;
    property estoq_escr : Double         read Festoq_escr    write Festoq_escr;
    property val_aj_perda : Double         read Fval_aj_perda    write Fval_aj_perda;
    property val_aj_ganho : Double         read Fval_aj_ganho    write Fval_aj_ganho;
    property fech_fisico : Double         read Ffech_fisico    write Ffech_fisico;

  end;

var
  Frm_ViewERPlicenca : TFrm_ViewERPlicenca; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 15; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pagina); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_bico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_tanque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoq_abert); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vol_entr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vol_disp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vol_saidas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoq_escr); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].val_aj_perda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].val_aj_ganho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fech_fisico); 
    end; 
end; 

procedure TFrm_ViewERPlicenca.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.pagina := Edit_pagina.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.id_bico := Edit_id_bico.text;
      FController.Model.id_tanque := Edit_id_tanque.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.estoq_abert := Edit_estoq_abert.text;
      FController.Model.vol_entr := Edit_vol_entr.text;
      FController.Model.vol_disp := Edit_vol_disp.text;
      FController.Model.vol_saidas := Edit_vol_saidas.text;
      FController.Model.estoq_escr := Edit_estoq_escr.text;
      FController.Model.val_aj_perda := Edit_val_aj_perda.text;
      FController.Model.val_aj_ganho := Edit_val_aj_ganho.text;
      FController.Model.fech_fisico := Edit_fech_fisico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlicenca.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlicenca.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlicenca.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlicenca.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlicenca.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlicenca.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlicenca.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := pagina;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := id_bico;  
     Grid.Cells[inttostr(i),0] := id_tanque;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := estoq_abert;  
     Grid.Cells[inttostr(i),0] := vol_entr;  
     Grid.Cells[inttostr(i),0] := vol_disp;  
     Grid.Cells[inttostr(i),0] := vol_saidas;  
     Grid.Cells[inttostr(i),0] := estoq_escr;  
     Grid.Cells[inttostr(i),0] := val_aj_perda;  
     Grid.Cells[inttostr(i),0] := val_aj_ganho;  
     Grid.Cells[inttostr(i),0] := fech_fisico;  
end;

procedure TFrm_ViewERPlicenca.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlicenca.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlicenca.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.pagina := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.id_bico := Grid.Cells[4,Grid.row];
    FController.Model.id_tanque := Grid.Cells[5,Grid.row];
    FController.Model.descricao := Grid.Cells[6,Grid.row];
    FController.Model.estoq_abert := Grid.Cells[7,Grid.row];
    FController.Model.vol_entr := Grid.Cells[8,Grid.row];
    FController.Model.vol_disp := Grid.Cells[9,Grid.row];
    FController.Model.vol_saidas := Grid.Cells[10,Grid.row];
    FController.Model.estoq_escr := Grid.Cells[11,Grid.row];
    FController.Model.val_aj_perda := Grid.Cells[12,Grid.row];
    FController.Model.val_aj_ganho := Grid.Cells[13,Grid.row];
    FController.Model.fech_fisico := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlicenca.LimparTela;  
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

procedure TFrm_ViewERPlicenca.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setpagina(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setid_bico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setid_tanque(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setdescricao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setestoq_abert(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setvol_entr(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setvol_disp(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setvol_saidas(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setestoq_escr(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setval_aj_perda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setval_aj_ganho(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlicenca.Setfech_fisico(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
