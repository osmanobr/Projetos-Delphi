
unit Controller.ERP.empresas_configuracoes_mdfe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasconfiguracoesmdfe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasconfiguracoesmdfe;
    FModelList: TModelBaseList<TModelERPempresasconfiguracoesmdfe>; 
    FModel: TModelERPempresasconfiguracoesmdfe;
    procedure SetModel(const Value: TModelERPempresasconfiguracoesmdfe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasconfiguracoesmdfe>);

  public 
    property Model : TModelERPempresasconfiguracoesmdfe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasconfiguracoesmdfe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasconfiguracoesmdfe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasconfiguracoesmdfe>.Create;  
  Self.FModelList.Add(TModelERPempresasconfiguracoesmdfe.Create); 
  Self.FModel           := TModelERPempresasconfiguracoesmdfe.Create; 
  Self.FDal             := TDalERPempresasconfiguracoesmdfe.Create( Param, True ); 
end; 

procedure TControllerERPempresasconfiguracoesmdfe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasconfiguracoesmdfe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasconfiguracoesmdfe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasconfiguracoesmdfe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasconfiguracoesmdfe.SetModel(  
  const Value: TModelERPempresasconfiguracoesmdfe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasconfiguracoesmdfe.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasconfiguracoesmdfe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasconfiguracoesmdfe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasconfiguracoesmdfe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

