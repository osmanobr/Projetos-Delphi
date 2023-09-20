
unit Controller.ERP.bombas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbombas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbombas;
    FModelList: TModelBaseList<TModelERPbombas>; 
    FModel: TModelERPbombas;
    procedure SetModel(const Value: TModelERPbombas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbombas>);

  public 
    property Model : TModelERPbombas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbombas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbombas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbombas>.Create;  
  Self.FModelList.Add(TModelERPbombas.Create); 
  Self.FModel           := TModelERPbombas.Create; 
  Self.FDal             := TDalERPbombas.Create( Param, True ); 
end; 

procedure TControllerERPbombas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbombas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbombas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbombas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbombas.SetModel(  
  const Value: TModelERPbombas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbombas.SetModelList(  
  const Value: TModelBaseList<TModelERPbombas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbombas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbombas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

