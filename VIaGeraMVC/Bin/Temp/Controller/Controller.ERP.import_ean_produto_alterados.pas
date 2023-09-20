
unit Controller.ERP.import_ean_produto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimporteanproduto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimporteanproduto;
    FModelList: TModelBaseList<TModelERPimporteanproduto>; 
    FModel: TModelERPimporteanproduto;
    procedure SetModel(const Value: TModelERPimporteanproduto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimporteanproduto>);

  public 
    property Model : TModelERPimporteanproduto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimporteanproduto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimporteanproduto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimporteanproduto>.Create;  
  Self.FModelList.Add(TModelERPimporteanproduto.Create); 
  Self.FModel           := TModelERPimporteanproduto.Create; 
  Self.FDal             := TDalERPimporteanproduto.Create( Param, True ); 
end; 

procedure TControllerERPimporteanproduto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimporteanproduto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimporteanproduto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimporteanproduto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimporteanproduto.SetModel(  
  const Value: TModelERPimporteanproduto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimporteanproduto.SetModelList(  
  const Value: TModelBaseList<TModelERPimporteanproduto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimporteanproduto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimporteanproduto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

