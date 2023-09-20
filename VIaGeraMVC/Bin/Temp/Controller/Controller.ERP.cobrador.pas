
unit Controller.ERP.clientes_spc;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesspc = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesspc;
    FModelList: TModelBaseList<TModelERPclientesspc>; 
    FModel: TModelERPclientesspc;
    procedure SetModel(const Value: TModelERPclientesspc); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesspc>);

  public 
    property Model : TModelERPclientesspc read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesspc> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesspc.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesspc>.Create;  
  Self.FModelList.Add(TModelERPclientesspc.Create); 
  Self.FModel           := TModelERPclientesspc.Create; 
  Self.FDal             := TDalERPclientesspc.Create( Param, True ); 
end; 

procedure TControllerERPclientesspc.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesspc.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesspc.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesspc.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesspc.SetModel(  
  const Value: TModelERPclientesspc); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesspc.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesspc>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesspc.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesspc.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

