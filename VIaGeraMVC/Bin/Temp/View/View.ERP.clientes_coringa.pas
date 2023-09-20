
unit View.ERP.clientes_controle_proprio_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_controle_proprio_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientescontroleproprioitem = class(TForm) 
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
    FController : TControllerERPclientescontroleproprioitem; 
    Fid : Integer;
    Fpessoa : WideString;
    Fdata_ficha : TDateTime;
    Fcpf : WideString;
    Fcnpj : WideString;
    Fnome : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcep : WideString;
    Fcidade : WideString;
    Fuf : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setpessoa(const Value : WideString);
    procedure Setdata_ficha(const Value : TDateTime);
    procedure Setcpf(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setnome(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Setrg_ssp(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property pessoa : WideString         read Fpessoa    write Fpessoa;
    property data_ficha : TDateTime         read Fdata_ficha    write Fdata_ficha;
    property cpf : WideString         read Fcpf    write Fcpf;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property nome : WideString         read Fnome    write Fnome;
    property rg : WideString         read Frg    write Frg;
    property rg_ssp : WideString         read Frg_ssp    write Frg_ssp;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property cep : WideString         read Fcep    write Fcep;
    property cidade : WideString         read Fcidade    write Fcidade;
    property uf : WideString         read Fuf    write Fuf;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;

  end;

var
  Frm_ViewERPclientescontroleproprioitem : TFrm_ViewERPclientescontroleproprioitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pessoa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_ssp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
    end; 
end; 

procedure TFrm_ViewERPclientescontroleproprioitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.pessoa := Edit_pessoa.text;
      FController.Model.data_ficha := Edit_data_ficha.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.rg_ssp := Edit_rg_ssp.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientescontroleproprioitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientescontroleproprioitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientescontroleproprioitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientescontroleproprioitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientescontroleproprioitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientescontroleproprioitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientescontroleproprioitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := pessoa;  
     Grid.Cells[inttostr(i),0] := data_ficha;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := rg_ssp;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
end;

procedure TFrm_ViewERPclientescontroleproprioitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientescontroleproprioitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientescontroleproprioitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.pessoa := Grid.Cells[1,Grid.row];
    FController.Model.data_ficha := Grid.Cells[2,Grid.row];
    FController.Model.cpf := Grid.Cells[3,Grid.row];
    FController.Model.cnpj := Grid.Cells[4,Grid.row];
    FController.Model.nome := Grid.Cells[5,Grid.row];
    FController.Model.rg := Grid.Cells[6,Grid.row];
    FController.Model.rg_ssp := Grid.Cells[7,Grid.row];
    FController.Model.endereco := Grid.Cells[8,Grid.row];
    FController.Model.bairro := Grid.Cells[9,Grid.row];
    FController.Model.cep := Grid.Cells[10,Grid.row];
    FController.Model.cidade := Grid.Cells[11,Grid.row];
    FController.Model.uf := Grid.Cells[12,Grid.row];
    FController.Model.telefone := Grid.Cells[13,Grid.row];
    FController.Model.celular := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientescontroleproprioitem.LimparTela;  
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

procedure TFrm_ViewERPclientescontroleproprioitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setpessoa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setdata_ficha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setrg_ssp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescontroleproprioitem.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
