
unit Controller.ERP.import_ean_produto_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimporteanprodutoalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimporteanprodutoalterados;
    FModelList: TModelBaseList<TModelERPimporteanprodutoalterados>; 
    FModel: TModelERPimporteanprodutoalterados;
    procedure SetModel(const Value: TModelERPimporteanprodutoalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimporteanprodutoalterados>);

  public 
    property Model : TModelERPimporteanprodutoalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimporteanprodutoalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimporteanprodutoalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimporteanprodutoalterados>.Create;  
  Self.FModelList.Add(TModelERPimporteanprodutoalterados.Create); 
  Self.FModel           := TModelERPimporteanprodutoalterados.Create; 
  Self.FDal             := TDalERPimporteanprodutoalterados.Create( Param, True ); 
end; 

procedure TControllerERPimporteanprodutoalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimporteanprodutoalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimporteanprodutoalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimporteanprodutoalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimporteanprodutoalterados.SetModel(  
  const Value: TModelERPimporteanprodutoalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimporteanprodutoalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPimporteanprodutoalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimporteanprodutoalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimporteanprodutoalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

