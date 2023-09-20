
unit Controller.ERP.produtos_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosalterados;
    FModelList: TModelBaseList<TModelERPprodutosalterados>; 
    FModel: TModelERPprodutosalterados;
    procedure SetModel(const Value: TModelERPprodutosalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosalterados>);

  public 
    property Model : TModelERPprodutosalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosalterados>.Create;  
  Self.FModelList.Add(TModelERPprodutosalterados.Create); 
  Self.FModel           := TModelERPprodutosalterados.Create; 
  Self.FDal             := TDalERPprodutosalterados.Create( Param, True ); 
end; 

procedure TControllerERPprodutosalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosalterados.SetModel(  
  const Value: TModelERPprodutosalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

