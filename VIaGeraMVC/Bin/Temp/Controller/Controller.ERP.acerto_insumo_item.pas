
unit Controller.ERP.acerto_insumo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacertoinsumo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacertoinsumo;
    FModelList: TModelBaseList<TModelERPacertoinsumo>; 
    FModel: TModelERPacertoinsumo;
    procedure SetModel(const Value: TModelERPacertoinsumo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacertoinsumo>);

  public 
    property Model : TModelERPacertoinsumo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacertoinsumo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacertoinsumo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacertoinsumo>.Create;  
  Self.FModelList.Add(TModelERPacertoinsumo.Create); 
  Self.FModel           := TModelERPacertoinsumo.Create; 
  Self.FDal             := TDalERPacertoinsumo.Create( Param, True ); 
end; 

procedure TControllerERPacertoinsumo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacertoinsumo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacertoinsumo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacertoinsumo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacertoinsumo.SetModel(  
  const Value: TModelERPacertoinsumo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacertoinsumo.SetModelList(  
  const Value: TModelBaseList<TModelERPacertoinsumo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacertoinsumo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacertoinsumo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

