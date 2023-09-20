
unit Controller.ERP.agro_diagnostico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPagrodiagnostico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPagrodiagnostico;
    FModelList: TModelBaseList<TModelERPagrodiagnostico>; 
    FModel: TModelERPagrodiagnostico;
    procedure SetModel(const Value: TModelERPagrodiagnostico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPagrodiagnostico>);

  public 
    property Model : TModelERPagrodiagnostico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPagrodiagnostico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPagrodiagnostico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPagrodiagnostico>.Create;  
  Self.FModelList.Add(TModelERPagrodiagnostico.Create); 
  Self.FModel           := TModelERPagrodiagnostico.Create; 
  Self.FDal             := TDalERPagrodiagnostico.Create( Param, True ); 
end; 

procedure TControllerERPagrodiagnostico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPagrodiagnostico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPagrodiagnostico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPagrodiagnostico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPagrodiagnostico.SetModel(  
  const Value: TModelERPagrodiagnostico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPagrodiagnostico.SetModelList(  
  const Value: TModelBaseList<TModelERPagrodiagnostico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPagrodiagnostico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPagrodiagnostico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

