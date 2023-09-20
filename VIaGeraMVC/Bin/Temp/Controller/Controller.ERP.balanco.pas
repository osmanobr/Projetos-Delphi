
unit Controller.ERP.backup_compress;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbackupcompress = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbackupcompress;
    FModelList: TModelBaseList<TModelERPbackupcompress>; 
    FModel: TModelERPbackupcompress;
    procedure SetModel(const Value: TModelERPbackupcompress); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbackupcompress>);

  public 
    property Model : TModelERPbackupcompress read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbackupcompress> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbackupcompress.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbackupcompress>.Create;  
  Self.FModelList.Add(TModelERPbackupcompress.Create); 
  Self.FModel           := TModelERPbackupcompress.Create; 
  Self.FDal             := TDalERPbackupcompress.Create( Param, True ); 
end; 

procedure TControllerERPbackupcompress.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbackupcompress.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbackupcompress.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbackupcompress.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbackupcompress.SetModel(  
  const Value: TModelERPbackupcompress); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbackupcompress.SetModelList(  
  const Value: TModelBaseList<TModelERPbackupcompress>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbackupcompress.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbackupcompress.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

