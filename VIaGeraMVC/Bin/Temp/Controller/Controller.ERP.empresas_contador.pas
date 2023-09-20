
unit Controller.ERP.empresas_configuracoes_nfe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasconfiguracoesnfe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasconfiguracoesnfe;
    FModelList: TModelBaseList<TModelERPempresasconfiguracoesnfe>; 
    FModel: TModelERPempresasconfiguracoesnfe;
    procedure SetModel(const Value: TModelERPempresasconfiguracoesnfe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasconfiguracoesnfe>);

  public 
    property Model : TModelERPempresasconfiguracoesnfe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasconfiguracoesnfe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasconfiguracoesnfe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasconfiguracoesnfe>.Create;  
  Self.FModelList.Add(TModelERPempresasconfiguracoesnfe.Create); 
  Self.FModel           := TModelERPempresasconfiguracoesnfe.Create; 
  Self.FDal             := TDalERPempresasconfiguracoesnfe.Create( Param, True ); 
end; 

procedure TControllerERPempresasconfiguracoesnfe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasconfiguracoesnfe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasconfiguracoesnfe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasconfiguracoesnfe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasconfiguracoesnfe.SetModel(  
  const Value: TModelERPempresasconfiguracoesnfe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasconfiguracoesnfe.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasconfiguracoesnfe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasconfiguracoesnfe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasconfiguracoesnfe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

