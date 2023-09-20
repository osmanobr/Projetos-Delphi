
unit Controller.ERP.usuarios;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPusuarios = class(TControllerBase, IController) 
  private 
    FDal : TViewERPusuarios;
    FModelList: TModelBaseList<TModelERPusuarios>; 
    FModel: TModelERPusuarios;
    procedure SetModel(const Value: TModelERPusuarios); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPusuarios>);

  public 
    property Model : TModelERPusuarios read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPusuarios> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPusuarios.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPusuarios>.Create;  
  Self.FModelList.Add(TModelERPusuarios.Create); 
  Self.FModel           := TModelERPusuarios.Create; 
  Self.FDal             := TDalERPusuarios.Create( Param, True ); 
end; 

procedure TControllerERPusuarios.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPusuarios.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPusuarios.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPusuarios.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPusuarios.SetModel(  
  const Value: TModelERPusuarios); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPusuarios.SetModelList(  
  const Value: TModelBaseList<TModelERPusuarios>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPusuarios.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPusuarios.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

