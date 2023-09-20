
unit Controller.ERP.parcela_pagar;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPparcelapagar = class(TControllerBase, IController) 
  private 
    FDal : TViewERPparcelapagar;
    FModelList: TModelBaseList<TModelERPparcelapagar>; 
    FModel: TModelERPparcelapagar;
    procedure SetModel(const Value: TModelERPparcelapagar); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPparcelapagar>);

  public 
    property Model : TModelERPparcelapagar read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPparcelapagar> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPparcelapagar.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPparcelapagar>.Create;  
  Self.FModelList.Add(TModelERPparcelapagar.Create); 
  Self.FModel           := TModelERPparcelapagar.Create; 
  Self.FDal             := TDalERPparcelapagar.Create( Param, True ); 
end; 

procedure TControllerERPparcelapagar.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPparcelapagar.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPparcelapagar.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPparcelapagar.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPparcelapagar.SetModel(  
  const Value: TModelERPparcelapagar); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPparcelapagar.SetModelList(  
  const Value: TModelBaseList<TModelERPparcelapagar>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPparcelapagar.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPparcelapagar.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

