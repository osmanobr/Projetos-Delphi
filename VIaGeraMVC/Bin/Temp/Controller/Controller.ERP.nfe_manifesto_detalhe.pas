
unit Controller.ERP.nfe_manifesto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnfemanifesto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnfemanifesto;
    FModelList: TModelBaseList<TModelERPnfemanifesto>; 
    FModel: TModelERPnfemanifesto;
    procedure SetModel(const Value: TModelERPnfemanifesto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnfemanifesto>);

  public 
    property Model : TModelERPnfemanifesto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnfemanifesto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnfemanifesto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnfemanifesto>.Create;  
  Self.FModelList.Add(TModelERPnfemanifesto.Create); 
  Self.FModel           := TModelERPnfemanifesto.Create; 
  Self.FDal             := TDalERPnfemanifesto.Create( Param, True ); 
end; 

procedure TControllerERPnfemanifesto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnfemanifesto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnfemanifesto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnfemanifesto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnfemanifesto.SetModel(  
  const Value: TModelERPnfemanifesto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnfemanifesto.SetModelList(  
  const Value: TModelBaseList<TModelERPnfemanifesto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnfemanifesto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnfemanifesto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

