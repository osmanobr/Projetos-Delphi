
unit Controller.ERP.cliente_controle_proprio;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientecontroleproprio = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientecontroleproprio;
    FModelList: TModelBaseList<TModelERPclientecontroleproprio>; 
    FModel: TModelERPclientecontroleproprio;
    procedure SetModel(const Value: TModelERPclientecontroleproprio); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientecontroleproprio>);

  public 
    property Model : TModelERPclientecontroleproprio read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientecontroleproprio> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientecontroleproprio.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientecontroleproprio>.Create;  
  Self.FModelList.Add(TModelERPclientecontroleproprio.Create); 
  Self.FModel           := TModelERPclientecontroleproprio.Create; 
  Self.FDal             := TDalERPclientecontroleproprio.Create( Param, True ); 
end; 

procedure TControllerERPclientecontroleproprio.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientecontroleproprio.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientecontroleproprio.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientecontroleproprio.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientecontroleproprio.SetModel(  
  const Value: TModelERPclientecontroleproprio); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientecontroleproprio.SetModelList(  
  const Value: TModelBaseList<TModelERPclientecontroleproprio>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientecontroleproprio.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientecontroleproprio.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

