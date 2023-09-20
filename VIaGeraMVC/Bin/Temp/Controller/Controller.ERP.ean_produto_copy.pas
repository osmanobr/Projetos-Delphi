
unit Controller.ERP.ean_produto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPeanproduto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPeanproduto;
    FModelList: TModelBaseList<TModelERPeanproduto>; 
    FModel: TModelERPeanproduto;
    procedure SetModel(const Value: TModelERPeanproduto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPeanproduto>);

  public 
    property Model : TModelERPeanproduto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPeanproduto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPeanproduto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPeanproduto>.Create;  
  Self.FModelList.Add(TModelERPeanproduto.Create); 
  Self.FModel           := TModelERPeanproduto.Create; 
  Self.FDal             := TDalERPeanproduto.Create( Param, True ); 
end; 

procedure TControllerERPeanproduto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPeanproduto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPeanproduto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPeanproduto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPeanproduto.SetModel(  
  const Value: TModelERPeanproduto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPeanproduto.SetModelList(  
  const Value: TModelBaseList<TModelERPeanproduto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPeanproduto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPeanproduto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

