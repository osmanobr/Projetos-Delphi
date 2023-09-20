
unit Controller.ERP.ean_produto_copy;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPeanprodutocopy = class(TControllerBase, IController) 
  private 
    FDal : TViewERPeanprodutocopy;
    FModelList: TModelBaseList<TModelERPeanprodutocopy>; 
    FModel: TModelERPeanprodutocopy;
    procedure SetModel(const Value: TModelERPeanprodutocopy); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPeanprodutocopy>);

  public 
    property Model : TModelERPeanprodutocopy read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPeanprodutocopy> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPeanprodutocopy.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPeanprodutocopy>.Create;  
  Self.FModelList.Add(TModelERPeanprodutocopy.Create); 
  Self.FModel           := TModelERPeanprodutocopy.Create; 
  Self.FDal             := TDalERPeanprodutocopy.Create( Param, True ); 
end; 

procedure TControllerERPeanprodutocopy.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPeanprodutocopy.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPeanprodutocopy.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPeanprodutocopy.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPeanprodutocopy.SetModel(  
  const Value: TModelERPeanprodutocopy); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPeanprodutocopy.SetModelList(  
  const Value: TModelBaseList<TModelERPeanprodutocopy>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPeanprodutocopy.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPeanprodutocopy.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

