
unit Controller.ERP.import_kit;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimportkit = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimportkit;
    FModelList: TModelBaseList<TModelERPimportkit>; 
    FModel: TModelERPimportkit;
    procedure SetModel(const Value: TModelERPimportkit); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimportkit>);

  public 
    property Model : TModelERPimportkit read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimportkit> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimportkit.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimportkit>.Create;  
  Self.FModelList.Add(TModelERPimportkit.Create); 
  Self.FModel           := TModelERPimportkit.Create; 
  Self.FDal             := TDalERPimportkit.Create( Param, True ); 
end; 

procedure TControllerERPimportkit.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimportkit.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimportkit.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimportkit.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimportkit.SetModel(  
  const Value: TModelERPimportkit); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimportkit.SetModelList(  
  const Value: TModelBaseList<TModelERPimportkit>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimportkit.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimportkit.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

