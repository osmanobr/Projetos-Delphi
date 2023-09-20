
unit Controller.ERP.nfe_manifesto_eventos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnfemanifestoeventos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnfemanifestoeventos;
    FModelList: TModelBaseList<TModelERPnfemanifestoeventos>; 
    FModel: TModelERPnfemanifestoeventos;
    procedure SetModel(const Value: TModelERPnfemanifestoeventos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnfemanifestoeventos>);

  public 
    property Model : TModelERPnfemanifestoeventos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnfemanifestoeventos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnfemanifestoeventos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnfemanifestoeventos>.Create;  
  Self.FModelList.Add(TModelERPnfemanifestoeventos.Create); 
  Self.FModel           := TModelERPnfemanifestoeventos.Create; 
  Self.FDal             := TDalERPnfemanifestoeventos.Create( Param, True ); 
end; 

procedure TControllerERPnfemanifestoeventos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnfemanifestoeventos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnfemanifestoeventos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnfemanifestoeventos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnfemanifestoeventos.SetModel(  
  const Value: TModelERPnfemanifestoeventos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnfemanifestoeventos.SetModelList(  
  const Value: TModelBaseList<TModelERPnfemanifestoeventos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnfemanifestoeventos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnfemanifestoeventos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

