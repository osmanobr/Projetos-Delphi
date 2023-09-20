
unit Controller.ERP.servicos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPservicos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPservicos;
    FModelList: TModelBaseList<TModelERPservicos>; 
    FModel: TModelERPservicos;
    procedure SetModel(const Value: TModelERPservicos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPservicos>);

  public 
    property Model : TModelERPservicos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPservicos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPservicos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPservicos>.Create;  
  Self.FModelList.Add(TModelERPservicos.Create); 
  Self.FModel           := TModelERPservicos.Create; 
  Self.FDal             := TDalERPservicos.Create( Param, True ); 
end; 

procedure TControllerERPservicos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPservicos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPservicos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPservicos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPservicos.SetModel(  
  const Value: TModelERPservicos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPservicos.SetModelList(  
  const Value: TModelBaseList<TModelERPservicos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPservicos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPservicos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

