
unit Controller.ERP.tabela_precos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtabelaprecos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtabelaprecos;
    FModelList: TModelBaseList<TModelERPtabelaprecos>; 
    FModel: TModelERPtabelaprecos;
    procedure SetModel(const Value: TModelERPtabelaprecos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtabelaprecos>);

  public 
    property Model : TModelERPtabelaprecos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtabelaprecos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtabelaprecos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtabelaprecos>.Create;  
  Self.FModelList.Add(TModelERPtabelaprecos.Create); 
  Self.FModel           := TModelERPtabelaprecos.Create; 
  Self.FDal             := TDalERPtabelaprecos.Create( Param, True ); 
end; 

procedure TControllerERPtabelaprecos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtabelaprecos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtabelaprecos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtabelaprecos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtabelaprecos.SetModel(  
  const Value: TModelERPtabelaprecos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtabelaprecos.SetModelList(  
  const Value: TModelBaseList<TModelERPtabelaprecos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtabelaprecos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtabelaprecos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

