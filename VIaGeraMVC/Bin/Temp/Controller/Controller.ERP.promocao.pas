
unit Controller.ERP.produtos_uniao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutosuniao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutosuniao;
    FModelList: TModelBaseList<TModelERPprodutosuniao>; 
    FModel: TModelERPprodutosuniao;
    procedure SetModel(const Value: TModelERPprodutosuniao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutosuniao>);

  public 
    property Model : TModelERPprodutosuniao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutosuniao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutosuniao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutosuniao>.Create;  
  Self.FModelList.Add(TModelERPprodutosuniao.Create); 
  Self.FModel           := TModelERPprodutosuniao.Create; 
  Self.FDal             := TDalERPprodutosuniao.Create( Param, True ); 
end; 

procedure TControllerERPprodutosuniao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutosuniao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutosuniao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutosuniao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutosuniao.SetModel(  
  const Value: TModelERPprodutosuniao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutosuniao.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutosuniao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutosuniao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutosuniao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

