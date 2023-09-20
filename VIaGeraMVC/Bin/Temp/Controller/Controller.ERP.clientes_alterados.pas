
unit Controller.ERP.clientes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientes;
    FModelList: TModelBaseList<TModelERPclientes>; 
    FModel: TModelERPclientes;
    procedure SetModel(const Value: TModelERPclientes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientes>);

  public 
    property Model : TModelERPclientes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientes>.Create;  
  Self.FModelList.Add(TModelERPclientes.Create); 
  Self.FModel           := TModelERPclientes.Create; 
  Self.FDal             := TDalERPclientes.Create( Param, True ); 
end; 

procedure TControllerERPclientes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientes.SetModel(  
  const Value: TModelERPclientes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientes.SetModelList(  
  const Value: TModelBaseList<TModelERPclientes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

