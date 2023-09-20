
unit Controller.ERP.inventarios;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinventarios = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinventarios;
    FModelList: TModelBaseList<TModelERPinventarios>; 
    FModel: TModelERPinventarios;
    procedure SetModel(const Value: TModelERPinventarios); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinventarios>);

  public 
    property Model : TModelERPinventarios read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinventarios> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinventarios.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinventarios>.Create;  
  Self.FModelList.Add(TModelERPinventarios.Create); 
  Self.FModel           := TModelERPinventarios.Create; 
  Self.FDal             := TDalERPinventarios.Create( Param, True ); 
end; 

procedure TControllerERPinventarios.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinventarios.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinventarios.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinventarios.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinventarios.SetModel(  
  const Value: TModelERPinventarios); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinventarios.SetModelList(  
  const Value: TModelBaseList<TModelERPinventarios>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinventarios.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinventarios.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

