
unit Controller.ERP.inventario;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinventario = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinventario;
    FModelList: TModelBaseList<TModelERPinventario>; 
    FModel: TModelERPinventario;
    procedure SetModel(const Value: TModelERPinventario); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinventario>);

  public 
    property Model : TModelERPinventario read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinventario> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinventario.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinventario>.Create;  
  Self.FModelList.Add(TModelERPinventario.Create); 
  Self.FModel           := TModelERPinventario.Create; 
  Self.FDal             := TDalERPinventario.Create( Param, True ); 
end; 

procedure TControllerERPinventario.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinventario.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinventario.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinventario.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinventario.SetModel(  
  const Value: TModelERPinventario); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinventario.SetModelList(  
  const Value: TModelBaseList<TModelERPinventario>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinventario.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinventario.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

