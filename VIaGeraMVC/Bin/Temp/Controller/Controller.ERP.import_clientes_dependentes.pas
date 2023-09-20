
unit Controller.ERP.import_clientes_consumidor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientesconsumidor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientesconsumidor;
    FModelList: TModelBaseList<TModelERPimportclientesconsumidor>; 
    FModel: TModelERPimportclientesconsumidor;
    procedure SetModel(const Value: TModelERPimportclientesconsumidor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientesconsumidor>);

  public 
    property Model : TModelERPimportclientesconsumidor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientesconsumidor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientesconsumidor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientesconsumidor>.Create;  
  Self.FModelList.Add(TModelERPimportclientesconsumidor.Create); 
  Self.FModel           := TModelERPimportclientesconsumidor.Create; 
  Self.FDal             := TDalERPimportclientesconsumidor.Create( Param, True ); 
end; 

procedure TControllerERPimportclientesconsumidor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientesconsumidor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientesconsumidor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientesconsumidor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientesconsumidor.SetModel(  
  const Value: TModelERPimportclientesconsumidor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientesconsumidor.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientesconsumidor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientesconsumidor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientesconsumidor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

