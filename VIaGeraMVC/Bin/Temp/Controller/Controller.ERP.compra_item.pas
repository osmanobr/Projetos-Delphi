
unit Controller.ERP.compra_grade;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcompragrade = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcompragrade;
    FModelList: TModelBaseList<TModelERPcompragrade>; 
    FModel: TModelERPcompragrade;
    procedure SetModel(const Value: TModelERPcompragrade); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcompragrade>);

  public 
    property Model : TModelERPcompragrade read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcompragrade> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcompragrade.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcompragrade>.Create;  
  Self.FModelList.Add(TModelERPcompragrade.Create); 
  Self.FModel           := TModelERPcompragrade.Create; 
  Self.FDal             := TDalERPcompragrade.Create( Param, True ); 
end; 

procedure TControllerERPcompragrade.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcompragrade.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcompragrade.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcompragrade.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcompragrade.SetModel(  
  const Value: TModelERPcompragrade); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcompragrade.SetModelList(  
  const Value: TModelBaseList<TModelERPcompragrade>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcompragrade.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcompragrade.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

