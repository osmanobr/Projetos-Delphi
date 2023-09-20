
unit Controller.ERP.fornecedor_produtos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfornecedorprodutos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfornecedorprodutos;
    FModelList: TModelBaseList<TModelERPfornecedorprodutos>; 
    FModel: TModelERPfornecedorprodutos;
    procedure SetModel(const Value: TModelERPfornecedorprodutos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfornecedorprodutos>);

  public 
    property Model : TModelERPfornecedorprodutos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfornecedorprodutos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfornecedorprodutos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfornecedorprodutos>.Create;  
  Self.FModelList.Add(TModelERPfornecedorprodutos.Create); 
  Self.FModel           := TModelERPfornecedorprodutos.Create; 
  Self.FDal             := TDalERPfornecedorprodutos.Create( Param, True ); 
end; 

procedure TControllerERPfornecedorprodutos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfornecedorprodutos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfornecedorprodutos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfornecedorprodutos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfornecedorprodutos.SetModel(  
  const Value: TModelERPfornecedorprodutos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfornecedorprodutos.SetModelList(  
  const Value: TModelBaseList<TModelERPfornecedorprodutos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfornecedorprodutos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfornecedorprodutos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

