
unit Controller.ERP.estimativa_obra_historico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestimativaobrahistorico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestimativaobrahistorico;
    FModelList: TModelBaseList<TModelERPestimativaobrahistorico>; 
    FModel: TModelERPestimativaobrahistorico;
    procedure SetModel(const Value: TModelERPestimativaobrahistorico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestimativaobrahistorico>);

  public 
    property Model : TModelERPestimativaobrahistorico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestimativaobrahistorico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestimativaobrahistorico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestimativaobrahistorico>.Create;  
  Self.FModelList.Add(TModelERPestimativaobrahistorico.Create); 
  Self.FModel           := TModelERPestimativaobrahistorico.Create; 
  Self.FDal             := TDalERPestimativaobrahistorico.Create( Param, True ); 
end; 

procedure TControllerERPestimativaobrahistorico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestimativaobrahistorico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestimativaobrahistorico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestimativaobrahistorico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestimativaobrahistorico.SetModel(  
  const Value: TModelERPestimativaobrahistorico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestimativaobrahistorico.SetModelList(  
  const Value: TModelBaseList<TModelERPestimativaobrahistorico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestimativaobrahistorico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestimativaobrahistorico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

