
unit Controller.ERP.fechamento_caixa_transacoes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfechamentocaixatransacoes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfechamentocaixatransacoes;
    FModelList: TModelBaseList<TModelERPfechamentocaixatransacoes>; 
    FModel: TModelERPfechamentocaixatransacoes;
    procedure SetModel(const Value: TModelERPfechamentocaixatransacoes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfechamentocaixatransacoes>);

  public 
    property Model : TModelERPfechamentocaixatransacoes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfechamentocaixatransacoes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfechamentocaixatransacoes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfechamentocaixatransacoes>.Create;  
  Self.FModelList.Add(TModelERPfechamentocaixatransacoes.Create); 
  Self.FModel           := TModelERPfechamentocaixatransacoes.Create; 
  Self.FDal             := TDalERPfechamentocaixatransacoes.Create( Param, True ); 
end; 

procedure TControllerERPfechamentocaixatransacoes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfechamentocaixatransacoes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfechamentocaixatransacoes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfechamentocaixatransacoes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfechamentocaixatransacoes.SetModel(  
  const Value: TModelERPfechamentocaixatransacoes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfechamentocaixatransacoes.SetModelList(  
  const Value: TModelBaseList<TModelERPfechamentocaixatransacoes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfechamentocaixatransacoes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfechamentocaixatransacoes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

