
unit Controller.ERP.acesso;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacesso = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacesso;
    FModelList: TModelBaseList<TModelERPacesso>; 
    FModel: TModelERPacesso;
    procedure SetModel(const Value: TModelERPacesso); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacesso>);

  public 
    property Model : TModelERPacesso read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacesso> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacesso.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacesso>.Create;  
  Self.FModelList.Add(TModelERPacesso.Create); 
  Self.FModel           := TModelERPacesso.Create; 
  Self.FDal             := TDalERPacesso.Create( Param, True ); 
end; 

procedure TControllerERPacesso.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacesso.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacesso.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacesso.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacesso.SetModel(  
  const Value: TModelERPacesso); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacesso.SetModelList(  
  const Value: TModelBaseList<TModelERPacesso>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacesso.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacesso.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

