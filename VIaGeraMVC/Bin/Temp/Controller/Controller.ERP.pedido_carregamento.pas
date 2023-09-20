
unit Controller.ERP.pedido_alm_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidoalmitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidoalmitem;
    FModelList: TModelBaseList<TModelERPpedidoalmitem>; 
    FModel: TModelERPpedidoalmitem;
    procedure SetModel(const Value: TModelERPpedidoalmitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidoalmitem>);

  public 
    property Model : TModelERPpedidoalmitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidoalmitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidoalmitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidoalmitem>.Create;  
  Self.FModelList.Add(TModelERPpedidoalmitem.Create); 
  Self.FModel           := TModelERPpedidoalmitem.Create; 
  Self.FDal             := TDalERPpedidoalmitem.Create( Param, True ); 
end; 

procedure TControllerERPpedidoalmitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidoalmitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidoalmitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidoalmitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidoalmitem.SetModel(  
  const Value: TModelERPpedidoalmitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidoalmitem.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidoalmitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidoalmitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidoalmitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

