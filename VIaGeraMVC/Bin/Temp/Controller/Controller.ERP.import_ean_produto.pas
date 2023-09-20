
unit Controller.ERP.import_deploy;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportdeploy = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportdeploy;
    FModelList: TModelBaseList<TModelERPimportdeploy>; 
    FModel: TModelERPimportdeploy;
    procedure SetModel(const Value: TModelERPimportdeploy); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportdeploy>);

  public 
    property Model : TModelERPimportdeploy read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportdeploy> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportdeploy.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportdeploy>.Create;  
  Self.FModelList.Add(TModelERPimportdeploy.Create); 
  Self.FModel           := TModelERPimportdeploy.Create; 
  Self.FDal             := TDalERPimportdeploy.Create( Param, True ); 
end; 

procedure TControllerERPimportdeploy.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportdeploy.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportdeploy.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportdeploy.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportdeploy.SetModel(  
  const Value: TModelERPimportdeploy); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportdeploy.SetModelList(  
  const Value: TModelBaseList<TModelERPimportdeploy>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportdeploy.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportdeploy.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

