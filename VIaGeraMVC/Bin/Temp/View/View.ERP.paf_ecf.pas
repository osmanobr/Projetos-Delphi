
unit View.ERP.paf_d;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.paf_d, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpafd = class(TForm) 
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
    FController : TControllerERPpafd; 
    Fcnpj : indefinido;
    Finscricao_estadual : indefinido;
    Finscricao_municipal : indefinido;
    Fdenominacao : indefinido;
    Faplicativo : indefinido;
    Fversao : indefinido;
    Fmd5 : indefinido;
    Fdata_homologacao : indefinido;
    Fdata_aplicativo : indefinido;
    Fversao_er : indefinido;
    Ftelefone : indefinido;
    Fresponsavel : indefinido;
    Fendereco : indefinido;
    Flaudo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setcnpj(const Value : indefinido);
    procedure Setinscricao_estadual(const Value : indefinido);
    procedure Setinscricao_municipal(const Value : indefinido);
    procedure Setdenominacao(const Value : indefinido);
    procedure Setaplicativo(const Value : indefinido);
    procedure Setversao(const Value : indefinido);
    procedure Setmd5(const Value : indefinido);
    procedure Setdata_homologacao(const Value : indefinido);
    procedure Setdata_aplicativo(const Value : indefinido);
    procedure Setversao_er(const Value : indefinido);
    procedure Settelefone(const Value : indefinido);
    procedure Setresponsavel(const Value : indefinido);
    procedure Setendereco(const Value : indefinido);
    procedure Setlaudo(const Value : indefinido);

  public

    property cnpj : indefinido         read Fcnpj    write Fcnpj;
    property inscricao_estadual : indefinido         read Finscricao_estadual    write Finscricao_estadual;
    property inscricao_municipal : indefinido         read Finscricao_municipal    write Finscricao_municipal;
    property denominacao : indefinido         read Fdenominacao    write Fdenominacao;
    property aplicativo : indefinido         read Faplicativo    write Faplicativo;
    property versao : indefinido         read Fversao    write Fversao;
    property md5 : indefinido         read Fmd5    write Fmd5;
    property data_homologacao : indefinido         read Fdata_homologacao    write Fdata_homologacao;
    property data_aplicativo : indefinido         read Fdata_aplicativo    write Fdata_aplicativo;
    property versao_er : indefinido         read Fversao_er    write Fversao_er;
    property telefone : indefinido         read Ftelefone    write Ftelefone;
    property responsavel : indefinido         read Fresponsavel    write Fresponsavel;
    property endereco : indefinido         read Fendereco    write Fendereco;
    property laudo : indefinido         read Flaudo    write Flaudo;

  end;

var
  Frm_ViewERPpafd : TFrm_ViewERPpafd; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_municipal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].denominacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aplicativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].md5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_homologacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_aplicativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].versao_er); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].laudo); 
    end; 
end; 

procedure TFrm_ViewERPpafd.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.inscricao_municipal := Edit_inscricao_municipal.text;
      FController.Model.denominacao := Edit_denominacao.text;
      FController.Model.aplicativo := Edit_aplicativo.text;
      FController.Model.versao := Edit_versao.text;
      FController.Model.md5 := Edit_md5.text;
      FController.Model.data_homologacao := Edit_data_homologacao.text;
      FController.Model.data_aplicativo := Edit_data_aplicativo.text;
      FController.Model.versao_er := Edit_versao_er.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.responsavel := Edit_responsavel.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.laudo := Edit_laudo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpafd.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpafd.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpafd.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpafd.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpafd.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpafd.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpafd.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := inscricao_municipal;  
     Grid.Cells[inttostr(i),0] := denominacao;  
     Grid.Cells[inttostr(i),0] := aplicativo;  
     Grid.Cells[inttostr(i),0] := versao;  
     Grid.Cells[inttostr(i),0] := md5;  
     Grid.Cells[inttostr(i),0] := data_homologacao;  
     Grid.Cells[inttostr(i),0] := data_aplicativo;  
     Grid.Cells[inttostr(i),0] := versao_er;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := responsavel;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := laudo;  
end;

procedure TFrm_ViewERPpafd.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpafd.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpafd.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.cnpj := Grid.Cells[0,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[1,Grid.row];
    FController.Model.inscricao_municipal := Grid.Cells[2,Grid.row];
    FController.Model.denominacao := Grid.Cells[3,Grid.row];
    FController.Model.aplicativo := Grid.Cells[4,Grid.row];
    FController.Model.versao := Grid.Cells[5,Grid.row];
    FController.Model.md5 := Grid.Cells[6,Grid.row];
    FController.Model.data_homologacao := Grid.Cells[7,Grid.row];
    FController.Model.data_aplicativo := Grid.Cells[8,Grid.row];
    FController.Model.versao_er := Grid.Cells[9,Grid.row];
    FController.Model.telefone := Grid.Cells[10,Grid.row];
    FController.Model.responsavel := Grid.Cells[11,Grid.row];
    FController.Model.endereco := Grid.Cells[12,Grid.row];
    FController.Model.laudo := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpafd.LimparTela;  
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

procedure TFrm_ViewERPpafd.Setcnpj(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setinscricao_estadual(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setinscricao_municipal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdenominacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setaplicativo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setversao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setmd5(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdata_homologacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setdata_aplicativo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setversao_er(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Settelefone(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setresponsavel(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setendereco(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpafd.Setlaudo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
