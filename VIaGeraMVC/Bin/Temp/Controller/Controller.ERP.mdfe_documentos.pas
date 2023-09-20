
unit Controller.ERP.maquinas_agricolas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmaquinasagricolas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmaquinasagricolas;
    FModelList: TModelBaseList<TModelERPmaquinasagricolas>; 
    FModel: TModelERPmaquinasagricolas;
    procedure SetModel(const Value: TModelERPmaquinasagricolas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmaquinasagricolas>);

  public 
    property Model : TModelERPmaquinasagricolas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmaquinasagricolas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmaquinasagricolas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmaquinasagricolas>.Create;  
  Self.FModelList.Add(TModelERPmaquinasagricolas.Create); 
  Self.FModel           := TModelERPmaquinasagricolas.Create; 
  Self.FDal             := TDalERPmaquinasagricolas.Create( Param, True ); 
end; 

procedure TControllerERPmaquinasagricolas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmaquinasagricolas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmaquinasagricolas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmaquinasagricolas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmaquinasagricolas.SetModel(  
  const Value: TModelERPmaquinasagricolas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmaquinasagricolas.SetModelList(  
  const Value: TModelBaseList<TModelERPmaquinasagricolas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmaquinasagricolas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmaquinasagricolas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

