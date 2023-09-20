
unit Controller.ERP.import_produtos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportprodutos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportprodutos;
    FModelList: TModelBaseList<TModelERPimportprodutos>; 
    FModel: TModelERPimportprodutos;
    procedure SetModel(const Value: TModelERPimportprodutos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportprodutos>);

  public 
    property Model : TModelERPimportprodutos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportprodutos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportprodutos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportprodutos>.Create;  
  Self.FModelList.Add(TModelERPimportprodutos.Create); 
  Self.FModel           := TModelERPimportprodutos.Create; 
  Self.FDal             := TDalERPimportprodutos.Create( Param, True ); 
end; 

procedure TControllerERPimportprodutos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportprodutos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportprodutos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportprodutos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportprodutos.SetModel(  
  const Value: TModelERPimportprodutos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportprodutos.SetModelList(  
  const Value: TModelBaseList<TModelERPimportprodutos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportprodutos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportprodutos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

