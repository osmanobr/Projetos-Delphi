
unit Controller.ERP.ean_produtos_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPeanprodutosalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPeanprodutosalterados;
    FModelList: TModelBaseList<TModelERPeanprodutosalterados>; 
    FModel: TModelERPeanprodutosalterados;
    procedure SetModel(const Value: TModelERPeanprodutosalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPeanprodutosalterados>);

  public 
    property Model : TModelERPeanprodutosalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPeanprodutosalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPeanprodutosalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPeanprodutosalterados>.Create;  
  Self.FModelList.Add(TModelERPeanprodutosalterados.Create); 
  Self.FModel           := TModelERPeanprodutosalterados.Create; 
  Self.FDal             := TDalERPeanprodutosalterados.Create( Param, True ); 
end; 

procedure TControllerERPeanprodutosalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPeanprodutosalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPeanprodutosalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPeanprodutosalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPeanprodutosalterados.SetModel(  
  const Value: TModelERPeanprodutosalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPeanprodutosalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPeanprodutosalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPeanprodutosalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPeanprodutosalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

