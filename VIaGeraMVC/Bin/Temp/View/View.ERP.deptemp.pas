
unit View.ERP.dependentes;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.dependentes, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdependentes = class(TForm) 
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
    FController : TControllerERPdependentes; 
    Fid_empresa : Integer;
    Fid : Integer;
    Fnome : WideString;
    Fid_setor : Integer;
    Fsetor : WideString;
    Fid_secao : Integer;
    Fsecao : WideString;
    Fid_grupo : Integer;
    Fgrupo : WideString;
    Fid_subgrupo : Integer;
    Fsubgrupo : WideString;
    Fquantidade : Double;
    Ftotal : Double;
    Fcusto : Double;
    Flucro : Double;
    Fperc : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid_empresa(const Value : Integer);
    procedure Setid(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setid_setor(const Value : Integer);
    procedure Setsetor(const Value : WideString);
    procedure Setid_secao(const Value : Integer);
    procedure Setsecao(const Value : WideString);
    procedure Setid_grupo(const Value : Integer);
    procedure Setgrupo(const Value : WideString);
    procedure Setid_subgrupo(const Value : Integer);
    procedure Setsubgrupo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setcusto(const Value : Double);
    procedure Setlucro(const Value : Double);
    procedure Setperc(const Value : Double);

  public

    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id : Integer         read Fid    write Fid;
    property nome : WideString         read Fnome    write Fnome;
    property id_setor : Integer         read Fid_setor    write Fid_setor;
    property setor : WideString         read Fsetor    write Fsetor;
    property id_secao : Integer         read Fid_secao    write Fid_secao;
    property secao : WideString         read Fsecao    write Fsecao;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property grupo : WideString         read Fgrupo    write Fgrupo;
    property id_subgrupo : Integer         read Fid_subgrupo    write Fid_subgrupo;
    property subgrupo : WideString         read Fsubgrupo    write Fsubgrupo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property total : Double         read Ftotal    write Ftotal;
    property custo : Double         read Fcusto    write Fcusto;
    property lucro : Double         read Flucro    write Flucro;
    property perc : Double         read Fperc    write Fperc;

  end;

var
  Frm_ViewERPdependentes : TFrm_ViewERPdependentes; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_setor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].setor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_secao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].secao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_subgrupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].subgrupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lucro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].perc); 
    end; 
end; 

procedure TFrm_ViewERPdependentes.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id := Edit_id.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.id_setor := Edit_id_setor.text;
      FController.Model.setor := Edit_setor.text;
      FController.Model.id_secao := Edit_id_secao.text;
      FController.Model.secao := Edit_secao.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.grupo := Edit_grupo.text;
      FController.Model.id_subgrupo := Edit_id_subgrupo.text;
      FController.Model.subgrupo := Edit_subgrupo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.total := Edit_total.text;
      FController.Model.custo := Edit_custo.text;
      FController.Model.lucro := Edit_lucro.text;
      FController.Model.perc := Edit_perc.text;

  except 
    ShowMessage('N�o foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdependentes.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdependentes.BBCancelarClick(Sender: TObject); 
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
      {Verifica s� � uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPdependentes.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a grava��o dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
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

procedure TFrm_ViewERPdependentes.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdependentes.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdependentes.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdependentes.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := id_setor;  
     Grid.Cells[inttostr(i),0] := setor;  
     Grid.Cells[inttostr(i),0] := id_secao;  
     Grid.Cells[inttostr(i),0] := secao;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := grupo;  
     Grid.Cells[inttostr(i),0] := id_subgrupo;  
     Grid.Cells[inttostr(i),0] := subgrupo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := custo;  
     Grid.Cells[inttostr(i),0] := lucro;  
     Grid.Cells[inttostr(i),0] := perc;  
end;

procedure TFrm_ViewERPdependentes.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdependentes.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdependentes.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id_empresa := Grid.Cells[0,Grid.row];
    FController.Model.id := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.id_setor := Grid.Cells[3,Grid.row];
    FController.Model.setor := Grid.Cells[4,Grid.row];
    FController.Model.id_secao := Grid.Cells[5,Grid.row];
    FController.Model.secao := Grid.Cells[6,Grid.row];
    FController.Model.id_grupo := Grid.Cells[7,Grid.row];
    FController.Model.grupo := Grid.Cells[8,Grid.row];
    FController.Model.id_subgrupo := Grid.Cells[9,Grid.row];
    FController.Model.subgrupo := Grid.Cells[10,Grid.row];
    FController.Model.quantidade := Grid.Cells[11,Grid.row];
    FController.Model.total := Grid.Cells[12,Grid.row];
    FController.Model.custo := Grid.Cells[13,Grid.row];
    FController.Model.lucro := Grid.Cells[14,Grid.row];
    FController.Model.perc := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdependentes.LimparTela;  
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

procedure TFrm_ViewERPdependentes.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setid_setor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setsetor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setid_secao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setsecao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setgrupo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setid_subgrupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setsubgrupo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setcusto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setlucro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependentes.Setperc(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.