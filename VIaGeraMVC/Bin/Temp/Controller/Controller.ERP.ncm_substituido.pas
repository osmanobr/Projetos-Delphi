
unit Controller.ERP.ncm_historico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPncmhistorico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPncmhistorico;
    FModelList: TModelBaseList<TModelERPncmhistorico>; 
    FModel: TModelERPncmhistorico;
    procedure SetModel(const Value: TModelERPncmhistorico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPncmhistorico>);

  public 
    property Model : TModelERPncmhistorico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPncmhistorico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPncmhistorico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPncmhistorico>.Create;  
  Self.FModelList.Add(TModelERPncmhistorico.Create); 
  Self.FModel           := TModelERPncmhistorico.Create; 
  Self.FDal             := TDalERPncmhistorico.Create( Param, True ); 
end; 

procedure TControllerERPncmhistorico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPncmhistorico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPncmhistorico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPncmhistorico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPncmhistorico.SetModel(  
  const Value: TModelERPncmhistorico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPncmhistorico.SetModelList(  
  const Value: TModelBaseList<TModelERPncmhistorico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPncmhistorico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPncmhistorico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

