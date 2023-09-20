
unit Controller.ERP.pedido_alm_entrega;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidoalmentrega = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidoalmentrega;
    FModelList: TModelBaseList<TModelERPpedidoalmentrega>; 
    FModel: TModelERPpedidoalmentrega;
    procedure SetModel(const Value: TModelERPpedidoalmentrega); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidoalmentrega>);

  public 
    property Model : TModelERPpedidoalmentrega read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidoalmentrega> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidoalmentrega.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidoalmentrega>.Create;  
  Self.FModelList.Add(TModelERPpedidoalmentrega.Create); 
  Self.FModel           := TModelERPpedidoalmentrega.Create; 
  Self.FDal             := TDalERPpedidoalmentrega.Create( Param, True ); 
end; 

procedure TControllerERPpedidoalmentrega.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidoalmentrega.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidoalmentrega.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidoalmentrega.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidoalmentrega.SetModel(  
  const Value: TModelERPpedidoalmentrega); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidoalmentrega.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidoalmentrega>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidoalmentrega.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidoalmentrega.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

