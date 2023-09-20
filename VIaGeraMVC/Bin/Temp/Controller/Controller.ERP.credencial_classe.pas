
unit Controller.ERP.credencial_anual;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcredencialanual = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcredencialanual;
    FModelList: TModelBaseList<TModelERPcredencialanual>; 
    FModel: TModelERPcredencialanual;
    procedure SetModel(const Value: TModelERPcredencialanual); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcredencialanual>);

  public 
    property Model : TModelERPcredencialanual read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcredencialanual> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcredencialanual.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcredencialanual>.Create;  
  Self.FModelList.Add(TModelERPcredencialanual.Create); 
  Self.FModel           := TModelERPcredencialanual.Create; 
  Self.FDal             := TDalERPcredencialanual.Create( Param, True ); 
end; 

procedure TControllerERPcredencialanual.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcredencialanual.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcredencialanual.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcredencialanual.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcredencialanual.SetModel(  
  const Value: TModelERPcredencialanual); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcredencialanual.SetModelList(  
  const Value: TModelBaseList<TModelERPcredencialanual>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcredencialanual.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcredencialanual.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

