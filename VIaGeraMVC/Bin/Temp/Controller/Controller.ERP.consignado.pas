
unit Controller.ERP.compra_serie;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcompraserie = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcompraserie;
    FModelList: TModelBaseList<TModelERPcompraserie>; 
    FModel: TModelERPcompraserie;
    procedure SetModel(const Value: TModelERPcompraserie); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcompraserie>);

  public 
    property Model : TModelERPcompraserie read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcompraserie> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcompraserie.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcompraserie>.Create;  
  Self.FModelList.Add(TModelERPcompraserie.Create); 
  Self.FModel           := TModelERPcompraserie.Create; 
  Self.FDal             := TDalERPcompraserie.Create( Param, True ); 
end; 

procedure TControllerERPcompraserie.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcompraserie.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcompraserie.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcompraserie.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcompraserie.SetModel(  
  const Value: TModelERPcompraserie); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcompraserie.SetModelList(  
  const Value: TModelBaseList<TModelERPcompraserie>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcompraserie.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcompraserie.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

