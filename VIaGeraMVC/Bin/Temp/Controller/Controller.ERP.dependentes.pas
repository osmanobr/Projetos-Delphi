
unit Controller.ERP.dependente_emergencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdependenteemergencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdependenteemergencia;
    FModelList: TModelBaseList<TModelERPdependenteemergencia>; 
    FModel: TModelERPdependenteemergencia;
    procedure SetModel(const Value: TModelERPdependenteemergencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdependenteemergencia>);

  public 
    property Model : TModelERPdependenteemergencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdependenteemergencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdependenteemergencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdependenteemergencia>.Create;  
  Self.FModelList.Add(TModelERPdependenteemergencia.Create); 
  Self.FModel           := TModelERPdependenteemergencia.Create; 
  Self.FDal             := TDalERPdependenteemergencia.Create( Param, True ); 
end; 

procedure TControllerERPdependenteemergencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdependenteemergencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdependenteemergencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdependenteemergencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdependenteemergencia.SetModel(  
  const Value: TModelERPdependenteemergencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdependenteemergencia.SetModelList(  
  const Value: TModelBaseList<TModelERPdependenteemergencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdependenteemergencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdependenteemergencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

