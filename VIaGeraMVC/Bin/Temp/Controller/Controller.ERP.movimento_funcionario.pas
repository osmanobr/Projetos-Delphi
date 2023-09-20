
unit Controller.ERP.movimento_financeira;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentofinanceira = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentofinanceira;
    FModelList: TModelBaseList<TModelERPmovimentofinanceira>; 
    FModel: TModelERPmovimentofinanceira;
    procedure SetModel(const Value: TModelERPmovimentofinanceira); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentofinanceira>);

  public 
    property Model : TModelERPmovimentofinanceira read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentofinanceira> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentofinanceira.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentofinanceira>.Create;  
  Self.FModelList.Add(TModelERPmovimentofinanceira.Create); 
  Self.FModel           := TModelERPmovimentofinanceira.Create; 
  Self.FDal             := TDalERPmovimentofinanceira.Create( Param, True ); 
end; 

procedure TControllerERPmovimentofinanceira.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentofinanceira.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentofinanceira.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentofinanceira.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentofinanceira.SetModel(  
  const Value: TModelERPmovimentofinanceira); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentofinanceira.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentofinanceira>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentofinanceira.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentofinanceira.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

