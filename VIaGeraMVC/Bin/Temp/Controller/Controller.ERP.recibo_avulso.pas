
unit Controller.ERP.receita_agroprodutos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreceitaagroprodutos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreceitaagroprodutos;
    FModelList: TModelBaseList<TModelERPreceitaagroprodutos>; 
    FModel: TModelERPreceitaagroprodutos;
    procedure SetModel(const Value: TModelERPreceitaagroprodutos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreceitaagroprodutos>);

  public 
    property Model : TModelERPreceitaagroprodutos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreceitaagroprodutos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreceitaagroprodutos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreceitaagroprodutos>.Create;  
  Self.FModelList.Add(TModelERPreceitaagroprodutos.Create); 
  Self.FModel           := TModelERPreceitaagroprodutos.Create; 
  Self.FDal             := TDalERPreceitaagroprodutos.Create( Param, True ); 
end; 

procedure TControllerERPreceitaagroprodutos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreceitaagroprodutos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreceitaagroprodutos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreceitaagroprodutos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreceitaagroprodutos.SetModel(  
  const Value: TModelERPreceitaagroprodutos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreceitaagroprodutos.SetModelList(  
  const Value: TModelBaseList<TModelERPreceitaagroprodutos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreceitaagroprodutos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreceitaagroprodutos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

