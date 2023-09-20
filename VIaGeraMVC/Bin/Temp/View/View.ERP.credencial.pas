
unit View.ERP.conversao_ncm_to;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conversao_ncm_to, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPconversaoncmto = class(TForm) 
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
    FController : TControllerERPconversaoncmto; 
    Fid : Integer;
    Fid_classe : Integer;
    Fcredencial : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Fclasse : WideString;
    Fficha : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_classe(const Value : Integer);
    procedure Setcredencial(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Setrg_ssp(const Value : WideString);
    procedure Setclasse(const Value : WideString);
    procedure Setficha(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_classe : Integer         read Fid_classe    write Fid_classe;
    property credencial : Integer         read Fcredencial    write Fcredencial;
    property nome : WideString         read Fnome    write Fnome;
    property endereco : WideString         read Fendereco    write Fendereco;
    property cpf : WideString         read Fcpf    write Fcpf;
    property rg : WideString         read Frg    write Frg;
    property rg_ssp : WideString         read Frg_ssp    write Frg_ssp;
    property classe : WideString         read Fclasse    write Fclasse;
    property ficha : indefinido         read Fficha    write Fficha;

  end;

var
  Frm_ViewERPconversaoncmto : TFrm_ViewERPconversaoncmto; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_classe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].credencial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_ssp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].classe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ficha); 
    end; 
end; 

procedure TFrm_ViewERPconversaoncmto.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_classe := Edit_id_classe.text;
      FController.Model.credencial := Edit_credencial.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.rg_ssp := Edit_rg_ssp.text;
      FController.Model.classe := Edit_classe.text;
      FController.Model.ficha := Edit_ficha.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPconversaoncmto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPconversaoncmto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPconversaoncmto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPconversaoncmto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPconversaoncmto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPconversaoncmto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPconversaoncmto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_classe;  
     Grid.Cells[inttostr(i),0] := credencial;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := rg_ssp;  
     Grid.Cells[inttostr(i),0] := classe;  
     Grid.Cells[inttostr(i),0] := ficha;  
end;

procedure TFrm_ViewERPconversaoncmto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPconversaoncmto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPconversaoncmto.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_classe := Grid.Cells[1,Grid.row];
    FController.Model.credencial := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.endereco := Grid.Cells[4,Grid.row];
    FController.Model.cpf := Grid.Cells[5,Grid.row];
    FController.Model.rg := Grid.Cells[6,Grid.row];
    FController.Model.rg_ssp := Grid.Cells[7,Grid.row];
    FController.Model.classe := Grid.Cells[8,Grid.row];
    FController.Model.ficha := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPconversaoncmto.LimparTela;  
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

procedure TFrm_ViewERPconversaoncmto.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setid_classe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setcredencial(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setrg_ssp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setclasse(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPconversaoncmto.Setficha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
