
unit Controller.ERP.controle_envio_email_anexo;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontroleenvioemailanexo = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontroleenvioemailanexo;
    FModelList: TModelBaseList<TModelERPcontroleenvioemailanexo>; 
    FModel: TModelERPcontroleenvioemailanexo;
    procedure SetModel(const Value: TModelERPcontroleenvioemailanexo); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontroleenvioemailanexo>);

  public 
    property Model : TModelERPcontroleenvioemailanexo read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontroleenvioemailanexo> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontroleenvioemailanexo.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontroleenvioemailanexo>.Create;  
  Self.FModelList.Add(TModelERPcontroleenvioemailanexo.Create); 
  Self.FModel           := TModelERPcontroleenvioemailanexo.Create; 
  Self.FDal             := TDalERPcontroleenvioemailanexo.Create( Param, True ); 
end; 

procedure TControllerERPcontroleenvioemailanexo.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontroleenvioemailanexo.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontroleenvioemailanexo.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontroleenvioemailanexo.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontroleenvioemailanexo.SetModel(  
  const Value: TModelERPcontroleenvioemailanexo); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontroleenvioemailanexo.SetModelList(  
  const Value: TModelBaseList<TModelERPcontroleenvioemailanexo>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontroleenvioemailanexo.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontroleenvioemailanexo.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

