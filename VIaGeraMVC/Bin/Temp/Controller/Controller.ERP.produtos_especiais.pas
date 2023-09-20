
unit Controller.ERP.produtos_anp;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosanp = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosanp;
    FModelList: TModelBaseList<TModelERPprodutosanp>; 
    FModel: TModelERPprodutosanp;
    procedure SetModel(const Value: TModelERPprodutosanp); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosanp>);

  public 
    property Model : TModelERPprodutosanp read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosanp> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosanp.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosanp>.Create;  
  Self.FModelList.Add(TModelERPprodutosanp.Create); 
  Self.FModel           := TModelERPprodutosanp.Create; 
  Self.FDal             := TDalERPprodutosanp.Create( Param, True ); 
end; 

procedure TControllerERPprodutosanp.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosanp.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosanp.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosanp.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosanp.SetModel(  
  const Value: TModelERPprodutosanp); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosanp.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosanp>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosanp.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosanp.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

