
unit Controller.ERP.modulos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmodulos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmodulos;
    FModelList: TModelBaseList<TModelERPmodulos>; 
    FModel: TModelERPmodulos;
    procedure SetModel(const Value: TModelERPmodulos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmodulos>);

  public 
    property Model : TModelERPmodulos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmodulos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmodulos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmodulos>.Create;  
  Self.FModelList.Add(TModelERPmodulos.Create); 
  Self.FModel           := TModelERPmodulos.Create; 
  Self.FDal             := TDalERPmodulos.Create( Param, True ); 
end; 

procedure TControllerERPmodulos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmodulos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmodulos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmodulos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmodulos.SetModel(  
  const Value: TModelERPmodulos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmodulos.SetModelList(  
  const Value: TModelBaseList<TModelERPmodulos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmodulos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmodulos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

