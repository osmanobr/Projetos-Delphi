
unit Controller.ERP.mapa_resumo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmaparesumo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmaparesumo;
    FModelList: TModelBaseList<TModelERPmaparesumo>; 
    FModel: TModelERPmaparesumo;
    procedure SetModel(const Value: TModelERPmaparesumo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmaparesumo>);

  public 
    property Model : TModelERPmaparesumo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmaparesumo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmaparesumo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmaparesumo>.Create;  
  Self.FModelList.Add(TModelERPmaparesumo.Create); 
  Self.FModel           := TModelERPmaparesumo.Create; 
  Self.FDal             := TDalERPmaparesumo.Create( Param, True ); 
end; 

procedure TControllerERPmaparesumo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmaparesumo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmaparesumo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmaparesumo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmaparesumo.SetModel(  
  const Value: TModelERPmaparesumo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmaparesumo.SetModelList(  
  const Value: TModelBaseList<TModelERPmaparesumo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmaparesumo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmaparesumo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

