
unit Controller.ERP.monitor_nf;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmonitornf = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmonitornf;
    FModelList: TModelBaseList<TModelERPmonitornf>; 
    FModel: TModelERPmonitornf;
    procedure SetModel(const Value: TModelERPmonitornf); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmonitornf>);

  public 
    property Model : TModelERPmonitornf read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmonitornf> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmonitornf.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmonitornf>.Create;  
  Self.FModelList.Add(TModelERPmonitornf.Create); 
  Self.FModel           := TModelERPmonitornf.Create; 
  Self.FDal             := TDalERPmonitornf.Create( Param, True ); 
end; 

procedure TControllerERPmonitornf.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmonitornf.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmonitornf.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmonitornf.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmonitornf.SetModel(  
  const Value: TModelERPmonitornf); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmonitornf.SetModelList(  
  const Value: TModelBaseList<TModelERPmonitornf>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmonitornf.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmonitornf.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

