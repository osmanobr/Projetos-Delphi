
unit Controller.ERP.clientes_coringa;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientescoringa = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientescoringa;
    FModelList: TModelBaseList<TModelERPclientescoringa>; 
    FModel: TModelERPclientescoringa;
    procedure SetModel(const Value: TModelERPclientescoringa); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientescoringa>);

  public 
    property Model : TModelERPclientescoringa read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientescoringa> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientescoringa.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientescoringa>.Create;  
  Self.FModelList.Add(TModelERPclientescoringa.Create); 
  Self.FModel           := TModelERPclientescoringa.Create; 
  Self.FDal             := TDalERPclientescoringa.Create( Param, True ); 
end; 

procedure TControllerERPclientescoringa.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientescoringa.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientescoringa.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientescoringa.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientescoringa.SetModel(  
  const Value: TModelERPclientescoringa); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientescoringa.SetModelList(  
  const Value: TModelBaseList<TModelERPclientescoringa>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientescoringa.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientescoringa.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

