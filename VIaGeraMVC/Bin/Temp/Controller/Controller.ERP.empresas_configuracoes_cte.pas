
unit Controller.ERP.empresas_configuracoes;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasconfiguracoes = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasconfiguracoes;
    FModelList: TModelBaseList<TModelERPempresasconfiguracoes>; 
    FModel: TModelERPempresasconfiguracoes;
    procedure SetModel(const Value: TModelERPempresasconfiguracoes); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasconfiguracoes>);

  public 
    property Model : TModelERPempresasconfiguracoes read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasconfiguracoes> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasconfiguracoes.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasconfiguracoes>.Create;  
  Self.FModelList.Add(TModelERPempresasconfiguracoes.Create); 
  Self.FModel           := TModelERPempresasconfiguracoes.Create; 
  Self.FDal             := TDalERPempresasconfiguracoes.Create( Param, True ); 
end; 

procedure TControllerERPempresasconfiguracoes.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasconfiguracoes.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasconfiguracoes.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasconfiguracoes.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasconfiguracoes.SetModel(  
  const Value: TModelERPempresasconfiguracoes); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasconfiguracoes.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasconfiguracoes>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasconfiguracoes.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasconfiguracoes.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

