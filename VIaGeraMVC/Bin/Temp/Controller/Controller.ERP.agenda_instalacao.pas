
unit Controller.ERP.agenda_carga;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPagendacarga = class(TControllerBase, IController) 
  private 
    FDal : TViewERPagendacarga;
    FModelList: TModelBaseList<TModelERPagendacarga>; 
    FModel: TModelERPagendacarga;
    procedure SetModel(const Value: TModelERPagendacarga); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPagendacarga>);

  public 
    property Model : TModelERPagendacarga read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPagendacarga> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPagendacarga.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPagendacarga>.Create;  
  Self.FModelList.Add(TModelERPagendacarga.Create); 
  Self.FModel           := TModelERPagendacarga.Create; 
  Self.FDal             := TDalERPagendacarga.Create( Param, True ); 
end; 

procedure TControllerERPagendacarga.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPagendacarga.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPagendacarga.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPagendacarga.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPagendacarga.SetModel(  
  const Value: TModelERPagendacarga); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPagendacarga.SetModelList(  
  const Value: TModelBaseList<TModelERPagendacarga>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPagendacarga.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPagendacarga.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

