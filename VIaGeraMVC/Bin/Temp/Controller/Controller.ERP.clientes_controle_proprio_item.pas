
unit Controller.ERP.clientes_alterados;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesalterados = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesalterados;
    FModelList: TModelBaseList<TModelERPclientesalterados>; 
    FModel: TModelERPclientesalterados;
    procedure SetModel(const Value: TModelERPclientesalterados); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesalterados>);

  public 
    property Model : TModelERPclientesalterados read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesalterados> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesalterados.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesalterados>.Create;  
  Self.FModelList.Add(TModelERPclientesalterados.Create); 
  Self.FModel           := TModelERPclientesalterados.Create; 
  Self.FDal             := TDalERPclientesalterados.Create( Param, True ); 
end; 

procedure TControllerERPclientesalterados.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesalterados.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesalterados.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesalterados.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesalterados.SetModel(  
  const Value: TModelERPclientesalterados); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesalterados.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesalterados>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesalterados.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesalterados.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

