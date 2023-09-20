
unit Controller.ERP.conta_receber;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceber = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceber;
    FModelList: TModelBaseList<TModelERPcontareceber>; 
    FModel: TModelERPcontareceber;
    procedure SetModel(const Value: TModelERPcontareceber); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceber>);

  public 
    property Model : TModelERPcontareceber read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceber> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceber.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceber>.Create;  
  Self.FModelList.Add(TModelERPcontareceber.Create); 
  Self.FModel           := TModelERPcontareceber.Create; 
  Self.FDal             := TDalERPcontareceber.Create( Param, True ); 
end; 

procedure TControllerERPcontareceber.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceber.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceber.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceber.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceber.SetModel(  
  const Value: TModelERPcontareceber); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceber.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceber>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceber.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceber.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

