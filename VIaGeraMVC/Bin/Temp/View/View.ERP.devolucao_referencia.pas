
unit View.ERP.devolucao_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.devolucao_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdevolucaoitem = class(TForm) 
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
    FController : TControllerERPdevolucaoitem; 
    Fid : Integer;
    Fid_devolucao : Integer;
    Ftipo : WideString;
    Fnfe : WideString;
    Fuf : Integer;
    Faamm : WideString;
    Fcnpj : WideString;
    Fcnpjcpf : WideString;
    Fie : WideString;
    Fmodelo : WideString;
    Fserie : Integer;
    Fnf : Integer;
    Fecf : WideString;
    Fcoo : WideString;
    Fid_devolvido : Integer;
    Fnfce_chave : WideString;
    Fnfce : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Settipo(const Value : WideString);
    procedure Setnfe(const Value : WideString);
    procedure Setuf(const Value : Integer);
    procedure Setaamm(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setcnpjcpf(const Value : WideString);
    procedure Setie(const Value : WideString);
    procedure Setmodelo(const Value : WideString);
    procedure Setserie(const Value : Integer);
    procedure Setnf(const Value : Integer);
    procedure Setecf(const Value : WideString);
    procedure Setcoo(const Value : WideString);
    procedure Setid_devolvido(const Value : Integer);
    procedure Setnfce_chave(const Value : WideString);
    procedure Setnfce(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property tipo : WideString         read Ftipo    write Ftipo;
    property nfe : WideString         read Fnfe    write Fnfe;
    property uf : Integer         read Fuf    write Fuf;
    property aamm : WideString         read Faamm    write Faamm;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property cnpjcpf : WideString         read Fcnpjcpf    write Fcnpjcpf;
    property ie : WideString         read Fie    write Fie;
    property modelo : WideString         read Fmodelo    write Fmodelo;
    property serie : Integer         read Fserie    write Fserie;
    property nf : Integer         read Fnf    write Fnf;
    property ecf : WideString         read Fecf    write Fecf;
    property coo : WideString         read Fcoo    write Fcoo;
    property id_devolvido : Integer         read Fid_devolvido    write Fid_devolvido;
    property nfce_chave : WideString         read Fnfce_chave    write Fnfce_chave;
    property nfce : WideString         read Fnfce    write Fnfce;

  end;

var
  Frm_ViewERPdevolucaoitem : TFrm_ViewERPdevolucaoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 17; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aamm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpjcpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modelo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolvido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce_chave); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
    end; 
end; 

procedure TFrm_ViewERPdevolucaoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.aamm := Edit_aamm.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.cnpjcpf := Edit_cnpjcpf.text;
      FController.Model.ie := Edit_ie.text;
      FController.Model.modelo := Edit_modelo.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.nf := Edit_nf.text;
      FController.Model.ecf := Edit_ecf.text;
      FController.Model.coo := Edit_coo.text;
      FController.Model.id_devolvido := Edit_id_devolvido.text;
      FController.Model.nfce_chave := Edit_nfce_chave.text;
      FController.Model.nfce := Edit_nfce.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdevolucaoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdevolucaoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdevolucaoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdevolucaoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdevolucaoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdevolucaoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdevolucaoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 17;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := aamm;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := cnpjcpf;  
     Grid.Cells[inttostr(i),0] := ie;  
     Grid.Cells[inttostr(i),0] := modelo;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := nf;  
     Grid.Cells[inttostr(i),0] := ecf;  
     Grid.Cells[inttostr(i),0] := coo;  
     Grid.Cells[inttostr(i),0] := id_devolvido;  
     Grid.Cells[inttostr(i),0] := nfce_chave;  
     Grid.Cells[inttostr(i),0] := nfce;  
end;

procedure TFrm_ViewERPdevolucaoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdevolucaoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdevolucaoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[1,Grid.row];
    FController.Model.tipo := Grid.Cells[2,Grid.row];
    FController.Model.nfe := Grid.Cells[3,Grid.row];
    FController.Model.uf := Grid.Cells[4,Grid.row];
    FController.Model.aamm := Grid.Cells[5,Grid.row];
    FController.Model.cnpj := Grid.Cells[6,Grid.row];
    FController.Model.cnpjcpf := Grid.Cells[7,Grid.row];
    FController.Model.ie := Grid.Cells[8,Grid.row];
    FController.Model.modelo := Grid.Cells[9,Grid.row];
    FController.Model.serie := Grid.Cells[10,Grid.row];
    FController.Model.nf := Grid.Cells[11,Grid.row];
    FController.Model.ecf := Grid.Cells[12,Grid.row];
    FController.Model.coo := Grid.Cells[13,Grid.row];
    FController.Model.id_devolvido := Grid.Cells[14,Grid.row];
    FController.Model.nfce_chave := Grid.Cells[15,Grid.row];
    FController.Model.nfce := Grid.Cells[16,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdevolucaoitem.LimparTela;  
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

procedure TFrm_ViewERPdevolucaoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setuf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setaamm(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setcnpjcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setmodelo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setnf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setecf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setcoo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setid_devolvido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setnfce_chave(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdevolucaoitem.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
