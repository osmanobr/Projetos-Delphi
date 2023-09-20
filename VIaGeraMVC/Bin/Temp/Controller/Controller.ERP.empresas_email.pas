
unit Controller.ERP.empresas_contador;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresascontador = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresascontador;
    FModelList: TModelBaseList<TModelERPempresascontador>; 
    FModel: TModelERPempresascontador;
    procedure SetModel(const Value: TModelERPempresascontador); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresascontador>);

  public 
    property Model : TModelERPempresascontador read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresascontador> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresascontador.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresascontador>.Create;  
  Self.FModelList.Add(TModelERPempresascontador.Create); 
  Self.FModel           := TModelERPempresascontador.Create; 
  Self.FDal             := TDalERPempresascontador.Create( Param, True ); 
end; 

procedure TControllerERPempresascontador.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresascontador.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresascontador.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresascontador.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresascontador.SetModel(  
  const Value: TModelERPempresascontador); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresascontador.SetModelList(  
  const Value: TModelBaseList<TModelERPempresascontador>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresascontador.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresascontador.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

