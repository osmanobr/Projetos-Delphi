
unit Controller.ERP.acerto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacerto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacerto;
    FModelList: TModelBaseList<TModelERPacerto>; 
    FModel: TModelERPacerto;
    procedure SetModel(const Value: TModelERPacerto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacerto>);

  public 
    property Model : TModelERPacerto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacerto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacerto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacerto>.Create;  
  Self.FModelList.Add(TModelERPacerto.Create); 
  Self.FModel           := TModelERPacerto.Create; 
  Self.FDal             := TDalERPacerto.Create( Param, True ); 
end; 

procedure TControllerERPacerto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacerto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacerto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacerto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacerto.SetModel(  
  const Value: TModelERPacerto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacerto.SetModelList(  
  const Value: TModelBaseList<TModelERPacerto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacerto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacerto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

