
unit Controller.ERP.lote_comissao_pagamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlotecomissaopagamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlotecomissaopagamento;
    FModelList: TModelBaseList<TModelERPlotecomissaopagamento>; 
    FModel: TModelERPlotecomissaopagamento;
    procedure SetModel(const Value: TModelERPlotecomissaopagamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlotecomissaopagamento>);

  public 
    property Model : TModelERPlotecomissaopagamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlotecomissaopagamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlotecomissaopagamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlotecomissaopagamento>.Create;  
  Self.FModelList.Add(TModelERPlotecomissaopagamento.Create); 
  Self.FModel           := TModelERPlotecomissaopagamento.Create; 
  Self.FDal             := TDalERPlotecomissaopagamento.Create( Param, True ); 
end; 

procedure TControllerERPlotecomissaopagamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlotecomissaopagamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlotecomissaopagamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlotecomissaopagamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlotecomissaopagamento.SetModel(  
  const Value: TModelERPlotecomissaopagamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlotecomissaopagamento.SetModelList(  
  const Value: TModelBaseList<TModelERPlotecomissaopagamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlotecomissaopagamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlotecomissaopagamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

