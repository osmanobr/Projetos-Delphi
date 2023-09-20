
unit Controller.ERP.movimentacao_almoxarifado;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmovimentacaoalmoxarifado = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmovimentacaoalmoxarifado;
    FModelList: TModelBaseList<TModelERPmovimentacaoalmoxarifado>; 
    FModel: TModelERPmovimentacaoalmoxarifado;
    procedure SetModel(const Value: TModelERPmovimentacaoalmoxarifado); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmovimentacaoalmoxarifado>);

  public 
    property Model : TModelERPmovimentacaoalmoxarifado read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmovimentacaoalmoxarifado> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmovimentacaoalmoxarifado.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmovimentacaoalmoxarifado>.Create;  
  Self.FModelList.Add(TModelERPmovimentacaoalmoxarifado.Create); 
  Self.FModel           := TModelERPmovimentacaoalmoxarifado.Create; 
  Self.FDal             := TDalERPmovimentacaoalmoxarifado.Create( Param, True ); 
end; 

procedure TControllerERPmovimentacaoalmoxarifado.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmovimentacaoalmoxarifado.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmovimentacaoalmoxarifado.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmovimentacaoalmoxarifado.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmovimentacaoalmoxarifado.SetModel(  
  const Value: TModelERPmovimentacaoalmoxarifado); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmovimentacaoalmoxarifado.SetModelList(  
  const Value: TModelBaseList<TModelERPmovimentacaoalmoxarifado>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmovimentacaoalmoxarifado.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmovimentacaoalmoxarifado.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

