
unit Controller.ERP.updatescript;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPupdatescript = class(TControllerBase, IController) 
  private 
    FDal : TViewERPupdatescript;
    FModelList: TModelBaseList<TModelERPupdatescript>; 
    FModel: TModelERPupdatescript;
    procedure SetModel(const Value: TModelERPupdatescript); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPupdatescript>);

  public 
    property Model : TModelERPupdatescript read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPupdatescript> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPupdatescript.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPupdatescript>.Create;  
  Self.FModelList.Add(TModelERPupdatescript.Create); 
  Self.FModel           := TModelERPupdatescript.Create; 
  Self.FDal             := TDalERPupdatescript.Create( Param, True ); 
end; 

procedure TControllerERPupdatescript.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPupdatescript.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPupdatescript.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPupdatescript.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPupdatescript.SetModel(  
  const Value: TModelERPupdatescript); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPupdatescript.SetModelList(  
  const Value: TModelBaseList<TModelERPupdatescript>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPupdatescript.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPupdatescript.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

