
unit Controller.ERP.pedido_compra_duplicata;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidocompraduplicata = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidocompraduplicata;
    FModelList: TModelBaseList<TModelERPpedidocompraduplicata>; 
    FModel: TModelERPpedidocompraduplicata;
    procedure SetModel(const Value: TModelERPpedidocompraduplicata); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidocompraduplicata>);

  public 
    property Model : TModelERPpedidocompraduplicata read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidocompraduplicata> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidocompraduplicata.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidocompraduplicata>.Create;  
  Self.FModelList.Add(TModelERPpedidocompraduplicata.Create); 
  Self.FModel           := TModelERPpedidocompraduplicata.Create; 
  Self.FDal             := TDalERPpedidocompraduplicata.Create( Param, True ); 
end; 

procedure TControllerERPpedidocompraduplicata.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidocompraduplicata.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidocompraduplicata.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidocompraduplicata.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidocompraduplicata.SetModel(  
  const Value: TModelERPpedidocompraduplicata); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidocompraduplicata.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidocompraduplicata>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidocompraduplicata.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidocompraduplicata.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

