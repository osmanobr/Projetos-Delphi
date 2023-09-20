
unit Controller.ERP.os_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPositem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPositem;
    FModelList: TModelBaseList<TModelERPositem>; 
    FModel: TModelERPositem;
    procedure SetModel(const Value: TModelERPositem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPositem>);

  public 
    property Model : TModelERPositem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPositem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPositem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPositem>.Create;  
  Self.FModelList.Add(TModelERPositem.Create); 
  Self.FModel           := TModelERPositem.Create; 
  Self.FDal             := TDalERPositem.Create( Param, True ); 
end; 

procedure TControllerERPositem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPositem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPositem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPositem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPositem.SetModel(  
  const Value: TModelERPositem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPositem.SetModelList(  
  const Value: TModelBaseList<TModelERPositem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPositem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPositem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

