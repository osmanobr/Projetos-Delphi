
unit Controller.ERP.import_produtos_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportprodutosalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportprodutosalterados;
    FModelList: TModelBaseList<TModelERPimportprodutosalterados>; 
    FModel: TModelERPimportprodutosalterados;
    procedure SetModel(const Value: TModelERPimportprodutosalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportprodutosalterados>);

  public 
    property Model : TModelERPimportprodutosalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportprodutosalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportprodutosalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportprodutosalterados>.Create;  
  Self.FModelList.Add(TModelERPimportprodutosalterados.Create); 
  Self.FModel           := TModelERPimportprodutosalterados.Create; 
  Self.FDal             := TDalERPimportprodutosalterados.Create( Param, True ); 
end; 

procedure TControllerERPimportprodutosalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportprodutosalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportprodutosalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportprodutosalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportprodutosalterados.SetModel(  
  const Value: TModelERPimportprodutosalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportprodutosalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPimportprodutosalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportprodutosalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportprodutosalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

