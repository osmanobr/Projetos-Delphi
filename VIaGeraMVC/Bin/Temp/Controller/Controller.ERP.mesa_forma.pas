
unit Controller.ERP.mesa_cancelada;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesacancelada = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesacancelada;
    FModelList: TModelBaseList<TModelERPmesacancelada>; 
    FModel: TModelERPmesacancelada;
    procedure SetModel(const Value: TModelERPmesacancelada); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesacancelada>);

  public 
    property Model : TModelERPmesacancelada read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesacancelada> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesacancelada.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesacancelada>.Create;  
  Self.FModelList.Add(TModelERPmesacancelada.Create); 
  Self.FModel           := TModelERPmesacancelada.Create; 
  Self.FDal             := TDalERPmesacancelada.Create( Param, True ); 
end; 

procedure TControllerERPmesacancelada.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesacancelada.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesacancelada.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesacancelada.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesacancelada.SetModel(  
  const Value: TModelERPmesacancelada); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesacancelada.SetModelList(  
  const Value: TModelBaseList<TModelERPmesacancelada>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesacancelada.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesacancelada.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

