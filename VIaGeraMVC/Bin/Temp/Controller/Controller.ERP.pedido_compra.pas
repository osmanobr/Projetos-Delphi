
unit Controller.ERP.pedido_carregamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidocarregamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidocarregamento;
    FModelList: TModelBaseList<TModelERPpedidocarregamento>; 
    FModel: TModelERPpedidocarregamento;
    procedure SetModel(const Value: TModelERPpedidocarregamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidocarregamento>);

  public 
    property Model : TModelERPpedidocarregamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidocarregamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidocarregamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidocarregamento>.Create;  
  Self.FModelList.Add(TModelERPpedidocarregamento.Create); 
  Self.FModel           := TModelERPpedidocarregamento.Create; 
  Self.FDal             := TDalERPpedidocarregamento.Create( Param, True ); 
end; 

procedure TControllerERPpedidocarregamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidocarregamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidocarregamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidocarregamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidocarregamento.SetModel(  
  const Value: TModelERPpedidocarregamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidocarregamento.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidocarregamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidocarregamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidocarregamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

