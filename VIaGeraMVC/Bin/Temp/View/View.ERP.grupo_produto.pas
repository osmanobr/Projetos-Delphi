
unit View.ERP.grupo;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.grupo, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPgrupo = class(TForm) 
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
    FController : TControllerERPgrupo; 
    Fid : Integer;
    Fnome : WideString;
    Fclick : Boolean;
    Fcomissao : Double;
    Fmargem_lucro : Double;
    Fmargem_lucro_atacado : Double;
    Fgera_comissao : Boolean;
    Fcoeficiente_fabricacao : Double;
    Ffrete_valor : Double;
    Fcomissao_vendedor : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setcomissao(const Value : Double);
    procedure Setmargem_lucro(const Value : Double);
    procedure Setmargem_lucro_atacado(const Value : Double);
    procedure Setgera_comissao(const Value : Boolean);
    procedure Setcoeficiente_fabricacao(const Value : Double);
    procedure Setfrete_valor(const Value : Double);
    procedure Setcomissao_vendedor(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property click : Boolean         read Fclick    write Fclick;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property margem_lucro : Double         read Fmargem_lucro    write Fmargem_lucro;
    property margem_lucro_atacado : Double         read Fmargem_lucro_atacado    write Fmargem_lucro_atacado;
    property gera_comissao : Boolean         read Fgera_comissao    write Fgera_comissao;
    property coeficiente_fabricacao : Double         read Fcoeficiente_fabricacao    write Fcoeficiente_fabricacao;
    property frete_valor : Double         read Ffrete_valor    write Ffrete_valor;
    property comissao_vendedor : Double         read Fcomissao_vendedor    write Fcomissao_vendedor;

  end;

var
  Frm_ViewERPgrupo : TFrm_ViewERPgrupo; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].margem_lucro_atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coeficiente_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].frete_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_vendedor); 
    end; 
end; 

procedure TFrm_ViewERPgrupo.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.click := Edit_click.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.margem_lucro := Edit_margem_lucro.text;
      FController.Model.margem_lucro_atacado := Edit_margem_lucro_atacado.text;
      FController.Model.gera_comissao := Edit_gera_comissao.text;
      FController.Model.coeficiente_fabricacao := Edit_coeficiente_fabricacao.text;
      FController.Model.frete_valor := Edit_frete_valor.text;
      FController.Model.comissao_vendedor := Edit_comissao_vendedor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPgrupo.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPgrupo.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPgrupo.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPgrupo.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPgrupo.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPgrupo.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPgrupo.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := margem_lucro;  
     Grid.Cells[inttostr(i),0] := margem_lucro_atacado;  
     Grid.Cells[inttostr(i),0] := gera_comissao;  
     Grid.Cells[inttostr(i),0] := coeficiente_fabricacao;  
     Grid.Cells[inttostr(i),0] := frete_valor;  
     Grid.Cells[inttostr(i),0] := comissao_vendedor;  
end;

procedure TFrm_ViewERPgrupo.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPgrupo.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPgrupo.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.nome := Grid.Cells[1,Grid.row];
    FController.Model.click := Grid.Cells[2,Grid.row];
    FController.Model.comissao := Grid.Cells[3,Grid.row];
    FController.Model.margem_lucro := Grid.Cells[4,Grid.row];
    FController.Model.margem_lucro_atacado := Grid.Cells[5,Grid.row];
    FController.Model.gera_comissao := Grid.Cells[6,Grid.row];
    FController.Model.coeficiente_fabricacao := Grid.Cells[7,Grid.row];
    FController.Model.frete_valor := Grid.Cells[8,Grid.row];
    FController.Model.comissao_vendedor := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPgrupo.LimparTela;  
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

procedure TFrm_ViewERPgrupo.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setmargem_lucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setmargem_lucro_atacado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setgera_comissao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setcoeficiente_fabricacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setfrete_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPgrupo.Setcomissao_vendedor(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
