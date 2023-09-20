
unit Controller.ERP.representacoes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPrepresentacoes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPrepresentacoes;
    FModelList: TModelBaseList<TModelERPrepresentacoes>; 
    FModel: TModelERPrepresentacoes;
    procedure SetModel(const Value: TModelERPrepresentacoes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPrepresentacoes>);

  public 
    property Model : TModelERPrepresentacoes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPrepresentacoes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPrepresentacoes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPrepresentacoes>.Create;  
  Self.FModelList.Add(TModelERPrepresentacoes.Create); 
  Self.FModel           := TModelERPrepresentacoes.Create; 
  Self.FDal             := TDalERPrepresentacoes.Create( Param, True ); 
end; 

procedure TControllerERPrepresentacoes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPrepresentacoes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPrepresentacoes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPrepresentacoes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPrepresentacoes.SetModel(  
  const Value: TModelERPrepresentacoes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPrepresentacoes.SetModelList(  
  const Value: TModelBaseList<TModelERPrepresentacoes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPrepresentacoes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPrepresentacoes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

