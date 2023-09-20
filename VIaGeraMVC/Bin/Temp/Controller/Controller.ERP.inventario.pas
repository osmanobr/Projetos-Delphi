
unit Controller.ERP.inutilizacao_nfce_nfe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinutilizacaonfcenfe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinutilizacaonfcenfe;
    FModelList: TModelBaseList<TModelERPinutilizacaonfcenfe>; 
    FModel: TModelERPinutilizacaonfcenfe;
    procedure SetModel(const Value: TModelERPinutilizacaonfcenfe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinutilizacaonfcenfe>);

  public 
    property Model : TModelERPinutilizacaonfcenfe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinutilizacaonfcenfe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinutilizacaonfcenfe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinutilizacaonfcenfe>.Create;  
  Self.FModelList.Add(TModelERPinutilizacaonfcenfe.Create); 
  Self.FModel           := TModelERPinutilizacaonfcenfe.Create; 
  Self.FDal             := TDalERPinutilizacaonfcenfe.Create( Param, True ); 
end; 

procedure TControllerERPinutilizacaonfcenfe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinutilizacaonfcenfe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinutilizacaonfcenfe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinutilizacaonfcenfe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinutilizacaonfcenfe.SetModel(  
  const Value: TModelERPinutilizacaonfcenfe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinutilizacaonfcenfe.SetModelList(  
  const Value: TModelBaseList<TModelERPinutilizacaonfcenfe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinutilizacaonfcenfe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinutilizacaonfcenfe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

