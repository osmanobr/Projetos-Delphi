
unit Controller.ERP.fornecedor_pedido_compra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfornecedorpedidocompra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfornecedorpedidocompra;
    FModelList: TModelBaseList<TModelERPfornecedorpedidocompra>; 
    FModel: TModelERPfornecedorpedidocompra;
    procedure SetModel(const Value: TModelERPfornecedorpedidocompra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfornecedorpedidocompra>);

  public 
    property Model : TModelERPfornecedorpedidocompra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfornecedorpedidocompra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfornecedorpedidocompra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfornecedorpedidocompra>.Create;  
  Self.FModelList.Add(TModelERPfornecedorpedidocompra.Create); 
  Self.FModel           := TModelERPfornecedorpedidocompra.Create; 
  Self.FDal             := TDalERPfornecedorpedidocompra.Create( Param, True ); 
end; 

procedure TControllerERPfornecedorpedidocompra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfornecedorpedidocompra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfornecedorpedidocompra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfornecedorpedidocompra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfornecedorpedidocompra.SetModel(  
  const Value: TModelERPfornecedorpedidocompra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfornecedorpedidocompra.SetModelList(  
  const Value: TModelBaseList<TModelERPfornecedorpedidocompra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfornecedorpedidocompra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfornecedorpedidocompra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

