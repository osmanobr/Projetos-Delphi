
unit Controller.ERP.import_clientes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientes;
    FModelList: TModelBaseList<TModelERPimportclientes>; 
    FModel: TModelERPimportclientes;
    procedure SetModel(const Value: TModelERPimportclientes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientes>);

  public 
    property Model : TModelERPimportclientes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientes>.Create;  
  Self.FModelList.Add(TModelERPimportclientes.Create); 
  Self.FModel           := TModelERPimportclientes.Create; 
  Self.FDal             := TDalERPimportclientes.Create( Param, True ); 
end; 

procedure TControllerERPimportclientes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientes.SetModel(  
  const Value: TModelERPimportclientes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientes.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

