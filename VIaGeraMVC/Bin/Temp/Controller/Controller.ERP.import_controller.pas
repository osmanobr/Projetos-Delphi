
unit Controller.ERP.import_clientes_fotos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientesfotos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientesfotos;
    FModelList: TModelBaseList<TModelERPimportclientesfotos>; 
    FModel: TModelERPimportclientesfotos;
    procedure SetModel(const Value: TModelERPimportclientesfotos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientesfotos>);

  public 
    property Model : TModelERPimportclientesfotos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientesfotos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientesfotos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientesfotos>.Create;  
  Self.FModelList.Add(TModelERPimportclientesfotos.Create); 
  Self.FModel           := TModelERPimportclientesfotos.Create; 
  Self.FDal             := TDalERPimportclientesfotos.Create( Param, True ); 
end; 

procedure TControllerERPimportclientesfotos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientesfotos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientesfotos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientesfotos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientesfotos.SetModel(  
  const Value: TModelERPimportclientesfotos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientesfotos.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientesfotos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientesfotos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientesfotos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

