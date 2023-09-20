
unit Controller.ERP.produtos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutos;
    FModelList: TModelBaseList<TModelERPprodutos>; 
    FModel: TModelERPprodutos;
    procedure SetModel(const Value: TModelERPprodutos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutos>);

  public 
    property Model : TModelERPprodutos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutos>.Create;  
  Self.FModelList.Add(TModelERPprodutos.Create); 
  Self.FModel           := TModelERPprodutos.Create; 
  Self.FDal             := TDalERPprodutos.Create( Param, True ); 
end; 

procedure TControllerERPprodutos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutos.SetModel(  
  const Value: TModelERPprodutos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutos.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

