
unit Controller.ERP.veiculo_plano_acessorio;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculoplanoacessorio = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculoplanoacessorio;
    FModelList: TModelBaseList<TModelERPveiculoplanoacessorio>; 
    FModel: TModelERPveiculoplanoacessorio;
    procedure SetModel(const Value: TModelERPveiculoplanoacessorio); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculoplanoacessorio>);

  public 
    property Model : TModelERPveiculoplanoacessorio read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculoplanoacessorio> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculoplanoacessorio.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculoplanoacessorio>.Create;  
  Self.FModelList.Add(TModelERPveiculoplanoacessorio.Create); 
  Self.FModel           := TModelERPveiculoplanoacessorio.Create; 
  Self.FDal             := TDalERPveiculoplanoacessorio.Create( Param, True ); 
end; 

procedure TControllerERPveiculoplanoacessorio.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculoplanoacessorio.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculoplanoacessorio.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculoplanoacessorio.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculoplanoacessorio.SetModel(  
  const Value: TModelERPveiculoplanoacessorio); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculoplanoacessorio.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculoplanoacessorio>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculoplanoacessorio.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculoplanoacessorio.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

