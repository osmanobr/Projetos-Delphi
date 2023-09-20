
unit Controller.ERP.empresas_parametros;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasparametros = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasparametros;
    FModelList: TModelBaseList<TModelERPempresasparametros>; 
    FModel: TModelERPempresasparametros;
    procedure SetModel(const Value: TModelERPempresasparametros); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasparametros>);

  public 
    property Model : TModelERPempresasparametros read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasparametros> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasparametros.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasparametros>.Create;  
  Self.FModelList.Add(TModelERPempresasparametros.Create); 
  Self.FModel           := TModelERPempresasparametros.Create; 
  Self.FDal             := TDalERPempresasparametros.Create( Param, True ); 
end; 

procedure TControllerERPempresasparametros.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasparametros.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasparametros.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasparametros.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasparametros.SetModel(  
  const Value: TModelERPempresasparametros); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasparametros.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasparametros>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasparametros.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasparametros.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

