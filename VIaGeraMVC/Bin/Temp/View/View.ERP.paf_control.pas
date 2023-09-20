
unit View.ERP.os_servico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.os_servico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPosservico = class(TForm) 
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
    FController : TControllerERPosservico; 
    Fa2 : indefinido;
    Fp2 : indefinido;
    Fe2 : indefinido;
    Fe3 : indefinido;
    Fd2 : indefinido;
    Fd3 : indefinido;
    Fd4 : indefinido;
    Fb2 : indefinido;
    Fc2 : indefinido;
    Ff2 : indefinido;
    Ff3 : indefinido;
    Ff4 : indefinido;
    Ft2 : indefinido;
    Fm2 : indefinido;
    Fl2 : indefinido;
    Fg2 : indefinido;
    Fh2 : indefinido;
    Fs2 : indefinido;
    Fs3 : indefinido;
    Fr1 : indefinido;
    Fr2 : indefinido;
    Fr3 : indefinido;
    Fr4 : indefinido;
    Fr5 : indefinido;
    Fr6 : indefinido;
    Fr7 : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Seta2(const Value : indefinido);
    procedure Setp2(const Value : indefinido);
    procedure Sete2(const Value : indefinido);
    procedure Sete3(const Value : indefinido);
    procedure Setd2(const Value : indefinido);
    procedure Setd3(const Value : indefinido);
    procedure Setd4(const Value : indefinido);
    procedure Setb2(const Value : indefinido);
    procedure Setc2(const Value : indefinido);
    procedure Setf2(const Value : indefinido);
    procedure Setf3(const Value : indefinido);
    procedure Setf4(const Value : indefinido);
    procedure Sett2(const Value : indefinido);
    procedure Setm2(const Value : indefinido);
    procedure Setl2(const Value : indefinido);
    procedure Setg2(const Value : indefinido);
    procedure Seth2(const Value : indefinido);
    procedure Sets2(const Value : indefinido);
    procedure Sets3(const Value : indefinido);
    procedure Setr1(const Value : indefinido);
    procedure Setr2(const Value : indefinido);
    procedure Setr3(const Value : indefinido);
    procedure Setr4(const Value : indefinido);
    procedure Setr5(const Value : indefinido);
    procedure Setr6(const Value : indefinido);
    procedure Setr7(const Value : indefinido);

  public

    property a2 : indefinido         read Fa2    write Fa2;
    property p2 : indefinido         read Fp2    write Fp2;
    property e2 : indefinido         read Fe2    write Fe2;
    property e3 : indefinido         read Fe3    write Fe3;
    property d2 : indefinido         read Fd2    write Fd2;
    property d3 : indefinido         read Fd3    write Fd3;
    property d4 : indefinido         read Fd4    write Fd4;
    property b2 : indefinido         read Fb2    write Fb2;
    property c2 : indefinido         read Fc2    write Fc2;
    property f2 : indefinido         read Ff2    write Ff2;
    property f3 : indefinido         read Ff3    write Ff3;
    property f4 : indefinido         read Ff4    write Ff4;
    property t2 : indefinido         read Ft2    write Ft2;
    property m2 : indefinido         read Fm2    write Fm2;
    property l2 : indefinido         read Fl2    write Fl2;
    property g2 : indefinido         read Fg2    write Fg2;
    property h2 : indefinido         read Fh2    write Fh2;
    property s2 : indefinido         read Fs2    write Fs2;
    property s3 : indefinido         read Fs3    write Fs3;
    property r1 : indefinido         read Fr1    write Fr1;
    property r2 : indefinido         read Fr2    write Fr2;
    property r3 : indefinido         read Fr3    write Fr3;
    property r4 : indefinido         read Fr4    write Fr4;
    property r5 : indefinido         read Fr5    write Fr5;
    property r6 : indefinido         read Fr6    write Fr6;
    property r7 : indefinido         read Fr7    write Fr7;

  end;

var
  Frm_ViewERPosservico : TFrm_ViewERPosservico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 26; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].a2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].p2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].b2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].f2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].f3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].f4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].t2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].m2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].l2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].g2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].h2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].s2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].s3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r7); 
    end; 
end; 

procedure TFrm_ViewERPosservico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.a2 := Edit_a2.text;
      FController.Model.p2 := Edit_p2.text;
      FController.Model.e2 := Edit_e2.text;
      FController.Model.e3 := Edit_e3.text;
      FController.Model.d2 := Edit_d2.text;
      FController.Model.d3 := Edit_d3.text;
      FController.Model.d4 := Edit_d4.text;
      FController.Model.b2 := Edit_b2.text;
      FController.Model.c2 := Edit_c2.text;
      FController.Model.f2 := Edit_f2.text;
      FController.Model.f3 := Edit_f3.text;
      FController.Model.f4 := Edit_f4.text;
      FController.Model.t2 := Edit_t2.text;
      FController.Model.m2 := Edit_m2.text;
      FController.Model.l2 := Edit_l2.text;
      FController.Model.g2 := Edit_g2.text;
      FController.Model.h2 := Edit_h2.text;
      FController.Model.s2 := Edit_s2.text;
      FController.Model.s3 := Edit_s3.text;
      FController.Model.r1 := Edit_r1.text;
      FController.Model.r2 := Edit_r2.text;
      FController.Model.r3 := Edit_r3.text;
      FController.Model.r4 := Edit_r4.text;
      FController.Model.r5 := Edit_r5.text;
      FController.Model.r6 := Edit_r6.text;
      FController.Model.r7 := Edit_r7.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPosservico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPosservico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPosservico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPosservico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPosservico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPosservico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPosservico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 26;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := a2;  
     Grid.Cells[inttostr(i),0] := p2;  
     Grid.Cells[inttostr(i),0] := e2;  
     Grid.Cells[inttostr(i),0] := e3;  
     Grid.Cells[inttostr(i),0] := d2;  
     Grid.Cells[inttostr(i),0] := d3;  
     Grid.Cells[inttostr(i),0] := d4;  
     Grid.Cells[inttostr(i),0] := b2;  
     Grid.Cells[inttostr(i),0] := c2;  
     Grid.Cells[inttostr(i),0] := f2;  
     Grid.Cells[inttostr(i),0] := f3;  
     Grid.Cells[inttostr(i),0] := f4;  
     Grid.Cells[inttostr(i),0] := t2;  
     Grid.Cells[inttostr(i),0] := m2;  
     Grid.Cells[inttostr(i),0] := l2;  
     Grid.Cells[inttostr(i),0] := g2;  
     Grid.Cells[inttostr(i),0] := h2;  
     Grid.Cells[inttostr(i),0] := s2;  
     Grid.Cells[inttostr(i),0] := s3;  
     Grid.Cells[inttostr(i),0] := r1;  
     Grid.Cells[inttostr(i),0] := r2;  
     Grid.Cells[inttostr(i),0] := r3;  
     Grid.Cells[inttostr(i),0] := r4;  
     Grid.Cells[inttostr(i),0] := r5;  
     Grid.Cells[inttostr(i),0] := r6;  
     Grid.Cells[inttostr(i),0] := r7;  
end;

procedure TFrm_ViewERPosservico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPosservico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPosservico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.a2 := Grid.Cells[0,Grid.row];
    FController.Model.p2 := Grid.Cells[1,Grid.row];
    FController.Model.e2 := Grid.Cells[2,Grid.row];
    FController.Model.e3 := Grid.Cells[3,Grid.row];
    FController.Model.d2 := Grid.Cells[4,Grid.row];
    FController.Model.d3 := Grid.Cells[5,Grid.row];
    FController.Model.d4 := Grid.Cells[6,Grid.row];
    FController.Model.b2 := Grid.Cells[7,Grid.row];
    FController.Model.c2 := Grid.Cells[8,Grid.row];
    FController.Model.f2 := Grid.Cells[9,Grid.row];
    FController.Model.f3 := Grid.Cells[10,Grid.row];
    FController.Model.f4 := Grid.Cells[11,Grid.row];
    FController.Model.t2 := Grid.Cells[12,Grid.row];
    FController.Model.m2 := Grid.Cells[13,Grid.row];
    FController.Model.l2 := Grid.Cells[14,Grid.row];
    FController.Model.g2 := Grid.Cells[15,Grid.row];
    FController.Model.h2 := Grid.Cells[16,Grid.row];
    FController.Model.s2 := Grid.Cells[17,Grid.row];
    FController.Model.s3 := Grid.Cells[18,Grid.row];
    FController.Model.r1 := Grid.Cells[19,Grid.row];
    FController.Model.r2 := Grid.Cells[20,Grid.row];
    FController.Model.r3 := Grid.Cells[21,Grid.row];
    FController.Model.r4 := Grid.Cells[22,Grid.row];
    FController.Model.r5 := Grid.Cells[23,Grid.row];
    FController.Model.r6 := Grid.Cells[24,Grid.row];
    FController.Model.r7 := Grid.Cells[25,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPosservico.LimparTela;  
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

procedure TFrm_ViewERPosservico.Seta2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setp2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Sete2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Sete3(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setd2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setd3(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setd4(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setb2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setc2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setf2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setf3(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setf4(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Sett2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setm2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setl2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setg2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Seth2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Sets2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Sets3(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr1(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr3(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr4(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr5(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr6(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPosservico.Setr7(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
