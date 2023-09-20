
unit Controller.ERP.terminal_alert;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPterminalalert = class(TControllerBase, IController) 
  private 
    FDal : TViewERPterminalalert;
    FModelList: TModelBaseList<TModelERPterminalalert>; 
    FModel: TModelERPterminalalert;
    procedure SetModel(const Value: TModelERPterminalalert); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPterminalalert>);

  public 
    property Model : TModelERPterminalalert read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPterminalalert> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPterminalalert.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPterminalalert>.Create;  
  Self.FModelList.Add(TModelERPterminalalert.Create); 
  Self.FModel           := TModelERPterminalalert.Create; 
  Self.FDal             := TDalERPterminalalert.Create( Param, True ); 
end; 

procedure TControllerERPterminalalert.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPterminalalert.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPterminalalert.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPterminalalert.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPterminalalert.SetModel(  
  const Value: TModelERPterminalalert); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPterminalalert.SetModelList(  
  const Value: TModelBaseList<TModelERPterminalalert>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPterminalalert.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPterminalalert.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

