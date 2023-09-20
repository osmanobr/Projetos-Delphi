
unit Controller.ERP.clientes_fotos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientesfotos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientesfotos;
    FModelList: TModelBaseList<TModelERPclientesfotos>; 
    FModel: TModelERPclientesfotos;
    procedure SetModel(const Value: TModelERPclientesfotos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientesfotos>);

  public 
    property Model : TModelERPclientesfotos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientesfotos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientesfotos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientesfotos>.Create;  
  Self.FModelList.Add(TModelERPclientesfotos.Create); 
  Self.FModel           := TModelERPclientesfotos.Create; 
  Self.FDal             := TDalERPclientesfotos.Create( Param, True ); 
end; 

procedure TControllerERPclientesfotos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientesfotos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientesfotos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientesfotos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientesfotos.SetModel(  
  const Value: TModelERPclientesfotos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientesfotos.SetModelList(  
  const Value: TModelBaseList<TModelERPclientesfotos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientesfotos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientesfotos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

