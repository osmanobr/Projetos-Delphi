
unit Controller.ERP.reajuste;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreajuste = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreajuste;
    FModelList: TModelBaseList<TModelERPreajuste>; 
    FModel: TModelERPreajuste;
    procedure SetModel(const Value: TModelERPreajuste); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreajuste>);

  public 
    property Model : TModelERPreajuste read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreajuste> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreajuste.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreajuste>.Create;  
  Self.FModelList.Add(TModelERPreajuste.Create); 
  Self.FModel           := TModelERPreajuste.Create; 
  Self.FDal             := TDalERPreajuste.Create( Param, True ); 
end; 

procedure TControllerERPreajuste.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreajuste.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreajuste.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreajuste.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreajuste.SetModel(  
  const Value: TModelERPreajuste); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreajuste.SetModelList(  
  const Value: TModelBaseList<TModelERPreajuste>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreajuste.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreajuste.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

