
unit Controller.ERP.formacao_preco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPformacaopreco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPformacaopreco;
    FModelList: TModelBaseList<TModelERPformacaopreco>; 
    FModel: TModelERPformacaopreco;
    procedure SetModel(const Value: TModelERPformacaopreco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPformacaopreco>);

  public 
    property Model : TModelERPformacaopreco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPformacaopreco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPformacaopreco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPformacaopreco>.Create;  
  Self.FModelList.Add(TModelERPformacaopreco.Create); 
  Self.FModel           := TModelERPformacaopreco.Create; 
  Self.FDal             := TDalERPformacaopreco.Create( Param, True ); 
end; 

procedure TControllerERPformacaopreco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPformacaopreco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPformacaopreco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPformacaopreco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPformacaopreco.SetModel(  
  const Value: TModelERPformacaopreco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPformacaopreco.SetModelList(  
  const Value: TModelBaseList<TModelERPformacaopreco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPformacaopreco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPformacaopreco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

