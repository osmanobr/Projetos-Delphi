
unit Controller.ERP.leitura_valores;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituravalores = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituravalores;
    FModelList: TModelBaseList<TModelERPleituravalores>; 
    FModel: TModelERPleituravalores;
    procedure SetModel(const Value: TModelERPleituravalores); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituravalores>);

  public 
    property Model : TModelERPleituravalores read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituravalores> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituravalores.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituravalores>.Create;  
  Self.FModelList.Add(TModelERPleituravalores.Create); 
  Self.FModel           := TModelERPleituravalores.Create; 
  Self.FDal             := TDalERPleituravalores.Create( Param, True ); 
end; 

procedure TControllerERPleituravalores.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituravalores.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituravalores.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituravalores.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituravalores.SetModel(  
  const Value: TModelERPleituravalores); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituravalores.SetModelList(  
  const Value: TModelBaseList<TModelERPleituravalores>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituravalores.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituravalores.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

