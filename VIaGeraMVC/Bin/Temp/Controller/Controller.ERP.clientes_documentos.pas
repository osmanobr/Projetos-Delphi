
unit Controller.ERP.clientes_credito;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientescredito = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientescredito;
    FModelList: TModelBaseList<TModelERPclientescredito>; 
    FModel: TModelERPclientescredito;
    procedure SetModel(const Value: TModelERPclientescredito); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientescredito>);

  public 
    property Model : TModelERPclientescredito read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientescredito> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientescredito.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientescredito>.Create;  
  Self.FModelList.Add(TModelERPclientescredito.Create); 
  Self.FModel           := TModelERPclientescredito.Create; 
  Self.FDal             := TDalERPclientescredito.Create( Param, True ); 
end; 

procedure TControllerERPclientescredito.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientescredito.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientescredito.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientescredito.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientescredito.SetModel(  
  const Value: TModelERPclientescredito); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientescredito.SetModelList(  
  const Value: TModelBaseList<TModelERPclientescredito>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientescredito.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientescredito.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

