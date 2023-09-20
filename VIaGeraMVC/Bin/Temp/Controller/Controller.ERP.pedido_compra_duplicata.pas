
unit Controller.ERP.pedido_compra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidocompra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidocompra;
    FModelList: TModelBaseList<TModelERPpedidocompra>; 
    FModel: TModelERPpedidocompra;
    procedure SetModel(const Value: TModelERPpedidocompra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidocompra>);

  public 
    property Model : TModelERPpedidocompra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidocompra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidocompra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidocompra>.Create;  
  Self.FModelList.Add(TModelERPpedidocompra.Create); 
  Self.FModel           := TModelERPpedidocompra.Create; 
  Self.FDal             := TDalERPpedidocompra.Create( Param, True ); 
end; 

procedure TControllerERPpedidocompra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidocompra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidocompra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidocompra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidocompra.SetModel(  
  const Value: TModelERPpedidocompra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidocompra.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidocompra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidocompra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidocompra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

