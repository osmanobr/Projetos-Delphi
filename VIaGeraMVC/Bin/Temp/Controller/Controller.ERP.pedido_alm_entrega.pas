
unit Controller.ERP.pedido_alm;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpedidoalm = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpedidoalm;
    FModelList: TModelBaseList<TModelERPpedidoalm>; 
    FModel: TModelERPpedidoalm;
    procedure SetModel(const Value: TModelERPpedidoalm); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpedidoalm>);

  public 
    property Model : TModelERPpedidoalm read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpedidoalm> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpedidoalm.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpedidoalm>.Create;  
  Self.FModelList.Add(TModelERPpedidoalm.Create); 
  Self.FModel           := TModelERPpedidoalm.Create; 
  Self.FDal             := TDalERPpedidoalm.Create( Param, True ); 
end; 

procedure TControllerERPpedidoalm.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpedidoalm.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpedidoalm.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpedidoalm.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpedidoalm.SetModel(  
  const Value: TModelERPpedidoalm); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpedidoalm.SetModelList(  
  const Value: TModelBaseList<TModelERPpedidoalm>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpedidoalm.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpedidoalm.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

