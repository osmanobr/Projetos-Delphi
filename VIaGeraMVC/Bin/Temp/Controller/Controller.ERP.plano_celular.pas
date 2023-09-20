
unit Controller.ERP.pedido_compra_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidocompraitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidocompraitem;
    FModelList: TModelBaseList<TModelERPpedidocompraitem>; 
    FModel: TModelERPpedidocompraitem;
    procedure SetModel(const Value: TModelERPpedidocompraitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidocompraitem>);

  public 
    property Model : TModelERPpedidocompraitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidocompraitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidocompraitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidocompraitem>.Create;  
  Self.FModelList.Add(TModelERPpedidocompraitem.Create); 
  Self.FModel           := TModelERPpedidocompraitem.Create; 
  Self.FDal             := TDalERPpedidocompraitem.Create( Param, True ); 
end; 

procedure TControllerERPpedidocompraitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidocompraitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidocompraitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidocompraitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidocompraitem.SetModel(  
  const Value: TModelERPpedidocompraitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidocompraitem.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidocompraitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidocompraitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidocompraitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

