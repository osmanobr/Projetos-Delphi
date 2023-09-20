
unit Controller.ERP.log;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlog = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlog;
    FModelList: TModelBaseList<TModelERPlog>; 
    FModel: TModelERPlog;
    procedure SetModel(const Value: TModelERPlog); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlog>);

  public 
    property Model : TModelERPlog read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlog> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlog.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlog>.Create;  
  Self.FModelList.Add(TModelERPlog.Create); 
  Self.FModel           := TModelERPlog.Create; 
  Self.FDal             := TDalERPlog.Create( Param, True ); 
end; 

procedure TControllerERPlog.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlog.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlog.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlog.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlog.SetModel(  
  const Value: TModelERPlog); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlog.SetModelList(  
  const Value: TModelBaseList<TModelERPlog>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlog.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlog.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

