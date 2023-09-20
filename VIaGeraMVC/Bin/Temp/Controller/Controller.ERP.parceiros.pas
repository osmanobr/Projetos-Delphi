
unit Controller.ERP.parametro_modelo_orcamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPparametromodeloorcamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPparametromodeloorcamento;
    FModelList: TModelBaseList<TModelERPparametromodeloorcamento>; 
    FModel: TModelERPparametromodeloorcamento;
    procedure SetModel(const Value: TModelERPparametromodeloorcamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPparametromodeloorcamento>);

  public 
    property Model : TModelERPparametromodeloorcamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPparametromodeloorcamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPparametromodeloorcamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPparametromodeloorcamento>.Create;  
  Self.FModelList.Add(TModelERPparametromodeloorcamento.Create); 
  Self.FModel           := TModelERPparametromodeloorcamento.Create; 
  Self.FDal             := TDalERPparametromodeloorcamento.Create( Param, True ); 
end; 

procedure TControllerERPparametromodeloorcamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPparametromodeloorcamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPparametromodeloorcamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPparametromodeloorcamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPparametromodeloorcamento.SetModel(  
  const Value: TModelERPparametromodeloorcamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPparametromodeloorcamento.SetModelList(  
  const Value: TModelBaseList<TModelERPparametromodeloorcamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPparametromodeloorcamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPparametromodeloorcamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

