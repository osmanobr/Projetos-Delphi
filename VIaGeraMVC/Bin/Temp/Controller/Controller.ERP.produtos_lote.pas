
unit Controller.ERP.produtos_fotos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosfotos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosfotos;
    FModelList: TModelBaseList<TModelERPprodutosfotos>; 
    FModel: TModelERPprodutosfotos;
    procedure SetModel(const Value: TModelERPprodutosfotos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosfotos>);

  public 
    property Model : TModelERPprodutosfotos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosfotos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosfotos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosfotos>.Create;  
  Self.FModelList.Add(TModelERPprodutosfotos.Create); 
  Self.FModel           := TModelERPprodutosfotos.Create; 
  Self.FDal             := TDalERPprodutosfotos.Create( Param, True ); 
end; 

procedure TControllerERPprodutosfotos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosfotos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosfotos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosfotos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosfotos.SetModel(  
  const Value: TModelERPprodutosfotos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosfotos.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosfotos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosfotos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosfotos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

