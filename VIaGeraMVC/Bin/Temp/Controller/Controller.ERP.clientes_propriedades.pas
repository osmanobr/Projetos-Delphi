
unit Controller.ERP.clientes_obras;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesobras = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesobras;
    FModelList: TModelBaseList<TModelERPclientesobras>; 
    FModel: TModelERPclientesobras;
    procedure SetModel(const Value: TModelERPclientesobras); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesobras>);

  public 
    property Model : TModelERPclientesobras read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesobras> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesobras.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesobras>.Create;  
  Self.FModelList.Add(TModelERPclientesobras.Create); 
  Self.FModel           := TModelERPclientesobras.Create; 
  Self.FDal             := TDalERPclientesobras.Create( Param, True ); 
end; 

procedure TControllerERPclientesobras.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesobras.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesobras.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesobras.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesobras.SetModel(  
  const Value: TModelERPclientesobras); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesobras.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesobras>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesobras.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesobras.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

