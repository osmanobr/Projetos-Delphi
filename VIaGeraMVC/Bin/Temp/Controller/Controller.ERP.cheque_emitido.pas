
unit Controller.ERP.change_log;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchangelog = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchangelog;
    FModelList: TModelBaseList<TModelERPchangelog>; 
    FModel: TModelERPchangelog;
    procedure SetModel(const Value: TModelERPchangelog); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchangelog>);

  public 
    property Model : TModelERPchangelog read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchangelog> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchangelog.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchangelog>.Create;  
  Self.FModelList.Add(TModelERPchangelog.Create); 
  Self.FModel           := TModelERPchangelog.Create; 
  Self.FDal             := TDalERPchangelog.Create( Param, True ); 
end; 

procedure TControllerERPchangelog.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchangelog.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchangelog.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchangelog.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchangelog.SetModel(  
  const Value: TModelERPchangelog); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchangelog.SetModelList(  
  const Value: TModelBaseList<TModelERPchangelog>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchangelog.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchangelog.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

