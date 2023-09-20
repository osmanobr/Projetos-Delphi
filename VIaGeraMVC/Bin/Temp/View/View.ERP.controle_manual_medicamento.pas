
unit View.ERP.controle_log_helper;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.controle_log_helper, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontroleloghelper = class(TForm) 
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
    FController : TControllerERPcontroleloghelper; 
    Fid : Integer;
    Fid_venda_item : Integer;
    Fn_lote : WideString;
    Fq_lote : Double;
    Fd_fab : TDateTime;
    Fd_val : TDateTime;
    Fc_prod_anvisa : WideString;
    Fx_motivo_isencao : indefinido;
    Fv_pmc : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setn_lote(const Value : WideString);
    procedure Setq_lote(const Value : Double);
    procedure Setd_fab(const Value : TDateTime);
    procedure Setd_val(const Value : TDateTime);
    procedure Setc_prod_anvisa(const Value : WideString);
    procedure Setx_motivo_isencao(const Value : indefinido);
    procedure Setv_pmc(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property n_lote : WideString         read Fn_lote    write Fn_lote;
    property q_lote : Double         read Fq_lote    write Fq_lote;
    property d_fab : TDateTime         read Fd_fab    write Fd_fab;
    property d_val : TDateTime         read Fd_val    write Fd_val;
    property c_prod_anvisa : WideString         read Fc_prod_anvisa    write Fc_prod_anvisa;
    property x_motivo_isencao : indefinido         read Fx_motivo_isencao    write Fx_motivo_isencao;
    property v_pmc : Double         read Fv_pmc    write Fv_pmc;

  end;

var
  Frm_ViewERPcontroleloghelper : TFrm_ViewERPcontroleloghelper; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].n_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].q_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_fab); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_val); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_prod_anvisa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].x_motivo_isencao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].v_pmc); 
    end; 
end; 

procedure TFrm_ViewERPcontroleloghelper.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.n_lote := Edit_n_lote.text;
      FController.Model.q_lote := Edit_q_lote.text;
      FController.Model.d_fab := Edit_d_fab.text;
      FController.Model.d_val := Edit_d_val.text;
      FController.Model.c_prod_anvisa := Edit_c_prod_anvisa.text;
      FController.Model.x_motivo_isencao := Edit_x_motivo_isencao.text;
      FController.Model.v_pmc := Edit_v_pmc.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontroleloghelper.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontroleloghelper.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontroleloghelper.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontroleloghelper.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontroleloghelper.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontroleloghelper.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontroleloghelper.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := n_lote;  
     Grid.Cells[inttostr(i),0] := q_lote;  
     Grid.Cells[inttostr(i),0] := d_fab;  
     Grid.Cells[inttostr(i),0] := d_val;  
     Grid.Cells[inttostr(i),0] := c_prod_anvisa;  
     Grid.Cells[inttostr(i),0] := x_motivo_isencao;  
     Grid.Cells[inttostr(i),0] := v_pmc;  
end;

procedure TFrm_ViewERPcontroleloghelper.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontroleloghelper.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontroleloghelper.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[1,Grid.row];
    FController.Model.n_lote := Grid.Cells[2,Grid.row];
    FController.Model.q_lote := Grid.Cells[3,Grid.row];
    FController.Model.d_fab := Grid.Cells[4,Grid.row];
    FController.Model.d_val := Grid.Cells[5,Grid.row];
    FController.Model.c_prod_anvisa := Grid.Cells[6,Grid.row];
    FController.Model.x_motivo_isencao := Grid.Cells[7,Grid.row];
    FController.Model.v_pmc := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontroleloghelper.LimparTela;  
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

procedure TFrm_ViewERPcontroleloghelper.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setn_lote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setq_lote(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setd_fab(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setd_val(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setc_prod_anvisa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setx_motivo_isencao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleloghelper.Setv_pmc(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
