
unit Controller.ERP.import_clientes_dependentes_fotos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientesdependentesfotos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientesdependentesfotos;
    FModelList: TModelBaseList<TModelERPimportclientesdependentesfotos>; 
    FModel: TModelERPimportclientesdependentesfotos;
    procedure SetModel(const Value: TModelERPimportclientesdependentesfotos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientesdependentesfotos>);

  public 
    property Model : TModelERPimportclientesdependentesfotos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientesdependentesfotos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientesdependentesfotos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientesdependentesfotos>.Create;  
  Self.FModelList.Add(TModelERPimportclientesdependentesfotos.Create); 
  Self.FModel           := TModelERPimportclientesdependentesfotos.Create; 
  Self.FDal             := TDalERPimportclientesdependentesfotos.Create( Param, True ); 
end; 

procedure TControllerERPimportclientesdependentesfotos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientesdependentesfotos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientesdependentesfotos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientesdependentesfotos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientesdependentesfotos.SetModel(  
  const Value: TModelERPimportclientesdependentesfotos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientesdependentesfotos.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientesdependentesfotos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientesdependentesfotos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientesdependentesfotos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

