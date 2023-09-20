
unit Controller.ERP.formas_pagamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPformaspagamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPformaspagamento;
    FModelList: TModelBaseList<TModelERPformaspagamento>; 
    FModel: TModelERPformaspagamento;
    procedure SetModel(const Value: TModelERPformaspagamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPformaspagamento>);

  public 
    property Model : TModelERPformaspagamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPformaspagamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPformaspagamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPformaspagamento>.Create;  
  Self.FModelList.Add(TModelERPformaspagamento.Create); 
  Self.FModel           := TModelERPformaspagamento.Create; 
  Self.FDal             := TDalERPformaspagamento.Create( Param, True ); 
end; 

procedure TControllerERPformaspagamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPformaspagamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPformaspagamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPformaspagamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPformaspagamento.SetModel(  
  const Value: TModelERPformaspagamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPformaspagamento.SetModelList(  
  const Value: TModelBaseList<TModelERPformaspagamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPformaspagamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPformaspagamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

