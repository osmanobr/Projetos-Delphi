
unit Controller.ERP.desdobramento_conta;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdesdobramentoconta = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdesdobramentoconta;
    FModelList: TModelBaseList<TModelERPdesdobramentoconta>; 
    FModel: TModelERPdesdobramentoconta;
    procedure SetModel(const Value: TModelERPdesdobramentoconta); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdesdobramentoconta>);

  public 
    property Model : TModelERPdesdobramentoconta read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdesdobramentoconta> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdesdobramentoconta.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdesdobramentoconta>.Create;  
  Self.FModelList.Add(TModelERPdesdobramentoconta.Create); 
  Self.FModel           := TModelERPdesdobramentoconta.Create; 
  Self.FDal             := TDalERPdesdobramentoconta.Create( Param, True ); 
end; 

procedure TControllerERPdesdobramentoconta.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdesdobramentoconta.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdesdobramentoconta.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdesdobramentoconta.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdesdobramentoconta.SetModel(  
  const Value: TModelERPdesdobramentoconta); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdesdobramentoconta.SetModelList(  
  const Value: TModelBaseList<TModelERPdesdobramentoconta>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdesdobramentoconta.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdesdobramentoconta.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

