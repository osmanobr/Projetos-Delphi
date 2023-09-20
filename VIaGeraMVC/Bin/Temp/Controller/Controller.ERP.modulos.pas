
unit Controller.ERP.mesa_lancamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesalancamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesalancamento;
    FModelList: TModelBaseList<TModelERPmesalancamento>; 
    FModel: TModelERPmesalancamento;
    procedure SetModel(const Value: TModelERPmesalancamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesalancamento>);

  public 
    property Model : TModelERPmesalancamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesalancamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesalancamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesalancamento>.Create;  
  Self.FModelList.Add(TModelERPmesalancamento.Create); 
  Self.FModel           := TModelERPmesalancamento.Create; 
  Self.FDal             := TDalERPmesalancamento.Create( Param, True ); 
end; 

procedure TControllerERPmesalancamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesalancamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesalancamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesalancamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesalancamento.SetModel(  
  const Value: TModelERPmesalancamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesalancamento.SetModelList(  
  const Value: TModelBaseList<TModelERPmesalancamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesalancamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesalancamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

