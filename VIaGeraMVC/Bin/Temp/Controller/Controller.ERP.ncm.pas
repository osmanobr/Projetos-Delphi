
unit Controller.ERP.movimento_funcionario;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentofuncionario = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentofuncionario;
    FModelList: TModelBaseList<TModelERPmovimentofuncionario>; 
    FModel: TModelERPmovimentofuncionario;
    procedure SetModel(const Value: TModelERPmovimentofuncionario); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentofuncionario>);

  public 
    property Model : TModelERPmovimentofuncionario read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentofuncionario> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentofuncionario.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentofuncionario>.Create;  
  Self.FModelList.Add(TModelERPmovimentofuncionario.Create); 
  Self.FModel           := TModelERPmovimentofuncionario.Create; 
  Self.FDal             := TDalERPmovimentofuncionario.Create( Param, True ); 
end; 

procedure TControllerERPmovimentofuncionario.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentofuncionario.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentofuncionario.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentofuncionario.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentofuncionario.SetModel(  
  const Value: TModelERPmovimentofuncionario); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentofuncionario.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentofuncionario>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentofuncionario.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentofuncionario.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

