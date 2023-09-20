
unit View.ERP.nfe_manifesto_detalhe;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.nfe_manifesto_detalhe, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPnfemanifestodetalhe = class(TForm) 
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
    FController : TControllerERPnfemanifestodetalhe; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnsu : WideString;
    Festado : WideString;
    Fxml : indefinido;
    Fmanifestacao : Boolean;
    Fch_nfe : WideString;
    Finclusao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnsu(const Value : WideString);
    procedure Setestado(const Value : WideString);
    procedure Setxml(const Value : indefinido);
    procedure Setmanifestacao(const Value : Boolean);
    procedure Setch_nfe(const Value : WideString);
    procedure Setinclusao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nsu : WideString         read Fnsu    write Fnsu;
    property estado : WideString         read Festado    write Festado;
    property xml : indefinido         read Fxml    write Fxml;
    property manifestacao : Boolean         read Fmanifestacao    write Fmanifestacao;
    property ch_nfe : WideString         read Fch_nfe    write Fch_nfe;
    property inclusao : indefinido         read Finclusao    write Finclusao;

  end;

var
  Frm_ViewERPnfemanifestodetalhe : TFrm_ViewERPnfemanifestodetalhe; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nsu); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].manifestacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ch_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inclusao); 
    end; 
end; 

procedure TFrm_ViewERPnfemanifestodetalhe.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nsu := Edit_nsu.text;
      FController.Model.estado := Edit_estado.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.manifestacao := Edit_manifestacao.text;
      FController.Model.ch_nfe := Edit_ch_nfe.text;
      FController.Model.inclusao := Edit_inclusao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPnfemanifestodetalhe.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPnfemanifestodetalhe.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPnfemanifestodetalhe.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPnfemanifestodetalhe.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPnfemanifestodetalhe.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPnfemanifestodetalhe.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPnfemanifestodetalhe.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nsu;  
     Grid.Cells[inttostr(i),0] := estado;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := manifestacao;  
     Grid.Cells[inttostr(i),0] := ch_nfe;  
     Grid.Cells[inttostr(i),0] := inclusao;  
end;

procedure TFrm_ViewERPnfemanifestodetalhe.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPnfemanifestodetalhe.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPnfemanifestodetalhe.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nsu := Grid.Cells[2,Grid.row];
    FController.Model.estado := Grid.Cells[3,Grid.row];
    FController.Model.xml := Grid.Cells[4,Grid.row];
    FController.Model.manifestacao := Grid.Cells[5,Grid.row];
    FController.Model.ch_nfe := Grid.Cells[6,Grid.row];
    FController.Model.inclusao := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPnfemanifestodetalhe.LimparTela;  
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

procedure TFrm_ViewERPnfemanifestodetalhe.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setnsu(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setestado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setmanifestacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setch_nfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPnfemanifestodetalhe.Setinclusao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
