
unit Controller.ERP.insumos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinsumos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinsumos;
    FModelList: TModelBaseList<TModelERPinsumos>; 
    FModel: TModelERPinsumos;
    procedure SetModel(const Value: TModelERPinsumos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinsumos>);

  public 
    property Model : TModelERPinsumos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinsumos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinsumos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinsumos>.Create;  
  Self.FModelList.Add(TModelERPinsumos.Create); 
  Self.FModel           := TModelERPinsumos.Create; 
  Self.FDal             := TDalERPinsumos.Create( Param, True ); 
end; 

procedure TControllerERPinsumos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinsumos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinsumos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinsumos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinsumos.SetModel(  
  const Value: TModelERPinsumos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinsumos.SetModelList(  
  const Value: TModelBaseList<TModelERPinsumos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinsumos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinsumos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

