
unit Controller.ERP.veiculos_planos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculosplanos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculosplanos;
    FModelList: TModelBaseList<TModelERPveiculosplanos>; 
    FModel: TModelERPveiculosplanos;
    procedure SetModel(const Value: TModelERPveiculosplanos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculosplanos>);

  public 
    property Model : TModelERPveiculosplanos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculosplanos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculosplanos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculosplanos>.Create;  
  Self.FModelList.Add(TModelERPveiculosplanos.Create); 
  Self.FModel           := TModelERPveiculosplanos.Create; 
  Self.FDal             := TDalERPveiculosplanos.Create( Param, True ); 
end; 

procedure TControllerERPveiculosplanos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculosplanos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculosplanos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculosplanos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculosplanos.SetModel(  
  const Value: TModelERPveiculosplanos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculosplanos.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculosplanos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculosplanos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculosplanos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

