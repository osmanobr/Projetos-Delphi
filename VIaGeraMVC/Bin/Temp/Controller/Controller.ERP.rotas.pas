
unit Controller.ERP.romaneio_entrega_pedidos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPromaneioentregapedidos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPromaneioentregapedidos;
    FModelList: TModelBaseList<TModelERPromaneioentregapedidos>; 
    FModel: TModelERPromaneioentregapedidos;
    procedure SetModel(const Value: TModelERPromaneioentregapedidos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPromaneioentregapedidos>);

  public 
    property Model : TModelERPromaneioentregapedidos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPromaneioentregapedidos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPromaneioentregapedidos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPromaneioentregapedidos>.Create;  
  Self.FModelList.Add(TModelERPromaneioentregapedidos.Create); 
  Self.FModel           := TModelERPromaneioentregapedidos.Create; 
  Self.FDal             := TDalERPromaneioentregapedidos.Create( Param, True ); 
end; 

procedure TControllerERPromaneioentregapedidos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPromaneioentregapedidos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPromaneioentregapedidos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPromaneioentregapedidos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPromaneioentregapedidos.SetModel(  
  const Value: TModelERPromaneioentregapedidos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPromaneioentregapedidos.SetModelList(  
  const Value: TModelBaseList<TModelERPromaneioentregapedidos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPromaneioentregapedidos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPromaneioentregapedidos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

