
unit Controller.ERP.backup;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbackup = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbackup;
    FModelList: TModelBaseList<TModelERPbackup>; 
    FModel: TModelERPbackup;
    procedure SetModel(const Value: TModelERPbackup); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbackup>);

  public 
    property Model : TModelERPbackup read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbackup> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbackup.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbackup>.Create;  
  Self.FModelList.Add(TModelERPbackup.Create); 
  Self.FModel           := TModelERPbackup.Create; 
  Self.FDal             := TDalERPbackup.Create( Param, True ); 
end; 

procedure TControllerERPbackup.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbackup.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbackup.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbackup.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbackup.SetModel(  
  const Value: TModelERPbackup); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbackup.SetModelList(  
  const Value: TModelBaseList<TModelERPbackup>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbackup.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbackup.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

