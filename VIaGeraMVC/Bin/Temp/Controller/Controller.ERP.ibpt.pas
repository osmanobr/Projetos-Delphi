
unit Controller.ERP.grupo_produto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPgrupoproduto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPgrupoproduto;
    FModelList: TModelBaseList<TModelERPgrupoproduto>; 
    FModel: TModelERPgrupoproduto;
    procedure SetModel(const Value: TModelERPgrupoproduto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPgrupoproduto>);

  public 
    property Model : TModelERPgrupoproduto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPgrupoproduto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPgrupoproduto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPgrupoproduto>.Create;  
  Self.FModelList.Add(TModelERPgrupoproduto.Create); 
  Self.FModel           := TModelERPgrupoproduto.Create; 
  Self.FDal             := TDalERPgrupoproduto.Create( Param, True ); 
end; 

procedure TControllerERPgrupoproduto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPgrupoproduto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPgrupoproduto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPgrupoproduto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPgrupoproduto.SetModel(  
  const Value: TModelERPgrupoproduto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPgrupoproduto.SetModelList(  
  const Value: TModelBaseList<TModelERPgrupoproduto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPgrupoproduto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPgrupoproduto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

