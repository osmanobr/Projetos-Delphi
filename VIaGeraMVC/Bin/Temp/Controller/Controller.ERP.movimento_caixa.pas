
unit Controller.ERP.movimento_banco;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentobanco = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentobanco;
    FModelList: TModelBaseList<TModelERPmovimentobanco>; 
    FModel: TModelERPmovimentobanco;
    procedure SetModel(const Value: TModelERPmovimentobanco); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentobanco>);

  public 
    property Model : TModelERPmovimentobanco read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentobanco> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentobanco.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentobanco>.Create;  
  Self.FModelList.Add(TModelERPmovimentobanco.Create); 
  Self.FModel           := TModelERPmovimentobanco.Create; 
  Self.FDal             := TDalERPmovimentobanco.Create( Param, True ); 
end; 

procedure TControllerERPmovimentobanco.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentobanco.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentobanco.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentobanco.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentobanco.SetModel(  
  const Value: TModelERPmovimentobanco); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentobanco.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentobanco>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentobanco.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentobanco.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

