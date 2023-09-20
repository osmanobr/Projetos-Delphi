
unit Controller.ERP.import_produtos_grupos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportprodutosgrupos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportprodutosgrupos;
    FModelList: TModelBaseList<TModelERPimportprodutosgrupos>; 
    FModel: TModelERPimportprodutosgrupos;
    procedure SetModel(const Value: TModelERPimportprodutosgrupos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportprodutosgrupos>);

  public 
    property Model : TModelERPimportprodutosgrupos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportprodutosgrupos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportprodutosgrupos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportprodutosgrupos>.Create;  
  Self.FModelList.Add(TModelERPimportprodutosgrupos.Create); 
  Self.FModel           := TModelERPimportprodutosgrupos.Create; 
  Self.FDal             := TDalERPimportprodutosgrupos.Create( Param, True ); 
end; 

procedure TControllerERPimportprodutosgrupos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportprodutosgrupos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportprodutosgrupos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportprodutosgrupos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportprodutosgrupos.SetModel(  
  const Value: TModelERPimportprodutosgrupos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportprodutosgrupos.SetModelList(  
  const Value: TModelBaseList<TModelERPimportprodutosgrupos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportprodutosgrupos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportprodutosgrupos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

