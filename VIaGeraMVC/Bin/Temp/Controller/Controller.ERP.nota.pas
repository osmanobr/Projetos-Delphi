
unit Controller.ERP.nfe_manifesto_nsu;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnfemanifestonsu = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnfemanifestonsu;
    FModelList: TModelBaseList<TModelERPnfemanifestonsu>; 
    FModel: TModelERPnfemanifestonsu;
    procedure SetModel(const Value: TModelERPnfemanifestonsu); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnfemanifestonsu>);

  public 
    property Model : TModelERPnfemanifestonsu read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnfemanifestonsu> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnfemanifestonsu.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnfemanifestonsu>.Create;  
  Self.FModelList.Add(TModelERPnfemanifestonsu.Create); 
  Self.FModel           := TModelERPnfemanifestonsu.Create; 
  Self.FDal             := TDalERPnfemanifestonsu.Create( Param, True ); 
end; 

procedure TControllerERPnfemanifestonsu.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnfemanifestonsu.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnfemanifestonsu.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnfemanifestonsu.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnfemanifestonsu.SetModel(  
  const Value: TModelERPnfemanifestonsu); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnfemanifestonsu.SetModelList(  
  const Value: TModelBaseList<TModelERPnfemanifestonsu>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnfemanifestonsu.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnfemanifestonsu.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

