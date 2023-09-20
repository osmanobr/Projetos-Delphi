
unit Controller.ERP.import_clientes_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientesalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientesalterados;
    FModelList: TModelBaseList<TModelERPimportclientesalterados>; 
    FModel: TModelERPimportclientesalterados;
    procedure SetModel(const Value: TModelERPimportclientesalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientesalterados>);

  public 
    property Model : TModelERPimportclientesalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientesalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientesalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientesalterados>.Create;  
  Self.FModelList.Add(TModelERPimportclientesalterados.Create); 
  Self.FModel           := TModelERPimportclientesalterados.Create; 
  Self.FDal             := TDalERPimportclientesalterados.Create( Param, True ); 
end; 

procedure TControllerERPimportclientesalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientesalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientesalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientesalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientesalterados.SetModel(  
  const Value: TModelERPimportclientesalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientesalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientesalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientesalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientesalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

