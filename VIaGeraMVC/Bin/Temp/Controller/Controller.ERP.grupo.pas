
unit Controller.ERP.grade;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPgrade = class(TControllerBase, IController) 
  private 
    FDal : TViewERPgrade;
    FModelList: TModelBaseList<TModelERPgrade>; 
    FModel: TModelERPgrade;
    procedure SetModel(const Value: TModelERPgrade); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPgrade>);

  public 
    property Model : TModelERPgrade read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPgrade> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPgrade.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPgrade>.Create;  
  Self.FModelList.Add(TModelERPgrade.Create); 
  Self.FModel           := TModelERPgrade.Create; 
  Self.FDal             := TDalERPgrade.Create( Param, True ); 
end; 

procedure TControllerERPgrade.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPgrade.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPgrade.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPgrade.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPgrade.SetModel(  
  const Value: TModelERPgrade); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPgrade.SetModelList(  
  const Value: TModelBaseList<TModelERPgrade>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPgrade.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPgrade.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

