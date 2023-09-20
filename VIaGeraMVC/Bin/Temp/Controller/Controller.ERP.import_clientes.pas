
unit Controller.ERP.import_cidades;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportcidades = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportcidades;
    FModelList: TModelBaseList<TModelERPimportcidades>; 
    FModel: TModelERPimportcidades;
    procedure SetModel(const Value: TModelERPimportcidades); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportcidades>);

  public 
    property Model : TModelERPimportcidades read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportcidades> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportcidades.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportcidades>.Create;  
  Self.FModelList.Add(TModelERPimportcidades.Create); 
  Self.FModel           := TModelERPimportcidades.Create; 
  Self.FDal             := TDalERPimportcidades.Create( Param, True ); 
end; 

procedure TControllerERPimportcidades.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportcidades.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportcidades.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportcidades.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportcidades.SetModel(  
  const Value: TModelERPimportcidades); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportcidades.SetModelList(  
  const Value: TModelBaseList<TModelERPimportcidades>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportcidades.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportcidades.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

