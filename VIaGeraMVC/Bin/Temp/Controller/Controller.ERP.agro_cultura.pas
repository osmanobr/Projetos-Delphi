
unit Controller.ERP.agenda_instalacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPagendainstalacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPagendainstalacao;
    FModelList: TModelBaseList<TModelERPagendainstalacao>; 
    FModel: TModelERPagendainstalacao;
    procedure SetModel(const Value: TModelERPagendainstalacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPagendainstalacao>);

  public 
    property Model : TModelERPagendainstalacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPagendainstalacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPagendainstalacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPagendainstalacao>.Create;  
  Self.FModelList.Add(TModelERPagendainstalacao.Create); 
  Self.FModel           := TModelERPagendainstalacao.Create; 
  Self.FDal             := TDalERPagendainstalacao.Create( Param, True ); 
end; 

procedure TControllerERPagendainstalacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPagendainstalacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPagendainstalacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPagendainstalacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPagendainstalacao.SetModel(  
  const Value: TModelERPagendainstalacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPagendainstalacao.SetModelList(  
  const Value: TModelBaseList<TModelERPagendainstalacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPagendainstalacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPagendainstalacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

