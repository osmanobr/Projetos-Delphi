
unit Controller.ERP.inventario_mes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinventariomes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinventariomes;
    FModelList: TModelBaseList<TModelERPinventariomes>; 
    FModel: TModelERPinventariomes;
    procedure SetModel(const Value: TModelERPinventariomes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinventariomes>);

  public 
    property Model : TModelERPinventariomes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinventariomes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinventariomes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinventariomes>.Create;  
  Self.FModelList.Add(TModelERPinventariomes.Create); 
  Self.FModel           := TModelERPinventariomes.Create; 
  Self.FDal             := TDalERPinventariomes.Create( Param, True ); 
end; 

procedure TControllerERPinventariomes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinventariomes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinventariomes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinventariomes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinventariomes.SetModel(  
  const Value: TModelERPinventariomes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinventariomes.SetModelList(  
  const Value: TModelBaseList<TModelERPinventariomes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinventariomes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinventariomes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

