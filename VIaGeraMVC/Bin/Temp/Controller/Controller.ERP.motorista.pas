
unit Controller.ERP.monitor_repair;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmonitorrepair = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmonitorrepair;
    FModelList: TModelBaseList<TModelERPmonitorrepair>; 
    FModel: TModelERPmonitorrepair;
    procedure SetModel(const Value: TModelERPmonitorrepair); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmonitorrepair>);

  public 
    property Model : TModelERPmonitorrepair read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmonitorrepair> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmonitorrepair.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmonitorrepair>.Create;  
  Self.FModelList.Add(TModelERPmonitorrepair.Create); 
  Self.FModel           := TModelERPmonitorrepair.Create; 
  Self.FDal             := TDalERPmonitorrepair.Create( Param, True ); 
end; 

procedure TControllerERPmonitorrepair.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmonitorrepair.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmonitorrepair.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmonitorrepair.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmonitorrepair.SetModel(  
  const Value: TModelERPmonitorrepair); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmonitorrepair.SetModelList(  
  const Value: TModelBaseList<TModelERPmonitorrepair>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmonitorrepair.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmonitorrepair.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

