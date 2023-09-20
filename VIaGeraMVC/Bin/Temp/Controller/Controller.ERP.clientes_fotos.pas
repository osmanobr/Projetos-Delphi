
unit Controller.ERP.clientes_documentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesdocumentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesdocumentos;
    FModelList: TModelBaseList<TModelERPclientesdocumentos>; 
    FModel: TModelERPclientesdocumentos;
    procedure SetModel(const Value: TModelERPclientesdocumentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesdocumentos>);

  public 
    property Model : TModelERPclientesdocumentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesdocumentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesdocumentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesdocumentos>.Create;  
  Self.FModelList.Add(TModelERPclientesdocumentos.Create); 
  Self.FModel           := TModelERPclientesdocumentos.Create; 
  Self.FDal             := TDalERPclientesdocumentos.Create( Param, True ); 
end; 

procedure TControllerERPclientesdocumentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesdocumentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesdocumentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesdocumentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesdocumentos.SetModel(  
  const Value: TModelERPclientesdocumentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesdocumentos.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesdocumentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesdocumentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesdocumentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

