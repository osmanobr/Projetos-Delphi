
unit Controller.ERP.parcela_receber;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPparcelareceber = class(TControllerBase, IController) 
  private 
    FDal : TViewERPparcelareceber;
    FModelList: TModelBaseList<TModelERPparcelareceber>; 
    FModel: TModelERPparcelareceber;
    procedure SetModel(const Value: TModelERPparcelareceber); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPparcelareceber>);

  public 
    property Model : TModelERPparcelareceber read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPparcelareceber> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPparcelareceber.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPparcelareceber>.Create;  
  Self.FModelList.Add(TModelERPparcelareceber.Create); 
  Self.FModel           := TModelERPparcelareceber.Create; 
  Self.FDal             := TDalERPparcelareceber.Create( Param, True ); 
end; 

procedure TControllerERPparcelareceber.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPparcelareceber.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPparcelareceber.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPparcelareceber.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPparcelareceber.SetModel(  
  const Value: TModelERPparcelareceber); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPparcelareceber.SetModelList(  
  const Value: TModelBaseList<TModelERPparcelareceber>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPparcelareceber.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPparcelareceber.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

