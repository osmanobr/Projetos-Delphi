
unit Controller.ERP.os_acessorio;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPosacessorio = class(TControllerBase, IController) 
  private 
    FDal : TViewERPosacessorio;
    FModelList: TModelBaseList<TModelERPosacessorio>; 
    FModel: TModelERPosacessorio;
    procedure SetModel(const Value: TModelERPosacessorio); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPosacessorio>);

  public 
    property Model : TModelERPosacessorio read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPosacessorio> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPosacessorio.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPosacessorio>.Create;  
  Self.FModelList.Add(TModelERPosacessorio.Create); 
  Self.FModel           := TModelERPosacessorio.Create; 
  Self.FDal             := TDalERPosacessorio.Create( Param, True ); 
end; 

procedure TControllerERPosacessorio.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPosacessorio.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPosacessorio.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPosacessorio.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPosacessorio.SetModel(  
  const Value: TModelERPosacessorio); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPosacessorio.SetModelList(  
  const Value: TModelBaseList<TModelERPosacessorio>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPosacessorio.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPosacessorio.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

