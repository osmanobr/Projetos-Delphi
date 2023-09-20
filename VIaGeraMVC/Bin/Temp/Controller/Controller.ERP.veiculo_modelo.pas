
unit Controller.ERP.usuarios_modulos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPusuariosmodulos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPusuariosmodulos;
    FModelList: TModelBaseList<TModelERPusuariosmodulos>; 
    FModel: TModelERPusuariosmodulos;
    procedure SetModel(const Value: TModelERPusuariosmodulos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPusuariosmodulos>);

  public 
    property Model : TModelERPusuariosmodulos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPusuariosmodulos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPusuariosmodulos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPusuariosmodulos>.Create;  
  Self.FModelList.Add(TModelERPusuariosmodulos.Create); 
  Self.FModel           := TModelERPusuariosmodulos.Create; 
  Self.FDal             := TDalERPusuariosmodulos.Create( Param, True ); 
end; 

procedure TControllerERPusuariosmodulos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPusuariosmodulos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPusuariosmodulos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPusuariosmodulos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPusuariosmodulos.SetModel(  
  const Value: TModelERPusuariosmodulos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPusuariosmodulos.SetModelList(  
  const Value: TModelBaseList<TModelERPusuariosmodulos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPusuariosmodulos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPusuariosmodulos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

