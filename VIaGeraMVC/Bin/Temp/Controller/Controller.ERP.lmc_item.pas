
unit Controller.ERP.lmc;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPlmc = class(TControllerBase, IController) 
  private 
    FDal : TViewERPlmc;
    FModelList: TModelBaseList<TModelERPlmc>; 
    FModel: TModelERPlmc;
    procedure SetModel(const Value: TModelERPlmc); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPlmc>);

  public 
    property Model : TModelERPlmc read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPlmc> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPlmc.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPlmc>.Create;  
  Self.FModelList.Add(TModelERPlmc.Create); 
  Self.FModel           := TModelERPlmc.Create; 
  Self.FDal             := TDalERPlmc.Create( Param, True ); 
end; 

procedure TControllerERPlmc.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPlmc.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPlmc.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPlmc.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPlmc.SetModel(  
  const Value: TModelERPlmc); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPlmc.SetModelList(  
  const Value: TModelBaseList<TModelERPlmc>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPlmc.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPlmc.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

