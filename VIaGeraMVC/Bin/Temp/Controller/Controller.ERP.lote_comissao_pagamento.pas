
unit Controller.ERP.logerror;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlogerror = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlogerror;
    FModelList: TModelBaseList<TModelERPlogerror>; 
    FModel: TModelERPlogerror;
    procedure SetModel(const Value: TModelERPlogerror); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlogerror>);

  public 
    property Model : TModelERPlogerror read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlogerror> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlogerror.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlogerror>.Create;  
  Self.FModelList.Add(TModelERPlogerror.Create); 
  Self.FModel           := TModelERPlogerror.Create; 
  Self.FDal             := TDalERPlogerror.Create( Param, True ); 
end; 

procedure TControllerERPlogerror.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlogerror.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlogerror.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlogerror.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlogerror.SetModel(  
  const Value: TModelERPlogerror); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlogerror.SetModelList(  
  const Value: TModelBaseList<TModelERPlogerror>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlogerror.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlogerror.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

