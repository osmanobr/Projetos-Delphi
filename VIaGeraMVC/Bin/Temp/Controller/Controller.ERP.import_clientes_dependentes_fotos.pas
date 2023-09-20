
unit Controller.ERP.import_clientes_dependentes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportclientesdependentes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportclientesdependentes;
    FModelList: TModelBaseList<TModelERPimportclientesdependentes>; 
    FModel: TModelERPimportclientesdependentes;
    procedure SetModel(const Value: TModelERPimportclientesdependentes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportclientesdependentes>);

  public 
    property Model : TModelERPimportclientesdependentes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportclientesdependentes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportclientesdependentes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportclientesdependentes>.Create;  
  Self.FModelList.Add(TModelERPimportclientesdependentes.Create); 
  Self.FModel           := TModelERPimportclientesdependentes.Create; 
  Self.FDal             := TDalERPimportclientesdependentes.Create( Param, True ); 
end; 

procedure TControllerERPimportclientesdependentes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportclientesdependentes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportclientesdependentes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportclientesdependentes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportclientesdependentes.SetModel(  
  const Value: TModelERPimportclientesdependentes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportclientesdependentes.SetModelList(  
  const Value: TModelBaseList<TModelERPimportclientesdependentes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportclientesdependentes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportclientesdependentes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

